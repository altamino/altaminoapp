package com.narvii.chat;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.detail.ThreadAnnouncementFragment;
import com.narvii.chat.detail.ThreadDetailFragment;
import com.narvii.chat.input.ChatInputFragment;
import com.narvii.chat.invite.ChatInvitationFragment;
import com.narvii.chat.invite.JoinThreadFragment;
import com.narvii.chat.organizer.ClaimOrganizerTransFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.ChatLogEventHelper;
import com.narvii.chat.video.ILiveChannelCollapseChangeListener;
import com.narvii.chat.video.events.LiveChannelChangeListener;
import com.narvii.chat.video.events.MyChannelUserStatusChangeListener;
import com.narvii.chat.video.floating.CommunityThread;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FanClub;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogEventType;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaPlayerManager;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.pushservice.PushService;
import com.narvii.tipping.model.TipLog;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsService;
import com.narvii.video.ui.floating.FloatingPermissionUtils;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public class ChatFragment extends NVFragment implements NotificationListener, FragmentOnBackListener, ILiveChannelCollapseChangeListener, View.OnClickListener, WsService.WsListener, LiveChannelChangeListener, MyChannelUserStatusChangeListener, ThreadConfigChangeListener, ThreadInfoHost {
    public static final String FRAGMENT_TAG_FANS_ONLY = "fansOnlyMask";
    public static final String FRAGMENT_TAG_INVITATION = "invitation";
    public static final String FRAGMENT_TAG_ORGANIZER_LEFT = "organizer_left";
    public static final String FRAGMENT_TAG_VV_MAIN = "vvChat";
    private static final int REPORT_ACTIVE_INTERVAL = 300000;
    public static final boolean TEXT_FLOATING_ENABLED = false;
    public static final String WRAPPER_ACTIVITY = ChatActivity.class.getName();
    private View actionBarLeftView;
    private ViewGroup announcementContainer;
    private TextView announcementText;
    private View btnLeaveConversation;
    ChatHelper chatHelper;
    private ChatInputFragment chatInputFragment;
    private View chatInviteFrame;
    ChatService chatService;
    private ChatTipBroadcastHelper chatTipBroadcastHelper;
    private TextView disableBar;
    private View disabledLayout;
    private View fansOnlyMask;
    FloatingPermissionUtils floatingPermissionUtils;
    private boolean fromGlobalChat;
    private boolean isChatFullInfoFetched;
    private boolean isLiveChannelShow;
    SoftKeyboard.KeyboardObserver keyboardObserver;
    private View listViewFrame;
    private View listViewFrameBg;
    public String liveLayerTarget;
    private View liveLayout;
    PopupWindow menuClosePopupWindow;
    private View organizerTransContainer;
    private ChatContentContainer root;
    RtcService rtcService;
    boolean statSend;
    ChatThread thread;
    private ApiRequest threadRequest;
    private ViewGroup tipBroadcastLayout;
    private TextView tvChatTileView;
    private TextView tvMemberCount;
    VVChatMainFragment vvChatMainFragment;
    private WsService wsService;
    public final List<String> actions = new ArrayList();
    public final HashMap<String, Object> params = new HashMap<>();
    private boolean isKeyboardVisible = false;
    private boolean isChatInputPanelShown = false;
    boolean allowFloatingWindow = true;
    ChatInputFragment.PanelHideListener panelHideListener = new ChatInputFragment.PanelHideListener() { // from class: com.narvii.chat.ChatFragment.1
        @Override // com.narvii.chat.input.ChatInputFragment.PanelHideListener
        public void onPanelHide() {
            ChatFragment.this.isChatInputPanelShown = false;
            ChatFragment.this.updateOrganizerTransView();
            ChatFragment.this.updateChatListFrame();
        }

        @Override // com.narvii.chat.input.ChatInputFragment.PanelHideListener
        public void onPanelShow() {
            ChatFragment.this.isChatInputPanelShown = true;
            ChatFragment.this.updateOrganizerTransView();
            ChatFragment.this.updateChatListFrame();
        }
    };
    View.OnClickListener menuClickListener = new View.OnClickListener() { // from class: com.narvii.chat.ChatFragment.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.menu_close) {
                LogEvent.clickWildcardBuilder(ChatFragment.this).area("CloseButton").send();
                ChatFragment.this.onChatCloseClicked(view);
            }
        }
    };
    private final ApiResponseListener<ThreadResponse> listener = new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.ChatFragment.8
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            ChatFragment.this.threadRequest = null;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
            ChatFragment.this.threadRequest = null;
            if (ChatFragment.this.isDestoryed()) {
                return;
            }
            ChatFragment.this.isChatFullInfoFetched = true;
            ChatFragment.this.setThread(threadResponse.thread, true);
            ChatFragment.this.beginReportActive();
            ChatFragment.this.updateChatThreadInList();
        }
    };
    Runnable reportLiveLayerActiveRunnable = new Runnable() { // from class: com.narvii.chat.ChatFragment.9
        @Override // java.lang.Runnable
        public void run() {
            ChatFragment chatFragment = ChatFragment.this;
            chatFragment.liveLayerTarget = null;
            chatFragment.reportActive();
            Utils.postDelayed(this, 300000L);
        }
    };

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private boolean shouldShowThreadFloating() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "chat_room";
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return this.thread;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean hideCBBInHomeFragment() {
        return true;
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    @Override // com.narvii.chat.video.events.MyChannelUserStatusChangeListener
    public void onMyChannelUserStatusChanged(int i10, @NotNull SignallingChannel signallingChannel, @org.jetbrains.annotations.Nullable ChannelUser channelUser) {
        if (i10 == 3) {
            updateLiveLabel(signallingChannel);
        }
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
    }

    public void setAllowFloatingWindow(boolean z6) {
        this.allowFloatingWindow = z6;
    }

    public void setThread(ChatThread chatThread, boolean z6) {
        ChatTipBroadcastHelper chatTipBroadcastHelper;
        TippingInfo tippingInfo;
        ChatThread chatThread2 = this.thread;
        this.thread = chatThread;
        if (chatThread != null) {
            if (!z6 && chatThread2 != null && (tippingInfo = chatThread2.tipInfo) != null && chatThread.tipInfo == null) {
                chatThread.tipInfo = tippingInfo;
            }
            TippingInfo tippingInfo2 = chatThread.tipInfo;
            if ((tippingInfo2 == null || !tippingInfo2.tippable) && (chatTipBroadcastHelper = this.chatTipBroadcastHelper) != null) {
                chatTipBroadcastHelper.clearPendingTipLog();
            }
        }
        if (getChildFragmentManager().B0() != null) {
            for (ActivityResultCaller activityResultCaller : getChildFragmentManager().B0()) {
                if (activityResultCaller instanceof ThreadInfoHost) {
                    ((ThreadInfoHost) activityResultCaller).onThreadChanged(this.thread);
                }
            }
        }
        if (getActivity() != null && getActivity().getSupportFragmentManager().B0() != null) {
            for (ActivityResultCaller activityResultCaller2 : getActivity().getSupportFragmentManager().B0()) {
                if (activityResultCaller2 instanceof IThreadInfoListener) {
                    ((IThreadInfoListener) activityResultCaller2).onThreadUpdate(this.thread);
                }
            }
        }
        if (chatThread != null) {
            if (chatThread.type == 2 && chatThread.condition == 2 && (chatThread2 == null || chatThread2.condition != 2)) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setMessage(R.string.chat_author_absent);
                alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
            }
            stat(chatThread);
        }
        updateActionBarTitle();
        updatePrivateContentViews();
        updateOrganizerTransView();
        invalidateOptionsMenu();
        updateDisabledBar();
        beginReportActive();
        updateFloatView();
        ChatService chatService = (ChatService) getService("chat");
        if (getThread() == null || !this.isChatFullInfoFetched || getThread().membershipStatus == 0 || !chatService.containGuestThreadId(getThreadId())) {
            return;
        }
        chatService.removeGuestThreadId(getThreadId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void beginReportActive() {
        Utils.handler.removeCallbacks(this.reportLiveLayerActiveRunnable);
        Utils.post(this.reportLiveLayerActiveRunnable);
    }

    private boolean isChatThreadDisabledOrDelete() {
        return this.chatHelper.isChatThreadDisabledOrDelete(this.thread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFloatView$1() {
        TextView textView = this.announcementText;
        textView.setText(textView.getText());
    }

    private void notifyTipBroadcastActiveChange() {
        ChatTipBroadcastHelper chatTipBroadcastHelper = this.chatTipBroadcastHelper;
        if (chatTipBroadcastHelper != null) {
            chatTipBroadcastHelper.onActiveChanged(isActive() && !Utils.isLandscape(getContext()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onChatCloseClicked(View view) {
        VVChatHelper vVChatHelper = new VVChatHelper(this);
        if (this.rtcService.getMainSigChannel() == null || !Utils.isEqualsNotNull(getThreadId(), this.rtcService.getMainSigChannel().threadId) || !vVChatHelper.isCurrentChannelLive(this.rtcService.getMappedSignallingChannel(getThreadId())) || this.vvChatMainFragment == null) {
            new ChatLogEventHelper(this).logQuitChat(-1, (ChatThread) getLogObject());
            if (getActivity() != null) {
                getActivity().finish();
                return;
            }
            return;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.chat_menu_close, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        this.menuClosePopupWindow = popupWindow;
        popupWindow.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.bg_rect_black_6_corner));
        viewInflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(ChatFragment.this).area("Close").send();
                ChatFragment.this.menuClosePopupWindow.dismiss();
                VVChatMainFragment vVChatMainFragment = ChatFragment.this.vvChatMainFragment;
                if (vVChatMainFragment == null || vVChatMainFragment.onCloseClicked()) {
                    new ChatLogEventHelper(ChatFragment.this).logQuitChat(-1, (ChatThread) ChatFragment.this.getLogObject());
                    if (ChatFragment.this.getActivity() != null) {
                        ChatFragment.this.getActivity().finish();
                    }
                }
            }
        });
        viewInflate.findViewById(R.id.mini).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(ChatFragment.this).area("Minimize").send();
                ChatFragment.this.menuClosePopupWindow.dismiss();
                ChatFragment chatFragment = ChatFragment.this;
                chatFragment.onBackPressed((NVActivity) chatFragment.getActivity());
            }
        });
        this.menuClosePopupWindow.setFocusable(true);
        this.menuClosePopupWindow.setOutsideTouchable(true);
        this.menuClosePopupWindow.showAsDropDown(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportActive() {
        LiveLayerService liveLayerService;
        ChatThread chatThread = this.thread;
        if (chatThread == null || !LiveLayerUtils.isStatusOk(chatThread) || this.liveLayerTarget != null || this.thread.organizerLeft() || !this.isChatFullInfoFetched || (liveLayerService = (LiveLayerService) getService("liveLayer")) == null) {
            return;
        }
        if (this.thread.isFansOnly() && this.thread.needHidden) {
            return;
        }
        this.liveLayerTarget = NVObject.objectTypeName(12) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + this.thread.id();
        this.params.put("threadType", Integer.valueOf(this.thread.type));
        this.params.put("membershipStatus", Integer.valueOf(this.thread.membershipStatus));
        liveLayerService.reportActive(this.actions, this.liveLayerTarget, this.params);
        if (this.thread.membershipStatus != 0 || TextUtils.isEmpty(getThreadId())) {
            return;
        }
        ((ChatService) getService("chat")).addGuestThreadId(getThreadId());
    }

    private boolean shouldShowLiveChannelFloating() {
        SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        return mainSigChannel != null && Utils.isEqualsNotNull(getThreadId(), mainSigChannel.threadId);
    }

    private void stopReportActive() {
        Utils.handler.removeCallbacks(this.reportLiveLayerActiveRunnable);
    }

    private void updateActionBarTitle() {
        String str;
        TextView textView = this.tvChatTileView;
        if (textView != null) {
            textView.setText(new ChatHelper(getContext()).getThreadTitle(getThread()));
        }
        if (this.tvMemberCount != null) {
            int memberCount = new ChatHelper(getContext()).getMemberCount(getThread());
            if (getThread() != null && getThread().type == 0) {
                memberCount = 0;
            }
            if (memberCount <= 0) {
                str = "";
            } else {
                str = " (" + memberCount + ")";
            }
            this.tvMemberCount.setText(str);
            this.tvMemberCount.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        }
    }

    private void updateActionbarView() {
        View viewFindViewById;
        View view = this.actionBarLeftView;
        if (view == null || (viewFindViewById = view.findViewById(R.id.actionbar_back)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChatListFrame() {
        int liveContentHeight;
        int i10 = 0;
        this.root.setShouldChangeOrder(this.isLiveChannelShow && (this.isKeyboardVisible || this.isChatInputPanelShown));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.listViewFrame.getLayoutParams();
        int actionBarHeight = Utils.getActionBarHeight(getContext()) + Utils.getStatusBarHeight(getContext());
        if (this.isLiveChannelShow) {
            VVChatMainFragment vVChatMainFragment = this.vvChatMainFragment;
            liveContentHeight = actionBarHeight + (vVChatMainFragment != null ? vVChatMainFragment.getLiveContentHeight() : 0);
        } else {
            liveContentHeight = 0;
        }
        boolean z6 = this.isKeyboardVisible;
        if (z6 || this.isChatInputPanelShown) {
            liveContentHeight = 0;
        }
        marginLayoutParams.topMargin = liveContentHeight;
        View view = this.listViewFrameBg;
        if (!this.isLiveChannelShow || (!z6 && !this.isChatInputPanelShown)) {
            i10 = 8;
        }
        view.setVisibility(i10);
        this.listViewFrame.setLayoutParams(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChatThreadInList() {
        if (this.thread == null) {
            return;
        }
        Notification notification = new Notification("update", this.thread);
        NotificationCenter notificationCenter = (NotificationCenter) getService("notification");
        Bundle bundle = new Bundle();
        notification.bundle = bundle;
        bundle.putBoolean("_fromChatFragment", true);
        NotificationUtils.sendNotificationIncludeGlobal(notificationCenter, notification);
    }

    private void updateDisabledBar() {
        ViewUtils.show(this.disabledLayout, isChatThreadDisabledOrDelete());
        ViewUtils.show(this.btnLeaveConversation, getThread() != null && getThread().membershipStatus == 1);
        ViewUtils.show(getView(), R.id.chat_invitation_frame, !isChatThreadDisabledOrDelete());
        if (!isChatThreadDisabledOrDelete() || this.disableBar == null || getThread() == null) {
            return;
        }
        this.disableBar.setText(getThread().isDeleted() ? R.string.chat_deleted_by_moderator : R.string.chat_disabled_by_moderator);
    }

    private void updateFansOnlyMask() {
        View view = this.fansOnlyMask;
        if (view == null) {
            return;
        }
        view.setVisibility(isMeAccessibleToThisChat() ? 8 : 0);
    }

    private void updateLiveLabel(SignallingChannel signallingChannel) {
        List<ChannelUser> list;
        View view = this.liveLayout;
        if (view == null || signallingChannel == null) {
            return;
        }
        view.setVisibility((!SignallingChannel.isLegalChannelType(signallingChannel.channelType) || !SignallingChannel.isNotGuestRole(signallingChannel.joinRole) || (list = signallingChannel.userList) == null || list.size() <= 0) ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOrganizerTransView() {
        View view = this.organizerTransContainer;
        ChatInputFragment chatInputFragment = this.chatInputFragment;
        view.setVisibility(((chatInputFragment != null && !chatInputFragment.isAllPanelHidden()) || this.isKeyboardVisible || isChatThreadDisabledOrDelete()) ? 8 : 0);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    public boolean isMeAccessibleToThisChat() {
        return this.chatHelper.isMeAccessibleToThisChat(getThread());
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelForceQuit(@NotNull SignallingChannel signallingChannel, int i10) {
        View view = this.liveLayout;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void onNewTipLog(TipLog tipLog) {
        ChatTipBroadcastHelper chatTipBroadcastHelper = this.chatTipBroadcastHelper;
        if (chatTipBroadcastHelper != null) {
            chatTipBroadcastHelper.onNewTipLog(tipLog);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.isKeyboardVisible) {
            SoftKeyboard.hideSoftKeyboard(getContext());
            return true;
        }
        if (menuItem.getItemId() != R.string.chat_more_info) {
            return super.onOptionsItemSelected(menuItem);
        }
        LogEvent.clickWildcardBuilder(this).area("SettingButton").send();
        Intent intent = FragmentWrapperActivity.intent(ThreadDetailFragment.class);
        intent.putExtra("id", getThreadId());
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(getThread()));
        intent.putExtra("customFinishAnimIn", R.anim.activity_push_right_in);
        intent.putExtra("customFinishAnimOut", R.anim.activity_push_right_out);
        intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, this.fromGlobalChat);
        intent.putExtra(RtcService.KEY_COMMUNITY, getStringParam(RtcService.KEY_COMMUNITY));
        intent.putExtra("fromRecentChat", getBooleanParam("fromRecentChat"));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        getActivity().overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_left_out);
        return true;
    }

    public void onTipBroadcastLayoutCreated(ViewGroup viewGroup) {
        this.chatTipBroadcastHelper = new ChatTipBroadcastHelper(viewGroup) { // from class: com.narvii.chat.ChatFragment.3
            @Override // com.narvii.chat.ChatTipBroadcastHelper
            protected void applyTipCoins(int i10) {
                TippingInfo tippingInfo;
                ChatThread chatThread = ChatFragment.this.thread;
                if (chatThread == null || (tippingInfo = chatThread.tipInfo) == null) {
                    return;
                }
                tippingInfo.tippedCoins += i10;
            }

            @Override // com.narvii.chat.ChatTipBroadcastHelper
            protected void onClickTipBroadcast(User user) {
                ChatListFragment chatListFragment;
                LogEvent.clickWildcardBuilder(ChatFragment.this).area("TipBroadcast").send();
                FragmentManager childFragmentManager = ChatFragment.this.getChildFragmentManager();
                if (childFragmentManager == null || (chatListFragment = (ChatListFragment) childFragmentManager.m0("chatList")) == null) {
                    return;
                }
                chatListFragment.openMiniProfile(user);
            }
        };
        notifyTipBroadcastActiveChange();
    }

    public void onTipEnableChanged(boolean z6) {
        TippingInfo tippingInfo;
        ChatThread chatThread = this.thread;
        if (chatThread == null || (tippingInfo = chatThread.tipInfo) == null) {
            return;
        }
        tippingInfo.tippable = z6;
        setThread(chatThread);
        updateChatThreadInList();
    }

    public void sendGetThreadReqeust() {
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.threadRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.threadRequest = null;
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().chatServer().path("/chat/thread/" + getThreadId()).build();
        this.threadRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, this.listener);
    }

    void stat(ChatThread chatThread) {
        if (this.statSend) {
            return;
        }
        ((StatisticsService) getService("statistics")).event("Enter Chat Thread").userPropInc("Entered Chat Thread Total").param(EventConstants.CommentPost.TYPE, StatisticHelper.getChatThreadType(chatThread, "Others")).param(EventConstants.CreatePost.GATED, !isMeAccessibleToThisChat()).source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        this.statSend = true;
    }

    private boolean isThreadDelete() {
        if (getThread() != null && getThread().isDeleted()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityCreated$0(View view) {
        FragmentActivity activity = getActivity();
        SoftKeyboard.hideSoftKeyboard(getContext());
        if (activity instanceof DrawerActivity) {
            ((DrawerActivity) activity).openDrawer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFloatView$2(ChatThread chatThread, View view) {
        LogEvent.clickWildcardBuilder(this).area("Announcement").send();
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, ThreadAnnouncementFragment.Companion.intent(chatThread));
    }

    private void updateFloatView() {
        final ChatThread thread = getThread();
        if (thread != null && !thread.isDisabled() && !thread.isDeleted() && thread.isPinAnnouncement().booleanValue() && !TextUtils.isEmpty(thread.getAnnouncement())) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.announcementContainer.getLayoutParams();
            if (isEmbedFragment() && !isThreadDelete()) {
                marginLayoutParams.topMargin = 0;
            } else {
                marginLayoutParams.topMargin = Utils.dpToPxInt(getContext(), 10.0f);
            }
            this.announcementContainer.setVisibility(0);
            this.announcementText.setText(thread.getAnnouncement());
            this.announcementText.post(new Runnable() { // from class: com.narvii.chat.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1977a.lambda$updateFloatView$1();
                }
            });
            this.announcementContainer.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1978a.lambda$updateFloatView$2(thread, view);
                }
            });
            return;
        }
        this.announcementContainer.setVisibility(8);
    }

    private void updatePrivateContentViews() {
        updateActionbarView();
        updateFansOnlyMask();
    }

    @Override // com.narvii.chat.ThreadConfigChangeListener
    public void announcementPinBehaviorChanged(boolean z6) {
        if (getThread() != null) {
            sendGetThreadReqeust();
            updateChatThreadInList();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        if (builder.getLogEvent().objectId == null) {
            builder.object(getLogObject());
        }
        if (!LogEventType.AppEvent.name().equals(builder.getLogEvent().eventType)) {
            builder.areaIfNotSet("chatArea");
        }
        ChatThread thread = getThread();
        if (thread != null) {
            builder.extraParam("chatProperty", ChatLogEventHelper.getChatProperty(thread.type));
        }
        if (!builder.containExtraKey("chatType")) {
            SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
            if (mainSigChannel != null) {
                builder.extraParam("chatType", ChatLogEventHelper.getChatType(mainSigChannel.channelType));
            } else {
                builder.extraParam("chatType", "textChat");
            }
        }
        builder.extraParam("chatId", getThreadId());
    }

    public NVObject getLogObject() {
        ChatThread thread = getThread();
        if (thread != null) {
            return thread;
        }
        ChatThread chatThread = new ChatThread();
        chatThread.threadId = getThreadId();
        return chatThread;
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (z6) {
            ((PushService) getService("push")).dismissChatNotification(((ConfigService) getService("config")).getCommunityId(), getThreadId());
            beginReportActive();
        }
        if (!z6) {
            ((MediaPlayerManager) getService("mediaPlayer")).releaseMediaPlayer();
            if (this.liveLayerTarget != null) {
                ((LiveLayerService) getService("liveLayer")).reportInactive(this.actions, this.liveLayerTarget, this.params);
                this.liveLayerTarget = null;
            }
            stopReportActive();
        }
        notifyTipBroadcastActiveChange();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.chat_actionbar_left, (ViewGroup) null);
        this.actionBarLeftView = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.fake_actionbar_title);
        this.tvChatTileView = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1980a.lambda$onActivityCreated$0(view);
            }
        });
        this.tvMemberCount = (TextView) this.actionBarLeftView.findViewById(R.id.member_count);
        updateActionBarTitle();
        setActionBarLeftView(this.actionBarLeftView);
        updatePrivateContentViews();
        updateLiveLabel(this.rtcService.getMappedSignallingChannel(getThreadId()));
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        SoftKeyboard.hideSoftKeyboard(getContext());
        ChatInputFragment chatInputFragment = this.chatInputFragment;
        if (chatInputFragment != null && chatInputFragment.onBackPressed()) {
            return true;
        }
        VVChatMainFragment vVChatMainFragment = this.vvChatMainFragment;
        if (vVChatMainFragment != null && vVChatMainFragment.onBackPressed()) {
            return true;
        }
        if (shouldShowThreadFloating()) {
            int communityId = ((ConfigService) getService("config")).getCommunityId();
            if (communityId == 0) {
                return false;
            }
            this.rtcService.showThreadDetailWindow(new CommunityThread(communityId, this.thread));
        }
        new ChatLogEventHelper(this).logQuitChat(-1, (ChatThread) getLogObject());
        return false;
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelStatusChanged(@NotNull SignallingChannel signallingChannel) {
        updateLiveLabel(signallingChannel);
    }

    @Override // com.narvii.chat.video.events.LiveChannelChangeListener
    public void onChannelUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Collection<? extends ChannelUser> collection, @NotNull Collection<? extends ChannelUser> collection2, @org.jetbrains.annotations.Nullable SparseArray<ChannelUserWrapper> sparseArray) {
        updateLiveLabel(signallingChannel);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ChatThread briefContent;
        int id = view.getId();
        if (id != R.id.chat_list_frame_bg) {
            if (id == R.id.leave_conversation) {
                Fragment fragmentM0 = getChildFragmentManager().m0("joinThread");
                if (fragmentM0 != null) {
                    getChildFragmentManager().q().t(fragmentM0).j();
                }
                JoinThreadFragment joinThreadFragment = new JoinThreadFragment();
                Bundle bundle = new Bundle();
                bundle.putString("id", getStringParam("id"));
                ChatThread thread = getThread();
                if (thread == null) {
                    briefContent = null;
                } else {
                    briefContent = thread.getBriefContent();
                }
                bundle.putString("thread", JacksonUtils.writeAsString(briefContent));
                joinThreadFragment.setArguments(bundle);
                getChildFragmentManager().q().e(joinThreadFragment, "joinThread").j();
                getChildFragmentManager().i0();
                joinThreadFragment.leaveConversation();
                return;
            }
            return;
        }
        SoftKeyboard.hideSoftKeyboard(getContext());
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        boolean z6;
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            z6 = true;
        } else {
            z6 = false;
        }
        ViewUtils.show(getView().getRootView().findViewById(R.id.vv_chat_overlay_list_placeholder), !z6);
        ViewUtils.show(this.chatInviteFrame, !z6);
        if (z6) {
            getActivity().getActionBar().hide();
        } else {
            getActivity().getActionBar().show();
        }
        if (getActivity() instanceof DrawerActivity) {
            ((DrawerActivity) getActivity()).setDisableDrawer(z6);
        }
        this.rtcService.setCameraLandScape(z6);
        notifyTipBroadcastActiveChange();
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        reportActive();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RtcService rtcService = (RtcService) getService("rtc");
        this.rtcService = rtcService;
        rtcService.addMyChannelUserStatusChangeListener(getThreadId(), this);
        this.rtcService.addLiveChannelChangeListener(getThreadId(), this);
        this.chatHelper = new ChatHelper(getContext());
        setHasOptionsMenu(true);
        if (getMenuController() != null) {
            getMenuController().setScrollEnabled(false);
        }
        this.actions.add(LiveLayerService.ACTION_CHATTING);
        setTitle((CharSequence) null);
        this.thread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        this.floatingPermissionUtils = new FloatingPermissionUtils(getContext());
        this.fromGlobalChat = getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT);
        WsService wsService = (WsService) getService("ws");
        this.wsService = wsService;
        wsService.listeners.addListener(this);
        ChatService chatService = (ChatService) getService("chat");
        this.chatService = chatService;
        chatService.addLiveChannelPermissionListener(getThreadId(), this);
        if (bundle == null && getBooleanParam("justCreated")) {
            LogEvent.clickBuilder(this, ActSemantic.createChat).send();
            new PushNotificationHelper(this).showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CHAT);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.chat_more_info, 1, R.string.chat_more_info).setIcon(R.drawable.ic_chat_setting).setShowAsAction(2);
        menu.add(0, R.id.close, 1, R.string.close).setActionView(R.layout.menu_item_close).setShowAsActionFlags(2).getActionView().setOnClickListener(this.menuClickListener);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.chat_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
        ChatTipBroadcastHelper chatTipBroadcastHelper = this.chatTipBroadcastHelper;
        if (chatTipBroadcastHelper != null) {
            chatTipBroadcastHelper.onDestroy();
        }
        this.rtcService.removeLiveChannelChangeListener(getThreadId(), this);
        this.rtcService.removeMyChannelUserStatusChangeListener(getThreadId(), this);
        this.chatService.removeLiveChannelPermissionListener(getThreadId(), this);
    }

    @Override // com.narvii.chat.video.ILiveChannelCollapseChangeListener
    public void onLiveContentStatusChanged(int i10) {
        VVChatMainFragment vVChatMainFragment;
        boolean z6;
        if (isAdded() && (vVChatMainFragment = this.vvChatMainFragment) != null && vVChatMainFragment.isAdded()) {
            if (i10 != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.isLiveChannelShow = z6;
            updateChatListFrame();
        }
    }

    @Override // com.narvii.chat.ThreadConfigChangeListener
    public void onLivePermissionChanged(int i10) {
        if (getThread() != null) {
            getThread().setVvChatJoinType(i10);
            setThread(getThread());
            updateChatThreadInList();
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        String strUid;
        View view;
        if (Utils.isEquals(getThreadId(), notification.id)) {
            String str = notification.action;
            if ((str == "update" || str == "edit") && (notification.obj instanceof ChatThread)) {
                Bundle bundle = notification.bundle;
                if (bundle != null && bundle.getBoolean("_fromChatFragment")) {
                    return;
                }
                Bundle bundle2 = notification.bundle;
                boolean z6 = false;
                if (bundle2 != null) {
                    z6 = bundle2.getBoolean("_instantFullInfo", false);
                }
                setThread((ChatThread) notification.obj, z6);
            } else if (str == "delete") {
                if (isEmbedFragment()) {
                    sendGetThreadReqeust();
                } else {
                    finish();
                }
            }
        }
        if (Utils.isEquals(getThreadId(), notification.id) && (notification.obj instanceof ChatBubbleNotificationWrapper) && getThread() != null) {
            getThread().updateBubble(((AccountService) getService("account")).getUserId(), ((ChatBubbleNotificationWrapper) notification.obj).chatBubble);
            setThread(getThread());
        }
        Object obj = notification.obj;
        if (obj instanceof FanClub) {
            String str2 = ((FanClub) obj).targetUid;
            if (getThread() == null) {
                strUid = null;
            } else {
                strUid = getThread().uid();
            }
            if (Utils.isEqualsNotNull(str2, strUid) && !isMeAccessibleToThisChat()) {
                FanClub fanClub = ((AccountService) getService("account")).getFanClub(((FanClub) notification.obj).targetUid);
                if (fanClub != null && fanClub.isActive() && (view = this.fansOnlyMask) != null) {
                    view.setVisibility(8);
                    VVChatMainFragment vVChatMainFragment = this.vvChatMainFragment;
                    if (vVChatMainFragment != null) {
                        vVChatMainFragment.onFansClubStatusActive();
                    }
                }
                sendGetThreadReqeust();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        FloatingPermissionUtils floatingPermissionUtils;
        Boolean andRemove;
        super.onPause();
        if (!isEmbedFragment() && this.vvChatMainFragment != null && !isFinishing() && (floatingPermissionUtils = this.floatingPermissionUtils) != null && floatingPermissionUtils.canDrawOverlays() && this.allowFloatingWindow) {
            if ((getActivity() instanceof ChatActivity) && (andRemove = ((ChatActivity) getActivity()).DISABLE_FLOATING_WINDOW.getAndRemove()) != null && andRemove.booleanValue()) {
                return;
            }
            if (shouldShowLiveChannelFloating()) {
                this.vvChatMainFragment.showFloatingWindow();
            }
        }
        this.allowFloatingWindow = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.close).setVisible(!isEmbedFragment());
        menu.findItem(R.string.chat_more_info).setVisible(!isThreadDelete());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (!isEmbedFragment()) {
            this.rtcService.hideThreadDetailWindow();
            SignallingChannel floatingLiveChannel = this.rtcService.getFloatingLiveChannel();
            if (floatingLiveChannel != null && this.rtcService.getShowingWindowType() != -1 && Utils.isEqualsNotNull(getThreadId(), floatingLiveChannel.threadId)) {
                this.rtcService.cleaningAttachedWindows();
            }
            if (Utils.isEqualsNotNull(getThreadId(), this.rtcService.getPendingFloatingThreadId())) {
                this.rtcService.removePendingFloatingRunnable();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("thread", JacksonUtils.safeWriteAsString(this.thread));
        bundle.putBoolean("statSend", this.statSend);
        bundle.putBoolean("isChatFullInfoFetched", this.isChatFullInfoFetched);
        bundle.putBoolean("isLiveChannelShow", this.isLiveChannelShow);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        final ChatThread chatThread;
        ChatThread briefContent;
        super.onViewCreated(view, bundle);
        this.root = (ChatContentContainer) view.findViewById(R.id.root);
        this.listViewFrame = view.findViewById(R.id.chat_list_frame);
        View viewFindViewById = view.findViewById(R.id.chat_list_frame_bg);
        this.listViewFrameBg = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.disabledLayout = view.findViewById(R.id.disabled_layout);
        this.disableBar = (TextView) view.findViewById(R.id.disabled_bar);
        View viewFindViewById2 = view.findViewById(R.id.leave_conversation);
        this.btnLeaveConversation = viewFindViewById2;
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f1976a.onClick(view2);
            }
        });
        this.chatInviteFrame = view.findViewById(R.id.chat_invitation_frame);
        this.fansOnlyMask = view.findViewById(R.id.fans_only_mask);
        this.announcementContainer = (ViewGroup) view.findViewById(R.id.announcement_container);
        this.announcementText = (TextView) view.findViewById(R.id.announcement_text);
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.tip_broadcast_layout);
        this.tipBroadcastLayout = viewGroup;
        onTipBroadcastLayoutCreated(viewGroup);
        AndroidBug5497Workaround.assistActivity(getActivity());
        updateActionBarTitle();
        updateFloatView();
        View viewFindViewById3 = view.findViewById(R.id.chat_actionbar_overlay);
        ViewGroup.LayoutParams layoutParams = viewFindViewById3.getLayoutParams();
        layoutParams.height = getActionBarOverlaySize() + getStatusBarOverlaySize();
        viewFindViewById3.setLayoutParams(layoutParams);
        if (bundle == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            this.vvChatMainFragment = new VVChatMainFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("id", getStringParam("id"));
            ChatThread thread = getThread();
            if (thread == null) {
                briefContent = null;
            } else {
                briefContent = thread.getBriefContent();
            }
            bundle2.putString("thread", JacksonUtils.writeAsString(briefContent));
            bundle2.putString(ApiRequest.MULTIPART_NAME_PAYLOAD, getStringParam(ApiRequest.MULTIPART_NAME_PAYLOAD));
            this.vvChatMainFragment.setArguments(bundle2);
            this.chatInputFragment = new ChatInputFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString("stickerCollectionId", getStringParam("stickerCollectionId"));
            this.chatInputFragment.setArguments(bundle3);
            ChatListFragment chatListFragment = new ChatListFragment();
            chatListFragment.setSwipeRefreshEnabled(!isEmbedFragment());
            childFragmentManager.q().c(R.id.chat_bg_frame, new ChatBackgroundFragment(), "chatBackground").c(R.id.chat_input_frame, this.chatInputFragment, "chatInput").c(R.id.chat_list_frame, chatListFragment, "chatList").c(R.id.chat_organizer_trans_frame, new ClaimOrganizerTransFragment(), "chatOrganizerTrans").c(R.id.vv_chat_frame, this.vvChatMainFragment, FRAGMENT_TAG_VV_MAIN).c(R.id.chat_invitation_frame, new ChatInvitationFragment(), FRAGMENT_TAG_INVITATION).c(R.id.fans_only_mask, new ChatFansOnlyMaskFragment(), FRAGMENT_TAG_FANS_ONLY).e(new JoinThreadFragment(), "joinThread").j();
        } else {
            this.chatInputFragment = (ChatInputFragment) getChildFragmentManager().m0("chatInput");
            this.vvChatMainFragment = (VVChatMainFragment) getChildFragmentManager().m0(FRAGMENT_TAG_VV_MAIN);
        }
        ChatInputFragment chatInputFragment = this.chatInputFragment;
        if (chatInputFragment != null) {
            chatInputFragment.addPanelHideListener(this.panelHideListener);
        }
        VVChatMainFragment vVChatMainFragment = this.vvChatMainFragment;
        if (vVChatMainFragment != null) {
            vVChatMainFragment.setContentVisibilityChangeListener(this);
        }
        if (bundle == null) {
            chatThread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        } else {
            ChatThread chatThread2 = (ChatThread) JacksonUtils.readAs(bundle.getString("thread"), ChatThread.class);
            this.statSend = bundle.getBoolean("statSend");
            this.isChatFullInfoFetched = bundle.getBoolean("isChatFullInfoFetched");
            this.isLiveChannelShow = bundle.getBoolean("isLiveChannelShow");
            chatThread = chatThread2;
        }
        if (chatThread != null) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.ChatFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    if (ChatFragment.this.isDestoryed()) {
                        return;
                    }
                    ChatFragment.this.setThread(chatThread);
                }
            });
            stat(chatThread);
        }
        View viewFindViewById4 = view.findViewById(R.id.chat_organizer_trans_frame);
        this.organizerTransContainer = viewFindViewById4;
        this.keyboardObserver = SoftKeyboard.observeKeyboard(viewFindViewById4, new Callback<Boolean>() { // from class: com.narvii.chat.ChatFragment.5
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                ChatFragment.this.isKeyboardVisible = bool.booleanValue();
                ChatFragment.this.updateOrganizerTransView();
                ChatFragment.this.updateChatListFrame();
            }
        });
        sendGetThreadReqeust();
    }

    public void tryShowLiveChannelFloating() {
        FloatingPermissionUtils floatingPermissionUtils;
        if (!isEmbedFragment() && this.vvChatMainFragment != null && (floatingPermissionUtils = this.floatingPermissionUtils) != null && floatingPermissionUtils.canDrawOverlays() && shouldShowLiveChannelFloating()) {
            this.vvChatMainFragment.showFloatingWindow();
        }
    }

    @Override // com.narvii.chat.ThreadConfigChangeListener
    public void viewOnlyChanged(boolean z6) {
        if (getThread() != null && getThread().isViewOnly() != z6) {
            getThread().setViewOnly(z6);
            setThread(getThread());
            updateChatThreadInList();
        }
    }

    public void setThread(ChatThread chatThread) {
        setThread(chatThread, false);
    }
}
