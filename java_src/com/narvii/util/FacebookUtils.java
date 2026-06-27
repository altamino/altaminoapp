package com.narvii.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.model.Community;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class FacebookUtils {
    static Executor executor;
    Context context;
    SharedPreferences prefs;

    public FacebookUtils(Context context) {
        this.context = context;
        this.prefs = context.getSharedPreferences("facebook", 0);
    }

    public void onCommunityResp(Community community) {
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(community.configuration, "general", "facebookAppIdList");
            HashSet hashSet = new HashSet();
            if (jsonNodeNodePath != null && jsonNodeNodePath.size() > 0) {
                for (int i = 0; i < jsonNodeNodePath.size(); i++) {
                    hashSet.add(jsonNodeNodePath.get(i).textValue());
                }
            }
            this.prefs.edit().putStringSet("appIds", hashSet).apply();
            report(true);
        } catch (Exception unused) {
        }
    }

    public void onActive() {
        report(false);
    }

    private void report(boolean z) {
        Set<String> stringSet = this.prefs.getStringSet("appIds", null);
        if (stringSet == null || stringSet.size() <= 0) {
            return;
        }
        if (executor == null) {
            executor = Utils.createThreadPoolExecutor(1, "facebook-utils");
        }
        Iterator<String> it = stringSet.iterator();
        while (it.hasNext()) {
            executor.execute(new Worker(z, it.next(), this.context.getApplicationContext(), this.prefs));
        }
    }

    static class Worker implements Runnable {
        String adid;
        String appId;
        String attribution;
        Context context;
        boolean install;
        String logtime = String.valueOf(System.currentTimeMillis() / 1000);
        String pn;
        SharedPreferences prefs;
        String ver;

        Worker(boolean z, String str, Context context, SharedPreferences sharedPreferences) {
            this.install = z;
            this.appId = str;
            this.context = context;
            this.prefs = sharedPreferences;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(this.context);
                this.attribution = attributionIdentifiers.getAttributionId();
                this.adid = attributionIdentifiers.getAndroidAdvertiserId();
                this.pn = this.context.getPackageName();
                this.ver = new PackageUtils(this.context).getVersionName();
                boolean z = this.prefs.getBoolean("installed_" + this.appId, false);
                if (this.install && !z) {
                    install();
                    this.prefs.edit().putBoolean("installed_" + this.appId, true).apply();
                    Log.i("facebook app install " + this.appId);
                    active();
                    Log.i("facebook app active " + this.appId);
                } else if (!this.install && z) {
                    active();
                    Log.i("facebook app active " + this.appId);
                }
            } catch (Exception e) {
                if (e instanceof IOException) {
                    Log.w("facebook call fail " + this.appId);
                    return;
                }
                Log.w("facebook call fail " + this.appId, e);
            }
        }

        void install() {
            FacebookSdk.publishInstallAsync(this.context.getApplicationContext(), this.appId);
        }

        void active() throws Exception {
            JSONObject jSONObject;
            try {
                jSONObject = AppEventsLoggerUtility.getJSONObjectForGraphAPICall(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, AttributionIdentifiers.getAttributionIdentifiers(this.context), AppEventsLogger.getAnonymousAppDeviceGUID(this.context), false, this.context);
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
            GraphRequest graphRequestNewPostRequest = GraphRequest.newPostRequest((AccessToken) null, String.format("%s/activities", this.appId), (JSONObject) null, (GraphRequest.Callback) null);
            graphRequestNewPostRequest.setGraphObject(jSONObject);
            Bundle parameters = graphRequestNewPostRequest.getParameters();
            if (parameters == null) {
                parameters = new Bundle();
            }
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("_eventName", "fb_mobile_activate_app");
            jSONObject2.put("_eventName_md5", FacebookUtils.md5Checksum("fb_mobile_activate_app"));
            jSONObject2.put("_logTime", System.currentTimeMillis() / 1000);
            jSONObject2.put("_ui", "");
            jSONObject2.put("_session_id", ActivityLifecycleTracker.getCurrentDeviceSessionID());
            jSONArray.put(jSONObject2);
            String string = jSONArray.toString();
            if (string != null) {
                parameters.putString("custom_events", string);
                graphRequestNewPostRequest.setTag(string);
            }
            graphRequestNewPostRequest.setParameters(parameters);
            graphRequestNewPostRequest.executeAsync();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String md5Checksum(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(C.UTF8_NAME);
            messageDigest.update(bytes, 0, bytes.length);
            return AppEventUtility.bytesToHex(messageDigest.digest());
        } catch (UnsupportedEncodingException e) {
            Utility.logd("Failed to generate checksum: ", e);
            return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
        } catch (NoSuchAlgorithmException e2) {
            Utility.logd("Failed to generate checksum: ", e2);
            return "0";
        }
    }
}
