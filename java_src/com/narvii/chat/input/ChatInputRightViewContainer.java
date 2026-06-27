package com.narvii.chat.input;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.setting.helper.ChatWaitingListService;
import com.narvii.chat.setting.helper.ChatWaitingListServiceKt;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.ChatThread;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.tipping.TippingHelper;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.AutoSizingTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatInputRightViewContainer extends FrameLayout implements View.OnClickListener {
    public static final int TYPE_JOINED = 0;
    public static final int TYPE_JOIN_DISABLED = 2;
    public static final int TYPE_UN_JOINED = 1;
    private CallScreenService callScreenService;
    private ChatWaitingListService chatWaitingListService;
    private final ChatHelper chathelper;
    private boolean disallowTip;
    private final View endView;
    private boolean isEmbedFragment;
    private boolean isInvite;
    private boolean isJoining;
    private final View joinButton;
    private final ImageView joinIcon;
    private final View joinLoading;
    private final AutoSizingTextView joinText;
    private final View joinView;
    private final View menuView;
    private final CheckableImageView muteButton;
    private final View muteView;
    private final NVContext nvcontext;
    private List<User> oldWaitList;
    private OnClickRightView onClickRightViewListener;
    private final View requestView;
    private RtcService rtcService;
    private ScreenRoomService screenRoomService;
    private ChatThread thread;
    private String threadId;
    private final View tipView;
    private List<User> tmpNewUsers;
    private ToolTipHelper toolTipHelper;
    private View tooltipView;
    private final View voiceView;
    private VVChatHelper vvChatHelper;
    private TextView waitingListCount;

    public interface OnClickRightView {
        boolean checkChannelUserLimit();

        void doEndChat();

        void doJoin();

        void doRequestToSpeak();

        boolean isMenuIconShown();

        void openWaitingList();

        void toggleMenu();

        void toggleMute(boolean z);
    }

    public ChatInputRightViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.oldWaitList = new ArrayList();
        this.tmpNewUsers = new ArrayList();
        FrameLayout.inflate(getContext(), R.layout.chat_input_layout_right_bottons, this);
        this.voiceView = findViewById(R.id.voice_view);
        this.joinView = findViewById(R.id.join_view);
        this.joinView.setOnClickListener(this);
        this.muteView = findViewById(R.id.mute_view);
        this.muteView.setOnClickListener(this);
        this.menuView = findViewById(R.id.menu_view);
        this.menuView.setOnClickListener(this);
        this.requestView = findViewById(R.id.request_view);
        this.requestView.setOnClickListener(this);
        this.endView = findViewById(R.id.end_view);
        this.endView.setOnClickListener(this);
        this.tipView = findViewById(R.id.tip_view);
        this.tipView.setOnClickListener(this);
        this.muteButton = (CheckableImageView) findViewById(R.id.mute_button);
        this.joinIcon = (ImageView) findViewById(R.id.join_icon);
        this.joinText = (AutoSizingTextView) findViewById(R.id.join_text);
        this.joinLoading = findViewById(R.id.join_loading);
        this.joinButton = findViewById(R.id.join_button);
        this.waitingListCount = (TextView) this.requestView.findViewById(R.id.waiting_member_count);
        this.nvcontext = Utils.getNVContext(getContext());
        NVContext nVContext = this.nvcontext;
        if (nVContext != null) {
            this.callScreenService = (CallScreenService) nVContext.getService("callScreen");
            this.rtcService = (RtcService) this.nvcontext.getService("rtc");
            this.screenRoomService = (ScreenRoomService) this.nvcontext.getService("screenRoom");
            this.vvChatHelper = new VVChatHelper(this.nvcontext);
            this.chatWaitingListService = (ChatWaitingListService) this.nvcontext.getService("chatWaitingList");
        }
        this.toolTipHelper = new ToolTipHelper();
        this.chathelper = new ChatHelper(getContext());
    }

    public void setDisallowTip(boolean z) {
        this.disallowTip = z;
        updateTipViewVisibility();
    }

    public void setThreadId(String str) {
        this.threadId = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        switch (view.getId()) {
            case R.id.end_view /* 2131297269 */:
                OnClickRightView onClickRightView = this.onClickRightViewListener;
                if (onClickRightView != null) {
                    onClickRightView.doEndChat();
                    break;
                }
                break;
            case R.id.join_view /* 2131297811 */:
                SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
                if (this.onClickRightViewListener != null && mainSigChannel != null) {
                    if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(this.nvcontext, mainSigChannel.userWaitList)) {
                        this.onClickRightViewListener.openWaitingList();
                        break;
                    } else {
                        ChatThread chatThread = this.thread;
                        if (chatThread != null && chatThread.getVvChatJoinType() == 2 && !this.chathelper.isHostOrCoHost(getThread())) {
                            LogEvent.clickWildcardBuilder(this, "TalkButton").send();
                            this.onClickRightViewListener.doRequestToSpeak();
                            break;
                        } else {
                            LogEvent.clickWildcardBuilder(this, "JoinButton").send();
                            this.onClickRightViewListener.doJoin();
                            break;
                        }
                    }
                }
                break;
            case R.id.menu_view /* 2131298056 */:
                OnClickRightView onClickRightView2 = this.onClickRightViewListener;
                if (onClickRightView2 != null) {
                    onClickRightView2.toggleMenu();
                    break;
                }
                break;
            case R.id.mute_view /* 2131298116 */:
                OnClickRightView onClickRightView3 = this.onClickRightViewListener;
                if (onClickRightView3 != null) {
                    onClickRightView3.toggleMute(false);
                    break;
                }
                break;
            case R.id.request_view /* 2131298665 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("WaitingListIcon").send();
                if (this.onClickRightViewListener != null) {
                    if (this.toolTipHelper.isTooltipShowing()) {
                        this.toolTipHelper.hideToolTip();
                    }
                    this.onClickRightViewListener.openWaitingList();
                    break;
                }
                break;
            case R.id.tip_view /* 2131299201 */:
                LogEvent.clickWildcardBuilder(LogUtils.getPageContext(this)).area("TippingButton").send();
                if (!Utils.shouldShowLoginPage(this.nvcontext) && this.thread != null) {
                    TippingHelper tippingHelper = new TippingHelper(this.nvcontext);
                    if (tippingHelper.isTipAuthor(this.thread)) {
                        tippingHelper.openTippingList(this.thread, null);
                        break;
                    } else {
                        tippingHelper.openTipDialog(this.thread, null);
                        break;
                    }
                }
                break;
        }
    }

    public void showView() {
        int i;
        boolean localMicMuted;
        UserStatusData userStatusData;
        ScreenRoomService screenRoomService;
        int i2;
        if (this.threadId == null) {
            Log.e("chat input right view thread is null");
        }
        SignallingChannel mappedSignallingChannel = this.rtcService.getMappedSignallingChannel(this.threadId);
        char c = (mappedSignallingChannel == null || (i = mappedSignallingChannel.joinRole) == 1) ? (char) 0 : i == 2 ? (char) 1 : (char) 2;
        RtcService rtcService = this.rtcService;
        ChannelUserWrapper mainChannelLocalUserWrapper = rtcService == null ? null : rtcService.getMainChannelLocalUserWrapper();
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null && callScreenService.getCurStatus() == 1) {
            localMicMuted = this.callScreenService.isMuteOn();
        } else if (mappedSignallingChannel == null || mappedSignallingChannel.channelType != 5 || mainChannelLocalUserWrapper == null || !mainChannelLocalUserWrapper.channelUser.isHost || (screenRoomService = this.screenRoomService) == null) {
            localMicMuted = (mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null || !userStatusData.isVoiceMuted()) ? false : true;
        } else {
            localMicMuted = screenRoomService.getLocalMicMuted();
        }
        updateTipViewVisibility();
        if (mappedSignallingChannel == null || (((i2 = mappedSignallingChannel.channelType) != 1 && i2 != 4 && i2 != 5) || this.isEmbedFragment || this.thread == null)) {
            this.voiceView.setVisibility(0);
            this.joinView.setVisibility(8);
            this.muteView.setVisibility(8);
            this.menuView.setVisibility(8);
            this.requestView.setVisibility(8);
            this.endView.setVisibility(8);
            return;
        }
        this.voiceView.setVisibility(8);
        if (this.thread.getVvChatJoinType() == 2) {
            if (c == 0 && !this.chathelper.isHostOrCoHost(this.thread)) {
                this.requestView.setVisibility(8);
            } else {
                this.requestView.setVisibility(0);
            }
            List<User> list = mappedSignallingChannel.userWaitList;
            if (list.size() > 0) {
                this.waitingListCount.setVisibility(0);
                this.waitingListCount.setText(String.valueOf(list.size() > 99 ? "99+" : Integer.valueOf(list.size())));
            } else {
                this.waitingListCount.setVisibility(8);
            }
            updateWaitingListBubble(list);
        } else {
            this.requestView.setVisibility(8);
        }
        View view = this.menuView;
        OnClickRightView onClickRightView = this.onClickRightViewListener;
        view.setVisibility((onClickRightView == null || !onClickRightView.isMenuIconShown()) ? 8 : 0);
        if (c == 0) {
            this.joinView.setVisibility(8);
            this.muteView.setVisibility(0);
            this.muteButton.setChecked(localMicMuted);
            this.endView.setVisibility(0);
            return;
        }
        this.joinView.setVisibility(0);
        updateJoinButton(mappedSignallingChannel);
        this.muteView.setVisibility(8);
        this.endView.setVisibility(8);
    }

    private void updateTipViewVisibility() {
        ChatThread chatThread;
        TippingInfo tippingInfo;
        ViewUtils.show(this.tipView, (this.disallowTip || (chatThread = this.thread) == null || (tippingInfo = chatThread.tipInfo) == null || !tippingInfo.tippable) ? false : true);
    }

    public boolean isMuted() {
        if (this.muteButton.getWindowVisibility() == 0) {
            return this.muteButton.isChecked();
        }
        return false;
    }

    public void setIsInvite(boolean z) {
        this.isInvite = z;
    }

    public void setIsJoining(boolean z) {
        this.isJoining = z;
    }

    public boolean isWaitingListShown() {
        ChatWaitingListService chatWaitingListService = this.chatWaitingListService;
        return chatWaitingListService != null && chatWaitingListService.isWaitingListShown();
    }

    private void updateJoinButton(SignallingChannel signallingChannel) {
        OnClickRightView onClickRightView;
        if ((this.thread.getVvChatJoinType() == 3 && !this.chathelper.isHostOrCoHost(getThread())) || (this.isInvite && isPrivateVoiceCall(signallingChannel))) {
            this.joinView.setVisibility(8);
            return;
        }
        boolean z = false;
        this.joinIcon.setVisibility(0);
        this.joinLoading.setVisibility(8);
        setClickable(!this.isJoining);
        if (this.isJoining) {
            this.joinIcon.setVisibility(8);
            this.joinLoading.setVisibility(0);
        }
        if (this.thread.getVvChatJoinType() == 2 && !this.chathelper.isHostOrCoHost(getThread())) {
            if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(this.nvcontext, signallingChannel.userWaitList)) {
                this.joinIcon.setVisibility(8);
                this.joinText.setText(R.string.waiting);
            } else {
                this.joinIcon.setImageResource(R.drawable.ic_rtc_request_join_audio);
                this.joinText.setText(R.string.talk);
            }
            View view = this.joinButton;
            VVChatHelper vVChatHelper = this.vvChatHelper;
            if (vVChatHelper != null && vVChatHelper.isCurrentChannelLive(signallingChannel)) {
                z = true;
            }
            view.setEnabled(z);
        } else {
            this.joinIcon.setImageResource(R.drawable.ic_rtc_join_audio);
            this.joinText.setText(R.string.join);
            View view2 = this.joinButton;
            VVChatHelper vVChatHelper2 = this.vvChatHelper;
            if (vVChatHelper2 != null && vVChatHelper2.isCurrentChannelLive(signallingChannel) && (onClickRightView = this.onClickRightViewListener) != null && onClickRightView.checkChannelUserLimit()) {
                z = true;
            }
            view2.setEnabled(z);
        }
        this.joinText.resizingFromMaxSize();
    }

    private void updateWaitingListBubble(List<User> list) throws Resources.NotFoundException {
        if (!this.chathelper.isHostOrCoHost(getThread()) || !this.requestView.isShown()) {
            if (this.toolTipHelper.isTooltipShowing()) {
                this.toolTipHelper.hideToolTip();
            }
            this.oldWaitList.clear();
            this.oldWaitList.addAll(list);
            return;
        }
        Tooltip tooltipBuild = Tooltip.builder().anchorView(this.requestView).customTooltipBubbleLayout(R.layout.chat_input_layout_waiting_bubble).doCustomTooltipBubble(new Callback<View>() { // from class: com.narvii.chat.input.ChatInputRightViewContainer.1
            @Override // com.narvii.util.Callback
            public void call(View view) {
                ChatInputRightViewContainer.this.tooltipView = view;
                ChatInputRightViewContainer chatInputRightViewContainer = ChatInputRightViewContainer.this;
                chatInputRightViewContainer.updateWaitingListBubbleViewContent(chatInputRightViewContainer.tooltipView, ChatInputRightViewContainer.this.tmpNewUsers);
            }
        }).indicatorUp(true).background(Color.parseColor("#FF5ED700")).showOnlyOnce(false).autoHide().isVibrate(false).linkClickWithAnchorView().build();
        if (!this.toolTipHelper.isTooltipShowing()) {
            this.tmpNewUsers.clear();
        }
        Iterator<User> it = this.tmpNewUsers.iterator();
        while (it.hasNext()) {
            if (!Utils.containsId(list, it.next().id())) {
                it.remove();
            }
        }
        for (User user : list) {
            if (!Utils.containsId(this.oldWaitList, user.id())) {
                Utils.removeId(this.tmpNewUsers, user.id());
                this.tmpNewUsers.add(0, user);
            }
        }
        this.oldWaitList.clear();
        this.oldWaitList.addAll(list);
        if (this.toolTipHelper.isTooltipShowing()) {
            if (this.tmpNewUsers.isEmpty()) {
                this.toolTipHelper.hideToolTip();
                return;
            } else {
                updateWaitingListBubbleViewContent(this.tooltipView, this.tmpNewUsers);
                return;
            }
        }
        if (this.tmpNewUsers.isEmpty() || isWaitingListShown()) {
            return;
        }
        this.toolTipHelper.showToolTip(tooltipBuild);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWaitingListBubbleViewContent(View view, List<User> list) {
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) view.findViewById(R.id.waiting_member_list);
        liveLayerOnlineBar.setAvatarStrokeWidth(1);
        liveLayerOnlineBar.setForceHideOnlineTextLayout(true);
        liveLayerOnlineBar.setUserList(list, list.size());
        ((TextView) view.findViewById(R.id.waiting_member_hint)).setText(list.size() == 1 ? getContext().getString(R.string.waiting_list_bubble_hint_1) : getContext().getString(R.string.waiting_list_bubble_hint_n, Integer.valueOf(list.size())));
    }

    private boolean isPrivateVoiceCall(SignallingChannel signallingChannel) {
        return new VoiceCallHelper(getContext()).isPrivateCall(getThread(), signallingChannel == null ? 0 : signallingChannel.channelType) && this.rtcService.isCreator();
    }

    private ChatThread getThread() {
        return this.thread;
    }

    public void setEmbedFragment(boolean z) {
        this.isEmbedFragment = z;
    }

    public void setThread(ChatThread chatThread) {
        this.thread = chatThread;
        showView();
    }

    public void setOnClickRightViewListener(OnClickRightView onClickRightView) {
        this.onClickRightViewListener = onClickRightView;
    }
}
