package com.narvii.chat.video;

import android.content.Intent;
import android.os.Bundle;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.ChatThread;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.model.ChannelActionCallback;
import com.narvii.video.model.ChannelActionResult;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class VVChatEntryHelper {
    private NVContext context;
    RtcService rtcService;
    public String source = "Chat Thread";
    VVChatHelper vvChatHelper;

    public VVChatEntryHelper(NVContext nVContext) {
        this.context = nVContext;
        this.vvChatHelper = new VVChatHelper(nVContext);
        this.rtcService = (RtcService) nVContext.getService("rtc");
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void launchLiveChannelFromLaunchEvent(ChatThread chatThread, int i10, String str, boolean z6) {
        launchLiveChannelFromLaunchEvent(chatThread, i10, str, z6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchLiveChannel(ChatThread chatThread, int i10, String str, boolean z6, Bundle bundle) {
        Bundle baseBundle = getBaseBundle(i10, chatThread, chatThread == null ? null : chatThread.threadId, str);
        if (bundle != null) {
            baseBundle.putAll(bundle);
        }
        Intent launchIntent = getLaunchIntent(baseBundle, z6);
        NVContext nVContext = this.context;
        if (!(nVContext instanceof NVFragment) || ((NVFragment) nVContext).isAdded()) {
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, launchIntent);
        }
    }

    public Bundle getBaseBundle(int i10, ChatThread chatThread, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("thread", JacksonUtils.writeAsString(chatThread));
        bundle.putString("id", str);
        bundle.putString(ExternalPostPreviewFragment.SOURCE, str2);
        bundle.putInt("channel_type", i10);
        return bundle;
    }

    public Intent getLaunchIntent(Bundle bundle, boolean z6) {
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra(VVChatMainFragment.KEY_FROM_LIVE_EVENT, z6);
        intent.putExtras(bundle);
        return intent;
    }

    public void launchLiveChannelFromLaunchEvent(final ChatThread chatThread, final int i10, final String str, boolean z6, final Bundle bundle) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (!z6) {
            launchLiveChannel(chatThread, i10, str, false, bundle);
            return;
        }
        if (mainSigChannel != null) {
            if (!Utils.isEqualsNotNull(mainSigChannel.threadId, chatThread == null ? null : chatThread.threadId)) {
                this.vvChatHelper.showSwitchChannelDialog(new Callback<Boolean>() { // from class: com.narvii.chat.video.VVChatEntryHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        SignallingChannel mainSigChannel2 = VVChatEntryHelper.this.rtcService.getMainSigChannel();
                        if (mainSigChannel2 == null) {
                            VVChatEntryHelper.this.launchLiveChannel(chatThread, i10, str, true, bundle);
                            return;
                        }
                        final int i11 = mainSigChannel2.channelType;
                        final ChatThread mainChannelChatThread = VVChatEntryHelper.this.rtcService.getMainChannelChatThread();
                        VVChatEntryHelper.this.rtcService.exitLiveChannel(mainSigChannel2.ndcId, mainSigChannel2.threadId, new ChannelActionCallback<ChannelActionResult>() { // from class: com.narvii.chat.video.VVChatEntryHelper.1.1
                            @Override // com.narvii.video.model.ChannelActionCallback
                            public void call(ChannelActionResult channelActionResult) {
                                new ChatLogEventHelper(VVChatEntryHelper.this.context).logQuitChat(i11, mainChannelChatThread);
                                if (channelActionResult != null && channelActionResult.isSuccess) {
                                    VVChatEntryHelper.this.rtcService.cleaningAttachedWindows();
                                }
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                VVChatEntryHelper.this.launchLiveChannel(chatThread, i11, str, true, bundle);
                            }
                        });
                    }
                }, null);
                return;
            }
        }
        launchLiveChannel(chatThread, i10, str, true, bundle);
    }

    public VVChatEntryHelper(NVContext nVContext, int i10) {
        this.context = nVContext;
    }
}
