package com.narvii.util;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;

/* loaded from: classes3.dex */
public class DeepLinkManager {

    public static class DynamicLinkResult {
        public String errorMsg;
        public PendingDynamicLinkData pendingDynamicLinkData;
    }

    public static void handleFacebookDeferredLink(Activity activity) {
    }

    public static void logDynamicLinkAttribution(String str, ObjectNode objectNode) {
    }

    public static void logDynamicLinkOpened(boolean z, String str, ObjectNode objectNode) {
    }

    public static void logFacebookDeepLinkAttribution(String str, ObjectNode objectNode) {
    }

    public static void logFacebookDeepLinkOpened(boolean z, String str, ObjectNode objectNode) {
    }

    public static void handleDynamicLink(NVActivity nVActivity, final boolean z, final Callback<DynamicLinkResult> callback) {
        if (nVActivity == null) {
            return;
        }
        FirebaseDynamicLinks.getInstance().getDynamicLink(nVActivity.getIntent()).addOnSuccessListener(nVActivity, new OnSuccessListener() { // from class: com.narvii.util.-$$Lambda$DeepLinkManager$m9rmXFpdvuj2e2lvTr6mD3Wj74Q
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                DeepLinkManager.lambda$handleDynamicLink$1(z, callback, (PendingDynamicLinkData) obj);
            }
        }).addOnFailureListener(nVActivity, new OnFailureListener() { // from class: com.narvii.util.-$$Lambda$DeepLinkManager$7Kk--ilSa5b3f-bw5GFKnSYw1jU
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                DeepLinkManager.lambda$handleDynamicLink$2(callback, exc);
            }
        });
    }

    static /* synthetic */ void lambda$handleDynamicLink$1(boolean z, Callback callback, PendingDynamicLinkData pendingDynamicLinkData) {
        ObjectNode objectNodeBuildDynamicLinkExtraInfo = buildDynamicLinkExtraInfo(pendingDynamicLinkData);
        DynamicLinkResult dynamicLinkResult = new DynamicLinkResult();
        dynamicLinkResult.pendingDynamicLinkData = pendingDynamicLinkData;
        PendingDynamicLinkData pendingDynamicLinkData2 = dynamicLinkResult.pendingDynamicLinkData;
        if (pendingDynamicLinkData2 != null && pendingDynamicLinkData2.getLink() != null) {
            if (z) {
                logDynamicLinkAttribution(dynamicLinkResult.pendingDynamicLinkData.getLink().toString(), objectNodeBuildDynamicLinkExtraInfo);
            }
            logDynamicLinkOpened(z, dynamicLinkResult.pendingDynamicLinkData.getLink().toString(), objectNodeBuildDynamicLinkExtraInfo);
        }
        if (callback != null) {
            callback.call(dynamicLinkResult);
        }
    }

    static /* synthetic */ void lambda$handleDynamicLink$2(Callback callback, Exception exc) {
        DynamicLinkResult dynamicLinkResult = new DynamicLinkResult();
        dynamicLinkResult.errorMsg = exc.toString();
        if (callback != null) {
            callback.call(dynamicLinkResult);
        }
    }

    public static void logDeepLinkFromForwardActivity(NVActivity nVActivity, String str) {
        Bundle bundle;
        if (nVActivity.getIntent() == null) {
            return;
        }
        boolean z = false;
        if (nVActivity.getIntent().getExtras() != null && (bundle = nVActivity.getIntent().getExtras().getBundle("al_applink_data")) != null && bundle.getString("target_url") != null) {
            String string = bundle.getString("target_url");
            boolean z2 = NVApplication.DEBUG;
            if ((z2 ? "pebkitapp" : "narviiapp").equals(Uri.parse(string).getScheme())) {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                for (String str2 : nVActivity.getIntent().getExtras().keySet()) {
                    objectNodeCreateObjectNode.put(str2, String.valueOf(nVActivity.getIntent().getExtras().get(str2)));
                }
                logFacebookDeepLinkOpened(false, str, objectNodeCreateObjectNode);
            }
        }
        Uri uri = str == null ? null : Uri.parse(str);
        if (new PackageUtils(nVActivity.getContext()).isPermalinkHost(uri == null ? "" : uri.getHost()) && nVActivity.getIntent().getExtras() != null) {
            z = true;
        }
        if (z) {
            handleDynamicLink(nVActivity, true, null);
        }
    }

    public static ObjectNode buildDynamicLinkExtraInfo(PendingDynamicLinkData pendingDynamicLinkData) {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (pendingDynamicLinkData == null) {
            return objectNodeCreateObjectNode;
        }
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        if (pendingDynamicLinkData.getExtensions() != null) {
            for (String str : pendingDynamicLinkData.getExtensions().keySet()) {
                objectNodeCreateObjectNode2.put(str, String.valueOf(pendingDynamicLinkData.getExtensions().get(str)));
            }
        }
        objectNodeCreateObjectNode.put("extension", objectNodeCreateObjectNode2);
        objectNodeCreateObjectNode.put("url", pendingDynamicLinkData.getLink() == null ? "" : pendingDynamicLinkData.getLink().toString());
        objectNodeCreateObjectNode.put("clickTimestamp", pendingDynamicLinkData.getClickTimestamp() + "");
        return objectNodeCreateObjectNode;
    }
}
