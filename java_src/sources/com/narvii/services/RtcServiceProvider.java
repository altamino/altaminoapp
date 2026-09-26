package com.narvii.services;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.rtc.RelaunchLiveChannelListener;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
public class RtcServiceProvider implements AutostartServiceProvider<RtcService> {
    RtcService rtcService;

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, RtcService rtcService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public RtcService create(final NVContext nVContext) {
        if (this.rtcService == null) {
            RtcService rtcService = new RtcService(nVContext);
            this.rtcService = rtcService;
            rtcService.setRelaunchLiveChannelListener(new RelaunchLiveChannelListener() { // from class: com.narvii.services.RtcServiceProvider.1
                public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.chat.rtc.RelaunchLiveChannelListener
                public void onReLaunchLiveChannelView(Bundle bundle, boolean z6, Intent intent) {
                    if (bundle == null) {
                        return;
                    }
                    Activity lastResumedActivity = ((TopActivityService) nVContext.getService("topActivity")).getLastResumedActivity();
                    String string = bundle.getString("threadId");
                    if (lastResumedActivity instanceof NVActivity) {
                        NVActivity nVActivity = (NVActivity) lastResumedActivity;
                        if (!nVActivity.isDestoryed() && (nVActivity instanceof ChatActivity) && nVActivity.getIntent() != null && Utils.isEqualsNotNull(nVActivity.getIntent().getStringExtra("id"), string)) {
                            nVActivity.finish();
                        }
                    }
                    Intent intent2 = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent2.putExtras(bundle);
                    intent2.putExtra("id", bundle.getString("threadId"));
                    intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Popup Window");
                    intent2.putExtra(VVChatMainFragment.KEY_IS_CREATOR, bundle.getBoolean(RtcService.KEY_IS_CREATOR));
                    intent2.putExtra(VVChatMainFragment.KEY_IS_RELAUNCH, true);
                    intent2.putExtra(VVChatMainFragment.KEY_PENDING_INTENT, intent);
                    intent2.putExtra(VVChatMainFragment.KEY_FORCE_DISALLOW_FLOATING_WINDOW, z6);
                    intent2.setFlags(268435456);
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(nVContext.getContext(), intent2);
                }
            });
        }
        return this.rtcService;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, RtcService rtcService) {
        if (nVContext instanceof NVApplication) {
            rtcService.onDestroy();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, RtcService rtcService) {
        rtcService.topActivity = null;
        if (nVContext instanceof NVApplication) {
            rtcService.tryKeepAlive();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, RtcService rtcService) {
        if (nVContext instanceof Activity) {
            rtcService.topActivity = new WeakReference<>((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, RtcService rtcService) {
        if (nVContext instanceof NVApplication) {
            rtcService.cancelNotification();
        }
    }
}
