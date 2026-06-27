package com.narvii.util;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerLib;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.navigator.Navigator;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.attribute.AttributeService;
import com.narvii.util.statistics.TmpValue;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AppsflyerManager {
    private static AppsFlyerConversionListener conversionListener;
    private static boolean enabled;
    private static boolean inited;
    public static final TmpValue<String> AF_DP_PROCESSED = new TmpValue<>();
    public static Boolean fromIntent = false;
    static Runnable checkLinkForceRunnable = new Runnable() { // from class: com.narvii.util.-$$Lambda$AppsflyerManager$L4F3I9Cowyg1B7KCORVW-ex-unE
        @Override // java.lang.Runnable
        public final void run() throws IllegalAccessException, SecurityException, IllegalArgumentException {
            AppsflyerManager.lambda$static$0();
        }
    };

    public static void init() {
        if (inited) {
            return;
        }
        inited = true;
        NVApplication nVApplicationInstance = NVApplication.instance();
        String string = nVApplicationInstance.getString(R.string.appsflyer_dev_key);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        conversionListener = new AppsFlyerConversionListener() { // from class: com.narvii.util.AppsflyerManager.1
            public void onAttributionFailure(String str) {
            }

            public void onConversionDataFail(String str) {
            }

            public void onConversionDataSuccess(Map<String, Object> map) throws JSONException {
                if (map == null || map.isEmpty()) {
                    return;
                }
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                final JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    objectNodeCreateObjectNode.put(entry.getKey(), String.valueOf(entry.getValue()));
                    try {
                        jSONObject.putOpt(entry.getKey(), entry.getValue());
                    } catch (JSONException unused) {
                    }
                }
                try {
                    jSONObject.putOpt(CommentListFragment.COMMENT_KEY_SOURCE, "appsflyer");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                final LogEvent.Builder builderExtraParam = LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.attribute).extraParam(CommentListFragment.COMMENT_KEY_SOURCE, "appsflyer").extraParam("targetUrl", map.get("af_dp")).extraParam("attrInfo", objectNodeCreateObjectNode.toString());
                Utils.post(new Runnable() { // from class: com.narvii.util.AppsflyerManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                });
                ((AttributeService) NVApplication.instance().getService("attribute")).attribute(objectNodeCreateObjectNode);
            }

            public void onAppOpenAttribution(Map<String, String> map) throws JSONException {
                String queryParameter = map.get("af_dp");
                Utils.handler.removeCallbacks(AppsflyerManager.checkLinkForceRunnable);
                if (TextUtils.isEmpty(queryParameter)) {
                    try {
                        queryParameter = Uri.parse(map == null ? null : map.get("link")).getQueryParameter("af_dp");
                    } catch (Exception unused) {
                    }
                }
                if (queryParameter != null) {
                    try {
                        if (queryParameter.equals(AppsflyerManager.AF_DP_PROCESSED.getAndRemove())) {
                            return;
                        }
                        Intent intentIntentMapping = ((Navigator) NVApplication.instance().getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse(queryParameter)));
                        if (intentIntentMapping.getComponent() != null) {
                            NVApplication.instance().startActivity(intentIntentMapping);
                        }
                        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                        final JSONObject jSONObject = new JSONObject();
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            objectNodeCreateObjectNode.put(entry.getKey(), entry.getValue());
                            try {
                                jSONObject.putOpt(entry.getKey(), entry.getValue());
                            } catch (JSONException unused2) {
                            }
                        }
                        boolean z = true;
                        try {
                            jSONObject.putOpt("isDeferred", Boolean.valueOf(!AppsflyerManager.fromIntent.booleanValue()));
                            jSONObject.putOpt(CommentListFragment.COMMENT_KEY_SOURCE, "appsflyer_onelink");
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        LogEvent.Builder builderActSemantic = LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.openDeepLink);
                        if (AppsflyerManager.fromIntent.booleanValue()) {
                            z = false;
                        }
                        final LogEvent.Builder builderExtraParam = builderActSemantic.extraParam("isDeferred", Boolean.valueOf(z)).extraParam(CommentListFragment.COMMENT_KEY_SOURCE, "appsflyer_onelink").extraParam("url", queryParameter).extraParam("linkInfo", objectNodeCreateObjectNode.toString());
                        AppsflyerManager.fromIntent = false;
                        Utils.post(new Runnable() { // from class: com.narvii.util.AppsflyerManager.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                            }
                        });
                    } catch (Exception unused3) {
                    }
                }
            }
        };
        AppsFlyerLib.getInstance().init(string, conversionListener, nVApplicationInstance);
        AppsFlyerLib.getInstance().startTracking(nVApplicationInstance);
        enabled = true;
    }

    public static boolean isEnabled() {
        return inited && enabled;
    }

    public static void trackEvent(String str, Map<String, Object> map) {
        if (inited && enabled) {
            AppsFlyerLib.getInstance().trackEvent(NVApplication.instance(), str, map);
        }
    }

    public static void trackDeepLinking(Activity activity) {
        if (inited && enabled) {
            if (activity.getIntent() != null && activity.getIntent().getData() != null && "aminoapps.onelink.me".equals(activity.getIntent().getData().getHost())) {
                fromIntent = true;
            }
            AppsFlyerLib.getInstance().sendDeepLinkData(activity);
        }
    }

    public static class RetentionTrack implements AutostartServiceProvider<Object> {
        @Override // com.narvii.services.ServiceProvider
        public Object create(NVContext nVContext) {
            return this;
        }

        @Override // com.narvii.services.ServiceProvider
        public void destroy(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void pause(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void resume(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void stop(NVContext nVContext, Object obj) {
        }

        @Override // com.narvii.services.ServiceProvider
        public void start(NVContext nVContext, Object obj) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            SharedPreferences sharedPreferences = (SharedPreferences) nVContext.getService("prefs");
            long j = sharedPreferences.getLong("appsflyerZeroTime", 0L);
            if (!sharedPreferences.contains("firstLaunchNotifyScheduleTime") && j == 0) {
                sharedPreferences.edit().putLong("appsflyerZeroTime", jCurrentTimeMillis).apply();
                return;
            }
            if (j != 0) {
                long j2 = (jCurrentTimeMillis - j) / DateUtils.ONE_DAY;
                if (j2 == 3 && !sharedPreferences.contains("appsflyerFired3")) {
                    AppsflyerManager.trackEvent("New Retention 3 Days", new HashMap());
                    sharedPreferences.edit().putBoolean("appsflyerFired3", true).apply();
                }
                if (j2 == 7 && !sharedPreferences.contains("appsflyerFired7")) {
                    AppsflyerManager.trackEvent("New Retention 7 Days", new HashMap());
                    sharedPreferences.edit().putBoolean("appsflyerFired7", true).apply();
                }
                if (j2 != 30 || sharedPreferences.contains("appsflyerFired30")) {
                    return;
                }
                AppsflyerManager.trackEvent("New Retention 30 Days", new HashMap());
                sharedPreferences.edit().putBoolean("appsflyerFired30", true).apply();
            }
        }
    }

    public static void checkLinkForce() {
        Utils.postDelayed(checkLinkForceRunnable, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    static /* synthetic */ void lambda$static$0() throws IllegalAccessException, SecurityException, IllegalArgumentException {
        Class<?> cls = AppsFlyerLib.getInstance().getClass();
        Field[] declaredFields = cls.getDeclaredFields();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Field field : declaredFields) {
            if ("long".equals(field.getType().getName())) {
                try {
                    field.setAccessible(true);
                    Object obj = field.get(AppsFlyerLib.getInstance());
                    if (((Long) obj).longValue() > 1000000) {
                        arrayList.add(Long.valueOf(((Long) obj).longValue()));
                        arrayList2.add(field);
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        ArrayList arrayList3 = (ArrayList) arrayList.clone();
        if (arrayList3.size() > 0 && arrayList.size() > 0) {
            Collections.sort(arrayList3);
            int iIndexOf = arrayList.indexOf(arrayList3.get(0));
            if (iIndexOf >= 0) {
                ((Field) arrayList2.get(iIndexOf)).setAccessible(true);
            }
        }
        for (Method method : cls.getDeclaredMethods()) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 3 && "android.content.Context".equals(parameterTypes[0].getName()) && "java.lang.String".equals(parameterTypes[1].getName()) && "java.util.Map".equals(parameterTypes[2].getName()) && "void".equals(method.getReturnType().getName()) && Modifier.isFinal(method.getModifiers())) {
                method.setAccessible(true);
                boolean zIsTrackingStopped = AppsFlyerLib.getInstance().isTrackingStopped();
                try {
                    try {
                        AppsFlyerLib.getInstance().stopTracking(true, NVApplication.instance());
                        method.invoke(AppsFlyerLib.getInstance(), NVApplication.instance(), null, null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } finally {
                    AppsFlyerLib.getInstance().stopTracking(zIsTrackingStopped, NVApplication.instance());
                }
            }
        }
        AFLogger.resetDeltaTime();
    }
}
