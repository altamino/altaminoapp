package com.narvii.services;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.exoplayer2.C;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.rtc.RelaunchLiveChannelListener;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class RtcServiceProvider implements AutostartServiceProvider<RtcService> {
    RtcService rtcService;

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, RtcService rtcService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public RtcService create(final NVContext nVContext) {
        if (this.rtcService == null) {
            this.rtcService = new RtcService(nVContext);
            this.rtcService.setRelaunchLiveChannelListener(new RelaunchLiveChannelListener() { // from class: com.narvii.services.RtcServiceProvider.1
                @Override // com.narvii.chat.rtc.RelaunchLiveChannelListener
                public void onReLaunchLiveChannelView(Bundle bundle, boolean z, Intent intent) {
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
                    intent2.putExtra("Source", "Popup Window");
                    intent2.putExtra(VVChatMainFragment.KEY_IS_CREATOR, bundle.getBoolean(RtcService.KEY_IS_CREATOR));
                    intent2.putExtra(VVChatMainFragment.KEY_IS_RELAUNCH, true);
                    intent2.putExtra(VVChatMainFragment.KEY_PENDING_INTENT, intent);
                    intent2.putExtra(VVChatMainFragment.KEY_FORCE_DISALLOW_FLOATING_WINDOW, z);
                    intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                    nVContext.getContext().startActivity(intent2);
                }
            });
        }
        return this.rtcService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, RtcService rtcService) {
        if (nVContext instanceof Activity) {
            rtcService.topActivity = new WeakReference<>((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, RtcService rtcService) {
        rtcService.topActivity = null;
        if (nVContext instanceof NVApplication) {
            rtcService.tryKeepAlive();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, RtcService rtcService) {
        if (nVContext instanceof NVApplication) {
            rtcService.cancelNotification();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, RtcService rtcService) {
        if (nVContext instanceof NVApplication) {
            rtcService.onDestroy();
        }
    }
}
