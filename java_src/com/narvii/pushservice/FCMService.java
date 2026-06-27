package com.narvii.pushservice;

import android.os.Bundle;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.BlockingItem;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class FCMService extends FirebaseMessagingService {
    private static final String TAG = "narvii_push";

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) throws Throwable {
        super.onMessageReceived(remoteMessage);
        try {
            Log.i(TAG, "FCM message received in " + getPackageName());
            String str = remoteMessage.getData().get(ApiRequest.MULTIPART_NAME_PAYLOAD);
            if (str == null) {
                str = remoteMessage.getData().get("data");
            }
            PushPayload pushPayload = (PushPayload) JacksonUtils.readAs(str, PushPayload.class);
            if (pushPayload != null && pushPayload.aps != null) {
                Log.i(TAG, str);
                ((PushService) NVApplication.instance().getService("push")).dispatchPushPayload(pushPayload);
                return;
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : remoteMessage.getData().entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            Log.w(TAG, "no content in push payload " + jSONObject);
        } catch (Exception e) {
            Log.e(TAG, "fail to process push payload from GCM", e);
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        final BlockingItem blockingItem = new BlockingItem();
        ((PushService) ((NVContext) getApplication()).getService("push")).setGcmToken(str, true, new Callback<Bundle>() { // from class: com.narvii.pushservice.FCMService.1
            @Override // com.narvii.util.Callback
            public void call(Bundle bundle) {
                blockingItem.put(bundle);
            }
        });
        try {
            blockingItem.tryTake(30000L);
        } catch (InterruptedException unused) {
        }
    }
}
