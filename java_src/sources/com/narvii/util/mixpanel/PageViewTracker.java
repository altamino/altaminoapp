package com.narvii.util.mixpanel;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.narvii.app.NVFragment;
import com.narvii.util.mixpanel.PageViewTracker;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.s0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.g;
import kotlin.text.i;
import kotlin.text.s;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import w7.a0;

/* JADX INFO: loaded from: classes8.dex */
public final class PageViewTracker extends FragmentManager.FragmentLifecycleCallbacks {

    @NotNull
    private static final String ARG_PREFIX = "arg_";

    @NotNull
    private static final String CHAT = "chat";

    @NotNull
    private static final String CHAT_ID_KEY = "chatId";

    @NotNull
    private static final String COMMUNITY = "community";

    @NotNull
    private static final String COMMUNITY_ID_KEY = "communityId";

    @NotNull
    private static final String INTENT_PREFIX = "intent_";
    private static final int INVALID_COMMUNITY_ID = 0;

    @NotNull
    private static final String NAME_KEY = "name";

    @NotNull
    private static final String NDC_ID_KEY = "ndcId";

    @NotNull
    private static final String STARTING_CURLY_BRACE = "{";

    @NotNull
    private static final String STARTING_SQUARE_BRACE = "[";

    @NotNull
    private static final String TOPIC = "topic";

    @NotNull
    private static final String TOPIC_ID_KEY = "topicId";

    @NotNull
    private final MixpanelAnalytics analyticsManager;

    @Nullable
    private String lastTrackedScreen;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String TAG = PageViewTracker.class.getSimpleName();

    @NotNull
    private static final g FRAGMENT_SUFFIX_REGEX = new g("Fragment$", i.IGNORE_CASE);

    @NotNull
    private static final g CAMEL_CASE_REGEX = new g("([a-z])([A-Z])");

    @NotNull
    private static final List<String> whiteListedFragments = v.p("GlobalProfileFragment", "GlobalChatsFragment");

    @NotNull
    private static final List<String> blackListedFragments = v.p("MasterThemeFragment", "StickerPickerTabFragment", "VoiceChatFragment", "MiniVVContentFragment");

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public PageViewTracker(@NotNull MixpanelAnalytics analyticsManager) {
        t.j(analyticsManager, "analyticsManager");
        this.analyticsManager = analyticsManager;
    }

    private final void assignUnifiedId(Map<String, Object> map, String str, Object obj) {
        String lowerCase;
        Integer numM;
        Integer numM2;
        Integer numM3;
        String string;
        if (map.containsKey("id")) {
            return;
        }
        Object obj2 = map.get("name");
        if (obj2 == null || (string = obj2.toString()) == null) {
            lowerCase = null;
        } else {
            lowerCase = string.toLowerCase(Locale.ROOT);
            t.i(lowerCase, "toLowerCase(...)");
        }
        if (lowerCase != null && u.P(lowerCase, "topic", false, 2, null) && u.P(lowerCase, "community", false, 2, null)) {
            if ((t.e(str, COMMUNITY_ID_KEY) || t.e(str, "ndcId")) && (numM3 = s.m(obj.toString())) != null && numM3.intValue() > 0) {
                map.put("id", obj);
                return;
            } else {
                if (t.e(str, TOPIC_ID_KEY)) {
                    map.put("id", obj);
                    return;
                }
                return;
            }
        }
        if (lowerCase != null && u.P(lowerCase, "topic", false, 2, null) && t.e(str, TOPIC_ID_KEY)) {
            map.put("id", obj);
            return;
        }
        if (lowerCase != null && u.P(lowerCase, "community", false, 2, null) && (t.e(str, COMMUNITY_ID_KEY) || t.e(str, "ndcId"))) {
            map.put("id", obj);
            return;
        }
        if (lowerCase != null && u.P(lowerCase, "chat", false, 2, null) && t.e(str, CHAT_ID_KEY)) {
            map.put("id", obj);
            return;
        }
        if (lowerCase != null && u.P(lowerCase, "chat", false, 2, null) && ((t.e(str, COMMUNITY_ID_KEY) || t.e(str, "ndcId")) && (numM2 = s.m(obj.toString())) != null && numM2.intValue() > 0)) {
            map.put("id", obj);
        } else if ((t.e(str, "ndcId") || t.e(str, COMMUNITY_ID_KEY)) && (numM = s.m(obj.toString())) != null && numM.intValue() > 0) {
            map.put("id", obj);
        }
    }

