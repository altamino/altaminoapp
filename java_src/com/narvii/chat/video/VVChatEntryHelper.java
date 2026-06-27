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
import com.narvii.model.ChatThread;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.model.ChannelActionCallback;
import com.narvii.video.model.ChannelActionResult;

/* loaded from: classes.dex */
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

    public VVChatEntryHelper(NVContext nVContext, int i) {
        this.context = nVContext;
    }

    public void launchLiveChannelFromLaunchEvent(ChatThread chatThread, int i, String str, boolean z) {
        launchLiveChannelFromLaunchEvent(chatThread, i, str, z, null);
    }

    public void launchLiveChannelFromLaunchEvent(final ChatThread chatThread, final int i, final String str, boolean z, final Bundle bundle) {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        if (z) {
            if (mainSigChannel != null) {
                if (!Utils.isEqualsNotNull(mainSigChannel.threadId, chatThread == null ? null : chatThread.threadId)) {
                    this.vvChatHelper.showSwitchChannelDialog(new Callback<Boolean>() { // from class: com.narvii.chat.video.VVChatEntryHelper.1
                        @Override // com.narvii.util.Callback
                        public void call(Boolean bool) {
                            SignallingChannel mainSigChannel2 = VVChatEntryHelper.this.rtcService.getMainSigChannel();
                            if (mainSigChannel2 == null) {
                                VVChatEntryHelper.this.launchLiveChannel(chatThread, i, str, true, bundle);
                                return;
                            }
                            final int i2 = mainSigChannel2.channelType;
                            final ChatThread mainChannelChatThread = VVChatEntryHelper.this.rtcService.getMainChannelChatThread();
                            VVChatEntryHelper.this.rtcService.exitLiveChannel(mainSigChannel2.ndcId, mainSigChannel2.threadId, new ChannelActionCallback<ChannelActionResult>() { // from class: com.narvii.chat.video.VVChatEntryHelper.1.1
                                @Override // com.narvii.video.model.ChannelActionCallback
                                public void call(ChannelActionResult channelActionResult) {
                                    new ChatLogEventHelper(VVChatEntryHelper.this.context).logQuitChat(i2, mainChannelChatThread);
                                    if (channelActionResult != null && channelActionResult.isSuccess) {
                                        VVChatEntryHelper.this.rtcService.cleaningAttachedWindows();
                                    }
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    VVChatEntryHelper.this.launchLiveChannel(chatThread, i2, str, true, bundle);
                                }
                            });
                        }
                    }, null);
                    return;
                }
            }
            launchLiveChannel(chatThread, i, str, true, bundle);
            return;
        }
        launchLiveChannel(chatThread, i, str, false, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchLiveChannel(ChatThread chatThread, int i, String str, boolean z, Bundle bundle) {
        Bundle baseBundle = getBaseBundle(i, chatThread, chatThread == null ? null : chatThread.threadId, str);
        if (bundle != null) {
            baseBundle.putAll(bundle);
        }
        Intent launchIntent = getLaunchIntent(baseBundle, z);
        NVContext nVContext = this.context;
        if (!(nVContext instanceof NVFragment) || ((NVFragment) nVContext).isAdded()) {
            this.context.startActivity(launchIntent);
        }
    }

    public Bundle getBaseBundle(int i, ChatThread chatThread, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("thread", JacksonUtils.writeAsString(chatThread));
        bundle.putString("id", str);
        bundle.putString("Source", str2);
        bundle.putInt("channel_type", i);
        return bundle;
    }

    public Intent getLaunchIntent(Bundle bundle, boolean z) {
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra(VVChatMainFragment.KEY_FROM_LIVE_EVENT, z);
        intent.putExtras(bundle);
        return intent;
    }
}
