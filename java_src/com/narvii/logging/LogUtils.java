package com.narvii.logging;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListView;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.InterestData;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.model.User;
import com.narvii.model.story.StoryTopic;
import com.narvii.pushservice.PushNotificationService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class LogUtils {
    public static WeakReference<NVContext> lastPauseContext;
    public static PageRefererInfo nextPageRefererInfo;
    public static String nextPageStrategyInfo;
    public static String optionMenuClickArea;
    public static List<NVContext> resumingContextList = new ArrayList();

    public static ObjectType getObjectType(NVObject nVObject) {
        Feed feed;
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
        if (iObjectType == 0 && !(nVObject instanceof User)) {
            return null;
        }
        if (nVObject instanceof Blog) {
            Blog blog = (Blog) nVObject;
            if (blog.type == 9 && (feed = blog.refObject) != null) {
                return getObjectType(feed);
            }
        }
        ObjectType objectType = getObjectType(iObjectType);
        if (objectType != null) {
            return objectType;
        }
        return null;
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

    public static void resetLogInfo() {
        nextPageRefererInfo = null;
        nextPageStrategyInfo = null;
        optionMenuClickArea = null;
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

    public static ObjectType getObjectType(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return ObjectType.item;
                }
                if (i == 3) {
                    return ObjectType.comment;
                }
                if (i == 12) {
                    return ObjectType.chat;
                }
                if (i == 16) {
                    return ObjectType.community;
                }
                if (i != 131) {
                    if (i != 901) {
                        return null;
                    }
                    return ObjectType.suggest_query;
                }
            }
            return ObjectType.blog;
        }
        return ObjectType.user;
    }

    public static ObjectSubType getObjectSubType(NVObject nVObject) {
        if (nVObject == null || !(nVObject instanceof Blog)) {
            return null;
        }
        Blog blog = (Blog) nVObject;
        return getObjectSubType(blog.objectType(), blog.type);
    }

    public static ObjectSubType getObjectSubType(int i, int i2) {
        if (i == -1 || i2 == -1) {
            return null;
        }
        if (i == 1 || i == 131) {
            if (i2 == 0) {
                return ObjectSubType.normal;
            }
            switch (i2) {
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
                case 9:
                    return ObjectSubType.story;
            }
        }
        return null;
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

    public static LogContextInfo getLogContextInfo(NVContext nVContext) {
        LogContextInfo logContextInfo = new LogContextInfo();
        if (nVContext == null) {
            return logContextInfo;
        }
        LinkedList linkedList = new LinkedList();
        boolean z = false;
        boolean z2 = false;
        while (nVContext != null) {
            if (!z && !z2 && (nVContext instanceof Page)) {
                Page page = (Page) nVContext;
                String pageName = page.getPageName();
                if (page.isValidPage() && pageName == null) {
                    z2 = true;
                }
                if (pageName != null) {
                    linkedList.addFirst(pageName);
                    if (logContextInfo.pvId == null) {
                        logContextInfo.pvId = page.getPvId();
                    }
                    if (page.isFinalPage()) {
                        z = true;
                    }
                }
            }
            if ((nVContext instanceof Area) && logContextInfo.areaName == null) {
                logContextInfo.areaName = ((Area) nVContext).getAreaName();
            }
            boolean z3 = nVContext instanceof Page;
            if (z3 && logContextInfo.strategyInfo == null) {
                logContextInfo.strategyInfo = ((Page) nVContext).getStrategyInfo();
            }
            if (z3 && logContextInfo.pageRefererInfo == null) {
                logContextInfo.pageRefererInfo = ((Page) nVContext).getPageRefererInfo();
            }
            nVContext = nVContext.getParentContext();
        }
        if (!linkedList.isEmpty() && !z2) {
            logContextInfo.pageName = TextUtils.join("-", linkedList);
        } else {
            logContextInfo.pvId = null;
        }
        return logContextInfo;
    }

    public static void setAttachedObject(View view, Object obj) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._attached_object, obj);
    }

    public static Object getAttachedObject(View view) {
        if (view == null) {
            return null;
        }
        return view.getTag(R.id._attached_object);
    }

    public static void setShownInAdapter(View view, Area area) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._shown_in_adapter, area);
    }

    public static Object getShownInAdapter(View view) {
        if (view == null) {
            return null;
        }
        return view.getTag(R.id._shown_in_adapter);
    }

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

    public static void recyclerShownInAdapter(View view, RecyclerView recyclerView, final Area area) {
        if (view == null || recyclerView == null || area == null || view.getTag(R.id._contains_recycler) == Boolean.TRUE) {
            return;
        }
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.logging.LogUtils.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int i) {
                super.onScrollStateChanged(recyclerView2, i);
                ImpressionUtils.logRecyclerImpression(area, i);
            }
        });
        view.setTag(R.id._contains_recycler, true);
        setShownInAdapter(view, area);
    }

    public static void recyclerShownInAdapter(View view, RecyclerInListViewImpressionCollector recyclerInListViewImpressionCollector) {
        if (recyclerInListViewImpressionCollector == null || view == null) {
            return;
        }
        recyclerShownInAdapter(view, (RecyclerView) view.findViewById(recyclerInListViewImpressionCollector.getContainerId()), recyclerInListViewImpressionCollector.getAdapter());
    }

    public static void flipperShownInAdapter(View view, NVAdapter nVAdapter) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._contains_flipper, true);
        setShownInAdapter(view, nVAdapter);
    }

    public static void notSetCellTag(View view) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._not_set_cell_tag, true);
    }

    public static void tagExtraMap(View view, HashMap<String, Object> map) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._extra_map, map);
    }

    public static void tagLocalMap(View view, HashMap<String, Object> map) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._local_map, map);
    }

    public static void tagFragment(View view, NVFragment nVFragment) {
        if (view == null) {
            return;
        }
        view.setTag(R.id._shown_in_fragment, nVFragment);
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

    public static JSONObject getFlatJSONObject(ObjectNode objectNode) throws JSONException {
        if (objectNode == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        getFlatJSONObjectInternal(jSONObject, objectNode);
        return jSONObject;
    }

    private static void getFlatJSONObjectInternal(JSONObject jSONObject, ObjectNode objectNode) throws JSONException {
        Iterator<Map.Entry<String, JsonNode>> itFields = objectNode.fields();
        while (itFields.hasNext()) {
            Map.Entry<String, JsonNode> next = itFields.next();
            String key = next.getKey();
            JsonNode value = next.getValue();
            if (AnonymousClass2.$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[value.getNodeType().ordinal()] == 1) {
                if (value instanceof ObjectNode) {
                    getFlatJSONObjectInternal(jSONObject, (ObjectNode) value);
                }
            } else {
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
            }
        }
    }

    /* renamed from: com.narvii.logging.LogUtils$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType = new int[JsonNodeType.values().length];

        static {
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static Object teaValue(Object obj) {
        if (obj instanceof Double) {
            return Float.valueOf(((Double) obj).floatValue());
        }
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() ? "True" : "False" : ("".equals(obj) || obj == null) ? PushNotificationService.NO_GROUP : obj;
    }

    public static void changeNextPageRefererIfNull(NVContext nVContext) {
        String str;
        if (nVContext == null || nextPageRefererInfo != null || (str = getLogContextInfo(nVContext).pageName) == null) {
            return;
        }
        nextPageRefererInfo = new PageRefererInfo(str);
    }

    public static boolean isStoryDetailPage(String str) {
        if (str == null) {
            return false;
        }
        return str.endsWith("StoryDetailPage");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static NVObject takeOldStrategyInfo(NVObject nVObject, NVObject nVObject2) {
        String strategyInfo;
        if ((nVObject instanceof StrategyObject) && (nVObject2 instanceof StrategyObject) && (strategyInfo = ((StrategyObject) nVObject).getStrategyInfo()) != null) {
            try {
                NVObject nVObjectM46clone = nVObject2.m46clone();
                ((StrategyObject) nVObjectM46clone).setStrategyInfo(strategyInfo);
                return nVObjectM46clone;
            } catch (Exception e) {
                Log.e("replace object", e);
            }
        }
        return nVObject2;
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
}
