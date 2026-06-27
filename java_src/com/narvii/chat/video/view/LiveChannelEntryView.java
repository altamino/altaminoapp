package com.narvii.chat.video.view;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatGoLivePickerDialog;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.ChatThread;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class LiveChannelEntryView extends FrameLayout implements View.OnClickListener {
    public static final int ENTRY_TYPE_SCREEN_ROOM = 1;
    public static final int ENTRY_TYPE_VV_CHAT = 0;
    public static final int ENTRY_UPDATE_HIDE_ALL = 0;
    public static final int ENTRY_UPDATE_SHOW_INVITE = 2;
    public static final int ENTRY_UPDATE_SHOW_LAUNCHER = 1;
    private AccountService accountService;
    private ChannelEntryClickListener channelEntryClickListener;
    private ChatHelper chatHelper;
    private ChatThread chatThread;
    private CommunityConfigHelper communityConfigHelper;
    private NVContext context;
    private View entryGoLive;
    private EntryViewVisibilityChangeListener entryViewVisibilityChangeListener;
    private boolean isEmbedFragment;
    private View launchEntry;
    private JoinChannelBanner previewEntry;
    private SignallingChannel signallingChannel;
    private VVChatHelper vvChatHelper;

    public interface ChannelEntryClickListener {
        void onChannelCameraPreview(int i, boolean z, Bundle bundle);

        void onChannelEntryClicked(int i, boolean z, Bundle bundle);
    }

    public interface EntryViewVisibilityChangeListener {
        void onEntryViewVisibilityChanged(int i);
    }

    public LiveChannelEntryView(Context context) {
        this(context, null);
    }

    public LiveChannelEntryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.context = Utils.getNVContext(context);
        this.vvChatHelper = new VVChatHelper(this.context);
        this.chatHelper = new ChatHelper(getContext());
        this.accountService = (AccountService) this.context.getService("account");
        this.communityConfigHelper = new CommunityConfigHelper(this.context);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.previewEntry = (JoinChannelBanner) findViewById(R.id.rtc_preview_banner);
        this.previewEntry.setOnClickListener(this);
        this.launchEntry = findViewById(R.id.launch_containers);
        this.entryGoLive = findViewById(R.id.go_live_entry);
        this.entryGoLive.setOnClickListener(this);
    }

    public void setChannelEntryClickListener(ChannelEntryClickListener channelEntryClickListener) {
        this.channelEntryClickListener = channelEntryClickListener;
    }

    public void setEntryViewVisibilityChangeListener(EntryViewVisibilityChangeListener entryViewVisibilityChangeListener) {
        this.entryViewVisibilityChangeListener = entryViewVisibilityChangeListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.go_live_entry) {
            if (id != R.id.rtc_preview_banner) {
                return;
            }
            SignallingChannel signallingChannel = this.signallingChannel;
            launchChannel(signallingChannel != null ? signallingChannel.channelType : 0, false, null);
            return;
        }
        if (this.isEmbedFragment) {
            VVChatEntryHelper vVChatEntryHelper = new VVChatEntryHelper(this.context);
            Bundle bundle = new Bundle();
            bundle.putBoolean(VVChatMainFragment.KEY_SHOW_GO_LIVE, true);
            vVChatEntryHelper.launchLiveChannelFromLaunchEvent(this.chatThread, 1, null, false, bundle);
            return;
        }
        LogEvent.clickWildcardBuilder(LogUtils.getPageContext(view)).area("GoLiveButton").send();
        showGoLive();
    }

    public void showGoLive() {
        ArrayList arrayList = new ArrayList();
        if (this.communityConfigHelper.isAudio2ChatEnable()) {
            arrayList.add(1);
        }
        if (this.communityConfigHelper.isScreenRoomEnable()) {
            arrayList.add(5);
        }
        if (this.communityConfigHelper.isVideoChatEnable()) {
            arrayList.add(4);
        }
        ChatGoLivePickerDialog chatGoLivePickerDialog = new ChatGoLivePickerDialog(this.context, ChatHelperKt.isPublicChat(this.chatThread), arrayList);
        chatGoLivePickerDialog.setLiveModePickCallback(new ChatGoLivePickerDialog.LiveModePickCallback() { // from class: com.narvii.chat.video.view.-$$Lambda$LiveChannelEntryView$_6VM_S-pnIp4NhYDM2xx1K96bPc
            @Override // com.narvii.chat.ChatGoLivePickerDialog.LiveModePickCallback
            public final void onLiveModePicked(int i, boolean z) {
                this.f$0.lambda$showGoLive$0$LiveChannelEntryView(i, z);
            }
        });
        chatGoLivePickerDialog.show();
    }

    public /* synthetic */ void lambda$showGoLive$0$LiveChannelEntryView(int i, boolean z) {
        if (this.vvChatHelper.isReadyToLaunchLiveChannel(this.chatThread, i == 5)) {
            Bundle bundle = new Bundle();
            if (z) {
                bundle.putInt("vvChatJoinType", 2);
            } else {
                bundle.putInt("vvChatJoinType", 1);
            }
            if (i == 4) {
                ChannelEntryClickListener channelEntryClickListener = this.channelEntryClickListener;
                if (channelEntryClickListener != null) {
                    channelEntryClickListener.onChannelCameraPreview(i, true, bundle);
                    return;
                }
                return;
            }
            launchChannel(i, true, bundle);
        }
    }

    public void launchChannel(final int i, final boolean z, final Bundle bundle) {
        this.vvChatHelper.checkRtcStatus(new Callback<Boolean>() { // from class: com.narvii.chat.video.view.LiveChannelEntryView.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool == null || !bool.booleanValue() || LiveChannelEntryView.this.channelEntryClickListener == null) {
                    return;
                }
                LiveChannelEntryView.this.channelEntryClickListener.onChannelEntryClicked(i, z, bundle);
            }
        });
    }

    public void hideAll() {
        updateEnterView(0);
    }

    public void updateLiveChannelEntryView(SignallingChannel signallingChannel, ChatThread chatThread, boolean z, boolean z2, boolean z3) {
        List<ChannelUser> list;
        this.signallingChannel = signallingChannel;
        this.chatThread = chatThread;
        if (!this.vvChatHelper.supportLiveChannelInCurCommunity() || chatThread == null || chatThread.status != 0 || !this.accountService.hasAccount()) {
            updateEnterView(0);
            return;
        }
        boolean z4 = signallingChannel == null || (list = signallingChannel.userList) == null || list.size() == 0;
        if (z) {
            updateEnterView((z4 && z2 && !z3) ? 1 : 0);
            return;
        }
        updateEnterView((z2 && z4) ? 1 : 2);
        this.previewEntry.notifyUserChanged(signallingChannel, chatThread);
        int visibility = this.previewEntry.getVisibility();
        if (visibility != 0 && this.previewEntry.getVisibility() == 0) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
            animationLoadAnimation.setDuration(200L);
            this.previewEntry.startAnimation(animationLoadAnimation);
        }
        if (visibility != 0 || this.previewEntry.getVisibility() == 0) {
            return;
        }
        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(getContext(), R.anim.fade_out);
        animationLoadAnimation2.setDuration(200L);
        this.previewEntry.startAnimation(animationLoadAnimation2);
    }

    private void updateEnterView(int i) {
        JoinChannelBanner joinChannelBanner = this.previewEntry;
        if (joinChannelBanner == null || this.launchEntry == null) {
            return;
        }
        joinChannelBanner.clearAnimation();
        if (i == 0) {
            this.launchEntry.setVisibility(8);
            this.previewEntry.setVisibility(8);
        } else if (i == 2) {
            this.launchEntry.setVisibility(8);
            this.previewEntry.setVisibility(0);
        } else if (i == 1) {
            if (!this.communityConfigHelper.isAudio2ChatEnable()) {
                this.launchEntry.setVisibility(8);
            } else if (ChatHelperKt.isPublicChat(this.chatThread) && !this.chatHelper.isHostOrCoHost(this.chatThread)) {
                this.launchEntry.setVisibility(8);
            } else {
                this.launchEntry.setVisibility(0);
            }
            this.previewEntry.setVisibility(8);
        }
        EntryViewVisibilityChangeListener entryViewVisibilityChangeListener = this.entryViewVisibilityChangeListener;
        if (entryViewVisibilityChangeListener != null) {
            entryViewVisibilityChangeListener.onEntryViewVisibilityChanged(i);
        }
    }

    public void setEmbedFragment(boolean z) {
        this.isEmbedFragment = z;
    }
}
