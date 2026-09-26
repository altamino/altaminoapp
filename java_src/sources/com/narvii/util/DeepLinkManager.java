package com.narvii.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.util.attribute.AttributeService;
import com.narvii.util.statistics.TeaManager;
import com.safedk.android.utils.Logger;
import h4.a;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes11.dex */
public class DeepLinkManager {

    public static class DynamicLinkResult {
        public String errorMsg;
        public h4.b pendingDynamicLinkData;
    }

    public static void handleFacebookDeferredLink(Activity activity) {
    }

    public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void handleDynamicLink(NVActivity nVActivity, final boolean z6, final Callback<DynamicLinkResult> callback) {
        if (nVActivity == null) {
            return;
        }
        a.b().a(nVActivity.getIntent()).addOnSuccessListener(nVActivity, new OnSuccessListener() { // from class: com.narvii.util.b
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                DeepLinkManager.lambda$handleDynamicLink$1(z6, callback, (h4.b) obj);
            }
        }).addOnFailureListener(nVActivity, new OnFailureListener() { // from class: com.narvii.util.c
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                DeepLinkManager.lambda$handleDynamicLink$2(callback, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleDynamicLink$2(Callback callback, Exception exc) {
        DynamicLinkResult dynamicLinkResult = new DynamicLinkResult();
        dynamicLinkResult.errorMsg = exc.toString();
        if (callback != null) {
            callback.call(dynamicLinkResult);
        }
    }

    public static ObjectNode buildDynamicLinkExtraInfo(h4.b bVar) {
        String string;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (bVar == null) {
            return objectNodeCreateObjectNode;
        }
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        if (bVar.b() != null) {
            for (String str : bVar.b().keySet()) {
                objectNodeCreateObjectNode2.put(str, String.valueOf(bVar.b().get(str)));
            }
        }
        objectNodeCreateObjectNode.put("extension", objectNodeCreateObjectNode2);
        if (bVar.c() == null) {
            string = "";
        } else {
            string = bVar.c().toString();
        }
        objectNodeCreateObjectNode.put(ImagesContract.URL, string);
        objectNodeCreateObjectNode.put("clickTimestamp", bVar.a() + "");
        return objectNodeCreateObjectNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleDynamicLink$1(boolean z6, Callback callback, h4.b bVar) {
        ObjectNode objectNodeBuildDynamicLinkExtraInfo = buildDynamicLinkExtraInfo(bVar);
        DynamicLinkResult dynamicLinkResult = new DynamicLinkResult();
        dynamicLinkResult.pendingDynamicLinkData = bVar;
        if (bVar != null && bVar.c() != null) {
            if (z6) {
                logDynamicLinkAttribution(dynamicLinkResult.pendingDynamicLinkData.c().toString(), objectNodeBuildDynamicLinkExtraInfo);
            }
            logDynamicLinkOpened(z6, dynamicLinkResult.pendingDynamicLinkData.c().toString(), objectNodeBuildDynamicLinkExtraInfo);
        }
        if (callback != null) {
            callback.call(dynamicLinkResult);
        }
    }

    public static void logDeepLinkFromForwardActivity(NVActivity nVActivity, String str) {
        Uri uri;
        String host;
        Bundle bundle;
        String str2;
        if (nVActivity.getIntent() == null) {
            return;
        }
        if (nVActivity.getIntent().getExtras() != null && (bundle = nVActivity.getIntent().getExtras().getBundle("al_applink_data")) != null && bundle.getString("target_url") != null) {
            String string = bundle.getString("target_url");
            boolean z6 = NVApplication.DEBUG;
            String scheme = Uri.parse(string).getScheme();
            if (z6) {
                str2 = "pabkitapp";
            } else {
                str2 = "aminoapp";
            }
            if (str2.equals(scheme)) {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                for (String str3 : nVActivity.getIntent().getExtras().keySet()) {
                    objectNodeCreateObjectNode.put(str3, String.valueOf(nVActivity.getIntent().getExtras().get(str3)));
                }
                logFacebookDeepLinkOpened(false, str, objectNodeCreateObjectNode);
            }
        }
        if (str == null) {
            uri = null;
        } else {
            uri = Uri.parse(str);
        }
        PackageUtils packageUtils = new PackageUtils(nVActivity.getContext());
        if (uri == null) {
            host = "";
        } else {
            host = uri.getHost();
        }
        if (packageUtils.isPermalinkHost(host) && nVActivity.getIntent().getExtras() != null) {
            handleDynamicLink(nVActivity, true, null);
        }
    }

    public static void logDynamicLinkAttribution(String str, ObjectNode objectNode) {
        LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.attribute).extraParam("source", "dynamic_link").extraParam("targetUrl", str).extraParam("attrInfo", objectNode.toString()).send();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("source", "dynamic_link");
            jSONObject.putOpt("attrInfo", objectNode.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        TeaManager.logEvent(NVApplication.instance(), "attribute", jSONObject);
        ((AttributeService) NVApplication.instance().getService("attribute")).attribute(objectNode + str);
    }

    public static void logDynamicLinkOpened(boolean z6, String str, ObjectNode objectNode) {
        LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.openDeepLink).extraParam("source", "dynamic_link").extraParam("isDeferred", Boolean.valueOf(z6)).extraParam(ImagesContract.URL, str).extraParam("linkInfo", objectNode.toString()).send();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("source", "dynamic_link");
            jSONObject.putOpt("isDeferred", Boolean.valueOf(z6));
            jSONObject.putOpt(ImagesContract.URL, str);
            jSONObject.putOpt("linkInfo", objectNode);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        TeaManager.logEvent(NVApplication.instance(), "openDeepLink", jSONObject);
        ((AttributeService) NVApplication.instance().getService("attribute")).attribute(objectNode + str);
    }

    public static void logFacebookDeepLinkAttribution(String str, ObjectNode objectNode) {
        LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.attribute).extraParam("source", "facebook_ads").extraParam("targetUrl", str).extraParam("attrInfo", objectNode.toString()).send();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("source", "facebook_ads");
            jSONObject.putOpt("attrInfo", objectNode.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        TeaManager.logEvent(NVApplication.instance(), "attribute", jSONObject);
        ((AttributeService) NVApplication.instance().getService("attribute")).attribute(objectNode + str);
    }

    public static void logFacebookDeepLinkOpened(boolean z6, String str, ObjectNode objectNode) {
        LogEvent.builder(NVApplication.instance()).appEvent().actType(ActType.auto).actSemantic(ActSemantic.openDeepLink).extraParam("source", "facebook_ads").extraParam("isDeferred", Boolean.valueOf(z6)).extraParam(ImagesContract.URL, str).extraParam("linkInfo", objectNode.toString()).send();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("source", "facebook_ads");
            jSONObject.putOpt("isDeferred", Boolean.valueOf(z6));
            jSONObject.putOpt(ImagesContract.URL, str);
            jSONObject.putOpt("linkInfo", objectNode);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        TeaManager.logEvent(NVApplication.instance(), "openDeepLink", jSONObject);
        ((AttributeService) NVApplication.instance().getService("attribute")).attribute(objectNode + str);
    }
}