    private final JSONArray cleanJsonArray(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            Object objOpt = jSONArray.opt(i10);
            if (objOpt instanceof JSONObject) {
                t.g(objOpt);
                jSONArray2.put(cleanJsonObject((JSONObject) objOpt));
            } else if (objOpt instanceof JSONArray) {
                t.g(objOpt);
                jSONArray2.put(cleanJsonArray((JSONArray) objOpt));
            } else if (!t.e(objOpt, JSONObject.NULL) && objOpt != null) {
                jSONArray2.put(objOpt);
            }
        }
        return jSONArray2;
    }

    private final JSONObject cleanJsonObject(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        t.i(itKeys, "keys(...)");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt != null && !t.e(objOpt, JSONObject.NULL)) {
                if (objOpt instanceof JSONObject) {
                    JSONObject jSONObjectCleanJsonObject = cleanJsonObject((JSONObject) objOpt);
                    if (jSONObjectCleanJsonObject.length() <= 0) {
                        jSONObjectCleanJsonObject = null;
                    }
                    if (jSONObjectCleanJsonObject != null) {
                        jSONObject2.put(next, jSONObjectCleanJsonObject);
                    }
                } else if (objOpt instanceof JSONArray) {
                    jSONObject2.put(next, cleanJsonArray((JSONArray) objOpt));
                } else {
                    jSONObject2.put(next, objOpt);
                }
            }
        }
        return jSONObject2;
    }

    private final void collectArgsOrExtras(Bundle bundle, String str, Map<String, Object> map) {
        Set<String> setKeySet;
        if (bundle == null || (setKeySet = bundle.keySet()) == null) {
            return;
        }
        for (String str2 : setKeySet) {
            t.g(str2);
            Object safe = getSafe(bundle, str2);
            if (safe != null) {
                if (safe instanceof String) {
                    String string = (String) safe;
                    if (isJsonString(string)) {
                        String str3 = str + str2;
                        try {
                            string = cleanJson((String) safe).toString();
                        } catch (Exception unused) {
                        }
                        map.put(str3, string);
                    }
                }
                if (isSerializableType(safe)) {
                    map.put(str + str2, safe);
                }
            }
        }
    }

    private final boolean isSerializableType(Object obj) {
        if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Boolean) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Long)) {
            return true;
        }
        return obj instanceof Short;
    }

    private final void matchJsonKeys(JSONObject jSONObject, Map<String, Object> map) {
        String strOptString = jSONObject.optString("name");
        t.g(strOptString);
        if (strOptString.length() > 0 && !map.containsKey("title")) {
            map.put("title", strOptString);
        }
        for (String str : v.p("ndcId", COMMUNITY_ID_KEY, TOPIC_ID_KEY, CHAT_ID_KEY)) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt != null) {
                t.g(objOpt);
                assignUnifiedId(map, str, objOpt);
            }
        }
    }

    private final String toPageName(String str) {
        String lowerCase = CAMEL_CASE_REGEX.c(FRAGMENT_SUFFIX_REGEX.c(str, ""), "$1_$2").toLowerCase(Locale.ROOT);
        t.i(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentViewCreated(@NotNull FragmentManager fm, @NotNull final Fragment f, @NotNull View v5, @Nullable Bundle bundle) {
        t.j(fm, "fm");
        t.j(f, "f");
        t.j(v5, "v");
        View view = f.getView();
        if (view != null) {
            view.post(new Runnable() { // from class: z5.a
                @Override // java.lang.Runnable
                public final void run() {
                    PageViewTracker.onFragmentViewCreated$lambda$0(this.f3380a, f);
                }
            });
        }
    }

    private final Object cleanJson(String str) {
        if (kotlin.text.t.K(u.b1(str).toString(), STARTING_CURLY_BRACE, false, 2, null)) {
            return cleanJsonObject(new JSONObject(str));
        }
        if (kotlin.text.t.K(u.b1(str).toString(), STARTING_SQUARE_BRACE, false, 2, null)) {
            return cleanJsonArray(new JSONArray(str));
        }
        return str;
    }

    private final void enrichProperties(Map<String, ? extends Object> map, Map<String, Object> map2) {
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (!(value instanceof String)) {
                matchTopLevelKeys(key, value, map2);
            } else {
                try {
                    matchJsonKeys(new JSONObject((String) value), map2);
                } catch (Exception unused) {
                    matchTopLevelKeys(key, value, map2);
                }
            }
        }
    }

    private final Object getSafe(Bundle bundle, String str) {
        return bundle.get(str);
    }

    private final boolean isFragmentCurrentlyVisibleToUser(Fragment fragment) {
        Fragment fragmentPrevious;
        Fragment parentFragment;
        String simpleName = fragment.getClass().getSimpleName();
        boolean z6 = true;
        if (whiteListedFragments.contains(simpleName)) {
            return true;
        }
        if (blackListedFragments.contains(simpleName)) {
            return false;
        }
        try {
            if (!fragment.isAdded()) {
                return false;
            }
            FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
            t.i(parentFragmentManager, "getParentFragmentManager(...)");
            if (parentFragmentManager.O0()) {
                return false;
            }
            List<Fragment> listB0 = parentFragmentManager.B0();
            t.i(listB0, "getFragments(...)");
            ListIterator<Fragment> listIterator = listB0.listIterator(listB0.size());
            do {
                if (listIterator.hasPrevious()) {
                    fragmentPrevious = listIterator.previous();
                } else {
                    fragmentPrevious = null;
                    break;
                }
            } while (!fragmentPrevious.isVisible());
            if (!t.e(fragment, fragmentPrevious) || !fragment.isVisible() || ((parentFragment = fragment.getParentFragment()) != null && !parentFragment.isVisible())) {
                z6 = false;
            }
            return z6;
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    private final boolean isJsonString(String str) {
        String string = u.b1(str).toString();
        if (!kotlin.text.t.K(string, STARTING_CURLY_BRACE, false, 2, null) && !kotlin.text.t.K(string, STARTING_SQUARE_BRACE, false, 2, null)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void matchTopLevelKeys(String str, Object obj, Map<String, Object> map) {
        switch (str.hashCode()) {
            case -1361631597:
                if (!str.equals(CHAT_ID_KEY)) {
                    return;
                }
                break;
            case -1139259734:
                if (!str.equals(TOPIC_ID_KEY)) {
                    return;
                }
                break;
            case -885464348:
                if (!str.equals(COMMUNITY_ID_KEY)) {
                    return;
                }
                break;
            case 3373707:
                if (str.equals("name") && !map.containsKey("title")) {
                    map.put("title", obj);
                    return;
                }
                return;
            case 104663912:
                if (!str.equals("ndcId")) {
                    return;
                }
                break;
            default:
                return;
        }
        assignUnifiedId(map, str, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFragmentViewCreated$lambda$0(PageViewTracker this$0, Fragment f) {
        NVFragment nVFragment;
        String pageName;
        Intent intent;
        t.j(this$0, "this$0");
        t.j(f, "$f");
        if (!this$0.isFragmentCurrentlyVisibleToUser(f)) {
            Log.w(TAG, "Skipping " + f.getClass().getSimpleName());
            return;
        }
        String simpleName = f.getClass().getSimpleName();
        if (t.e(simpleName, this$0.lastTrackedScreen)) {
            Log.w(TAG, "Screen " + simpleName + " is same as lastTrackedScreen");
            return;
        }
        Bundle extras = null;
        if (f instanceof NVFragment) {
            nVFragment = (NVFragment) f;
        } else {
            nVFragment = null;
        }
        w7.u[] uVarArr = new w7.u[1];
        if (nVFragment == null || (pageName = nVFragment.getPageName()) == null) {
            t.g(simpleName);
            pageName = this$0.toPageName(simpleName);
        }
        uVarArr[0] = a0.a("name", pageName);
        Map mapN = s0.n(uVarArr);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this$0.collectArgsOrExtras(f.getArguments(), ARG_PREFIX, linkedHashMap);
        FragmentActivity activity = f.getActivity();
        if (activity != null && (intent = activity.getIntent()) != null) {
            extras = intent.getExtras();
        }
        this$0.collectArgsOrExtras(extras, INTENT_PREFIX, linkedHashMap);
        Map<String, ? extends Object> mapA = s0.A(mapN);
        this$0.enrichProperties(linkedHashMap, mapA);
        Log.d(TAG, "screenName: " + simpleName + " -- props: " + mapA);
        this$0.analyticsManager.trackEvent(Tracking.Events.PAGE_VIEW, mapA);
        this$0.lastTrackedScreen = simpleName;
    }
}
