package com.narvii.chat.video.view;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes5.dex */
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
        void onChannelCameraPreview(int i10, boolean z6, Bundle bundle);

        void onChannelEntryClicked(int i10, boolean z6, Bundle bundle);
    }

    public interface EntryViewVisibilityChangeListener {
        void onEntryViewVisibilityChanged(int i10);
    }

    public LiveChannelEntryView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGoLive$0(int i10, boolean z6) {
        if (this.vvChatHelper.isReadyToLaunchLiveChannel(this.chatThread, i10 == 5)) {
            Bundle bundle = new Bundle();
            if (z6) {
                bundle.putInt("vvChatJoinType", 2);
            } else {
                bundle.putInt("vvChatJoinType", 1);
            }
            if (i10 != 4) {
                launchChannel(i10, true, bundle);
                return;
            }
            ChannelEntryClickListener channelEntryClickListener = this.channelEntryClickListener;
            if (channelEntryClickListener != null) {
                channelEntryClickListener.onChannelCameraPreview(i10, true, bundle);
            }
        }
    }

    public void hideAll() {
        updateEnterView(0);
    }

    public void setChannelEntryClickListener(ChannelEntryClickListener channelEntryClickListener) {
        this.channelEntryClickListener = channelEntryClickListener;
    }

    public void setEmbedFragment(boolean z6) {
        this.isEmbedFragment = z6;
    }

    public void setEntryViewVisibilityChangeListener(EntryViewVisibilityChangeListener entryViewVisibilityChangeListener) {
        this.entryViewVisibilityChangeListener = entryViewVisibilityChangeListener;
    }

    public LiveChannelEntryView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        NVContext nVContext = Utils.getNVContext(context);
        this.context = nVContext;
        this.vvChatHelper = new VVChatHelper(nVContext);
        this.chatHelper = new ChatHelper(getContext());
        this.accountService = (AccountService) this.context.getService("account");
        this.communityConfigHelper = new CommunityConfigHelper(this.context);
    }

    private void updateEnterView(int i10) {
        JoinChannelBanner joinChannelBanner = this.previewEntry;
        if (joinChannelBanner == null || this.launchEntry == null) {
            return;
        }
        joinChannelBanner.clearAnimation();
        if (i10 == 0) {
            this.launchEntry.setVisibility(8);
            this.previewEntry.setVisibility(8);
        } else if (i10 == 2) {
            this.launchEntry.setVisibility(8);
            this.previewEntry.setVisibility(0);
        } else if (i10 == 1) {
            if (!this.communityConfigHelper.isAudio2ChatEnable()) {
                this.launchEntry.setVisibility(8);
            } else if (!ChatHelperKt.isPublicChat(this.chatThread) || this.chatHelper.isHostOrCoHost(this.chatThread)) {
                this.launchEntry.setVisibility(0);
            } else {
                this.launchEntry.setVisibility(8);
            }
            this.previewEntry.setVisibility(8);
        }
        EntryViewVisibilityChangeListener entryViewVisibilityChangeListener = this.entryViewVisibilityChangeListener;
        if (entryViewVisibilityChangeListener != null) {
            entryViewVisibilityChangeListener.onEntryViewVisibilityChanged(i10);
        }
    }

    public void launchChannel(final int i10, final boolean z6, final Bundle bundle) {
        this.vvChatHelper.checkRtcStatus(new Callback<Boolean>() { // from class: com.narvii.chat.video.view.LiveChannelEntryView.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool == null || !bool.booleanValue() || LiveChannelEntryView.this.channelEntryClickListener == null) {
                    return;
                }
                LiveChannelEntryView.this.channelEntryClickListener.onChannelEntryClicked(i10, z6, bundle);
            }
        });
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
        chatGoLivePickerDialog.setLiveModePickCallback(new ChatGoLivePickerDialog.LiveModePickCallback() { // from class: com.narvii.chat.video.view.a
            @Override // com.narvii.chat.ChatGoLivePickerDialog.LiveModePickCallback
            public final void onLiveModePicked(int i10, boolean z6) {
                this.f2190a.lambda$showGoLive$0(i10, z6);
            }
        });
        chatGoLivePickerDialog.show();
    }

    public void updateLiveChannelEntryView(SignallingChannel signallingChannel, ChatThread chatThread, boolean z6, boolean z10, boolean z11) {
        List<ChannelUser> list;
        this.signallingChannel = signallingChannel;
        this.chatThread = chatThread;
        int i10 = 0;
        if (!this.vvChatHelper.supportLiveChannelInCurCommunity() || chatThread == null || chatThread.status != 0 || !this.accountService.hasAccount()) {
            updateEnterView(0);
            return;
        }
        boolean z12 = signallingChannel == null || (list = signallingChannel.userList) == null || list.size() == 0;
        if (z6) {
            if (z12 && z10 && !z11) {
                i10 = 1;
            }
            updateEnterView(i10);
            return;
        }
        updateEnterView((z10 && z12) ? 1 : 2);
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i10;
        int id = view.getId();
        if (id != R.id.go_live_entry) {
            if (id == R.id.rtc_preview_banner) {
                SignallingChannel signallingChannel = this.signallingChannel;
                if (signallingChannel != null) {
                    i10 = signallingChannel.channelType;
                } else {
                    i10 = 0;
                }
                launchChannel(i10, false, null);
                return;
            }
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

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        JoinChannelBanner joinChannelBanner = (JoinChannelBanner) findViewById(R.id.rtc_preview_banner);
        this.previewEntry = joinChannelBanner;
        joinChannelBanner.setOnClickListener(this);
        this.launchEntry = findViewById(R.id.launch_containers);
        View viewFindViewById = findViewById(R.id.go_live_entry);
        this.entryGoLive = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
    }
}
