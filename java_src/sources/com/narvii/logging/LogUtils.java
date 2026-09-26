package com.narvii.logging;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListView;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.InterestData;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.model.User;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class LogUtils {
    public static WeakReference<NVContext> lastPauseContext;
    public static PageRefererInfo nextPageRefererInfo;
    public static String nextPageStrategyInfo;
    public static String optionMenuClickArea;
    public static List<NVContext> resumingContextList = new ArrayList();

    public static Area findShownInAdapter(View view) {
        while (view != null) {
            Object tag = view.getTag(R.id._shown_in_adapter);
            if (tag instanceof Area) {
                return (Area) tag;
            }
            if (!(view.getParent() instanceof View)) {
                view = null;
            } else {
                if (view.getParent() instanceof ListView) {
                    return null;
                }
                view = (View) view.getParent();
            }
        }
        return null;
    }

    public static ObjectSubType getObjectSubType(NVObject nVObject) {
        if (nVObject == null || !(nVObject instanceof Blog)) {
            return null;
        }
        Blog blog = (Blog) nVObject;
        return getObjectSubType(blog.objectType(), blog.type);
    }

    public static ObjectType getObjectType(NVObject nVObject) {
        if (nVObject == null) {
            return null;
        }
        if (nVObject instanceof StoryTopic) {
            return ObjectType.topic;
        }
        if (nVObject instanceof InterestData) {
            return ObjectType.interest;
        }
        int iObjectType = nVObject.objectType();
        if (iObjectType != 0 || (nVObject instanceof User)) {
            return getObjectType(iObjectType);
        }
        return null;
    }

    public static NVContext getPageContext(View view) {
        if (view == null) {
            return null;
        }
        View view2 = view;
        while (view2 != null) {
            Object tag = view2.getTag(R.id._shown_in_fragment);
            if (tag instanceof NVFragment) {
                NVFragment nVFragment = (NVFragment) tag;
                if (nVFragment.isValidPage()) {
                    return nVFragment;
                }
            }
            view2 = view2.getParent() instanceof View ? (View) view2.getParent() : null;
        }
        if (view.getContext() instanceof NVContext) {
            return (NVContext) view.getContext();
        }
        return null;
    }

    public static boolean isParentContext(NVContext nVContext, NVContext nVContext2) {
        if (nVContext != null && nVContext2 != null) {
            while (nVContext != null) {
                nVContext = nVContext.getParentContext();
                if (nVContext == nVContext2) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void recyclerShownInAdapter(View view, RecyclerView recyclerView, final Area area) {
        if (view == null || recyclerView == null || area == null) {
            return;
        }
        int i10 = R.id._contains_recycler;
        Object tag = view.getTag(i10);
        Boolean bool = Boolean.TRUE;
        if (tag == bool) {
            return;
        }
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.logging.LogUtils.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int i11) {
                super.onScrollStateChanged(recyclerView2, i11);
                ImpressionUtils.logRecyclerImpression(area, i11);
            }
        });
        view.setTag(i10, bool);
        setShownInAdapter(view, area);
    }

    public static void resetLogInfo() {
        nextPageRefererInfo = null;
        nextPageStrategyInfo = null;
        optionMenuClickArea = null;
    }

    /* JADX INFO: renamed from: com.narvii.logging.LogUtils$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType;

        static {
            int[] iArr = new int[JsonNodeType.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType = iArr;
            try {
                iArr[JsonNodeType.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static void changeNextPageRefererIfNull(NVContext nVContext) {
        String str;
        if (nVContext == null || nextPageRefererInfo != null || (str = getLogContextInfo(nVContext).pageName) == null) {
            return;
        }
        nextPageRefererInfo = new PageRefererInfo(str);
    }

    public static void completeLogEvent(NVContext nVContext, LogEvent.Builder builder) {
        if (nVContext == null || builder == null) {
            return;
        }
        while (nVContext != null) {
            if (nVContext instanceof Page) {
                Page page = (Page) nVContext;
                String pageName = page.getPageName();
                if (page.isValidPage() && pageName == null) {
                    return;
                }
                if (pageName != null) {
                    page.completeLogEvent(builder);
                    if (page.isFinalPage()) {
                        return;
                    }
                } else {
                    continue;
                }
            }
            nVContext = nVContext.getParentContext();
        }
    }

    public static void flipperShownInAdapter(View view, NVAdapter nVAdapter) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._contains_flipper, Boolean.TRUE);
        setShownInAdapter(view, nVAdapter);
    }

    public static Object getAttachedObject(View view) {
        if (view == null) {
            return null;
        }
        return view.getTag(R.id._attached_object);
    }

    public static JSONObject getFlatJSONObject(ObjectNode objectNode) {
        if (objectNode == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        getFlatJSONObjectInternal(jSONObject, objectNode);
        return jSONObject;
    }

    public static LogContextInfo getLogContextInfo(NVContext nVContext) {
        LogContextInfo logContextInfo = new LogContextInfo();
        if (nVContext == null) {
            return logContextInfo;
        }
        LinkedList linkedList = new LinkedList();
        boolean z6 = false;
        boolean z10 = false;
        while (nVContext != null) {
            if (!z6 && !z10 && (nVContext instanceof Page)) {
                Page page = (Page) nVContext;
                String pageName = page.getPageName();
                if (page.isValidPage() && pageName == null) {
                    z10 = true;
                }
                if (pageName != null) {
                    linkedList.addFirst(pageName);
                    if (logContextInfo.pvId == null) {
                        logContextInfo.pvId = page.getPvId();
                    }
                    if (page.isFinalPage()) {
                        z6 = true;
                    }
                }
            }
            if ((nVContext instanceof Area) && logContextInfo.areaName == null) {
                logContextInfo.areaName = ((Area) nVContext).getAreaName();
            }
            boolean z11 = nVContext instanceof Page;
            if (z11 && logContextInfo.strategyInfo == null) {
                logContextInfo.strategyInfo = ((Page) nVContext).getStrategyInfo();
            }
            if (z11 && logContextInfo.pageRefererInfo == null) {
                logContextInfo.pageRefererInfo = ((Page) nVContext).getPageRefererInfo();
            }
            nVContext = nVContext.getParentContext();
        }
        if (linkedList.isEmpty() || z10) {
            logContextInfo.pvId = null;
        } else {
            logContextInfo.pageName = TextUtils.join("-", linkedList);
        }
        return logContextInfo;
    }

    public static Object getShownInAdapter(View view) {
        if (view == null) {
            return null;
        }
        return view.getTag(R.id._shown_in_adapter);
    }

    public static NVContext getValidResumingPage() {
        for (int size = resumingContextList.size() - 1; size >= 0; size--) {
            NVContext nVContext = resumingContextList.get(size);
            if ((nVContext instanceof Page) && ((Page) nVContext).getPageName() != null) {
                return nVContext;
            }
        }
        return null;
    }

    public static boolean isStoryDetailPage(String str) {
        if (str == null) {
            return false;
        }
        return str.endsWith("StoryDetailPage");
    }

    public static void notSetCellTag(View view) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._not_set_cell_tag, Boolean.TRUE);
    }

    public static void setAttachedObject(View view, Object obj) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._attached_object, obj);
    }

    public static void setShownInAdapter(View view, Area area) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._shown_in_adapter, area);
    }

    public static void tagExtraMap(View view, HashMap<String, Object> map) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._extra_map, map);
    }

    public static void tagFragment(View view, NVFragment nVFragment) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._shown_in_fragment, nVFragment);
    }

    public static void tagLocalMap(View view, HashMap<String, Object> map) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._local_map, map);
    }

    public static void takeLogContextInfoWhenStartPage(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (!TextUtils.isEmpty(nextPageStrategyInfo)) {
            bundle.putString("__strategyInfo", nextPageStrategyInfo);
        }
        PageRefererInfo pageRefererInfo = nextPageRefererInfo;
        if (pageRefererInfo != null) {
            bundle.putString("__pageRefererInfo", JacksonUtils.writeAsString(pageRefererInfo));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static NVObject takeOldStrategyInfo(NVObject nVObject, NVObject nVObject2) {
        String strategyInfo;
        if ((nVObject instanceof StrategyObject) && (nVObject2 instanceof StrategyObject) && (strategyInfo = ((StrategyObject) nVObject).getStrategyInfo()) != null) {
            try {
                NVObject nVObjectM1622clone = nVObject2.m1622clone();
                ((StrategyObject) nVObjectM1622clone).setStrategyInfo(strategyInfo);
                return nVObjectM1622clone;
            } catch (Exception e) {
                Log.e("replace object", e);
            }
        }
        return nVObject2;
    }

    public static Object teaValue(Object obj) {
        if (obj instanceof Double) {
            return Float.valueOf(((Double) obj).floatValue());
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? "True" : "False";
        }
        return ("".equals(obj) || obj == null) ? "null" : obj;
    }

    private static void getFlatJSONObjectInternal(JSONObject jSONObject, ObjectNode objectNode) {
        Iterator<Map.Entry<String, JsonNode>> itFields = objectNode.fields();
        while (itFields.hasNext()) {
            Map.Entry<String, JsonNode> next = itFields.next();
            String key = next.getKey();
            JsonNode value = next.getValue();
            if (AnonymousClass2.$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[value.getNodeType().ordinal()] != 1) {
                try {
                    if (value.isBoolean()) {
                        jSONObject.put(key, teaValue(Boolean.valueOf(value.booleanValue())));
                    } else if (value.isLong()) {
                        jSONObject.put(key, teaValue(Long.valueOf(value.longValue())));
                    } else if (value.isInt()) {
                        jSONObject.put(key, teaValue(Integer.valueOf(value.intValue())));
                    } else if (value.isDouble()) {
                        jSONObject.put(key, teaValue(Double.valueOf(value.doubleValue())));
                    } else if (value.isFloat()) {
                        jSONObject.put(key, teaValue(Float.valueOf(value.floatValue())));
                    } else {
                        jSONObject.put(key, teaValue(value.textValue()));
                    }
                } catch (Exception e) {
                    Log.e("convert", e);
                }
            } else if (value instanceof ObjectNode) {
                getFlatJSONObjectInternal(jSONObject, (ObjectNode) value);
            }
        }
    }

    public static ObjectSubType getObjectSubType(int i10, int i11) {
        if (i10 == -1 || i11 == -1) {
            return null;
        }
        if (i10 == 1 || i10 == 131) {
            if (i11 != 0) {
                switch (i11) {
                    case 2:
                        return ObjectSubType.repost;
                    case 3:
                        return ObjectSubType.question;
                    case 4:
                        return ObjectSubType.poll;
                    case 5:
                        return ObjectSubType.link;
                    case 6:
                        return ObjectSubType.quiz;
                    case 7:
                        return ObjectSubType.image;
                    case 8:
                        return ObjectSubType.external_post;
                }
            }
            return ObjectSubType.normal;
        }
        return null;
    }

    public static void recyclerShownInAdapter(View view, RecyclerInListViewImpressionCollector recyclerInListViewImpressionCollector) {
        if (recyclerInListViewImpressionCollector == null || view == null) {
            return;
        }
        recyclerShownInAdapter(view, (RecyclerView) view.findViewById(recyclerInListViewImpressionCollector.getContainerId()), recyclerInListViewImpressionCollector.getAdapter());
    }

    public static ObjectType getObjectType(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return ObjectType.item;
                }
                if (i10 == 3) {
                    return ObjectType.comment;
                }
                if (i10 == 12) {
                    return ObjectType.chat;
                }
                if (i10 == 16) {
                    return ObjectType.community;
                }
                if (i10 != 131) {
                    if (i10 != 901) {
                        return null;
                    }
                    return ObjectType.suggest_query;
                }
            }
            return ObjectType.blog;
        }
        return ObjectType.user;
    }
}
