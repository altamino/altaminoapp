package com.narvii.chat;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatMessageItem;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.detail.ThreadDetailFragment;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.input.ChatInputFragment;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.organizer.ClaimOrganizerTransFragment;
import com.narvii.chat.profile.ChatUserInfoEntryHelper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.influencer.FanClub;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.ReverseAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.media.SaveImageFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.ChatCoHostNotificationWrapper;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.monetization.sticker.StickerDetailFragment;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.services.EventLogProfileService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.wallet.MembershipService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatListFragment extends NVListFragment implements ChatService.ChatMessageReceptor, ChatService.VideoMessageProgressChangeListener, ChatMessageItem.onMentionedUserClickedListener, ThreadInfoHost, ChatMessageItem.OnSeeAllClickedListener {
    private AccountService accountService;
    Adapter adapter;
    AudioHelper audioHelper;
    private boolean avatarLongClicked;
    private ChatHelper chatHelper;
    ChatPreferenceHelper chatPreferenceHelper;
    private ChatRequestHelper chatRequestHelper;
    ChatService chatService;
    private ChatThread chatThread;
    private ConfigService configService;
    private ChatBubble curBubble;
    private User currentUser;
    private GlobalChatHelper globalChatHelper;
    private Date inviteMessageDate;
    private long lastTimeWelcomeMessageShow;
    private LocalBroadcastManager lbm;
    MembershipService membershipService;
    protected String myUid;
    private int ndcId;
    private int newMessageCount;
    private View newMsgContainer;
    private PushService pushService;
    private boolean reachBottom;
    StickerHelper stickerHelper;
    boolean touchMoved;
    private TextView tvNewMessage;
    private Date welcomeMessageDate;
    boolean scrollToBottomFlag = true;
    private HashMap<String, String> bubbleIdMapper = new HashMap<>();
    private HashMap<String, Integer> bubbleVersionMapper = new HashMap<>();
    private final PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.chat.ChatListFragment.1
        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(PushPayload pushPayload) {
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(PushPayload pushPayload) {
            return ChatListFragment.this.isActive() && Utils.isEqualsNotNull(pushPayload.threadId, ChatListFragment.this.getThreadId()) && !ChatListFragment.this.isCallMessageRelatedPush(pushPayload);
        }
    };
    AbsListView.OnScrollListener scrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.chat.ChatListFragment.3
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            int i4 = i3 - (i + i2);
            ChatListFragment.this.reachBottom = i4 < 1;
            if (i4 < ChatListFragment.this.newMessageCount) {
                ChatListFragment.this.newMessageCount = i4;
            }
            ChatListFragment.this.updateNewMessage();
        }
    };
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.chat.ChatListFragment.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BubbleService.ACTION_BUBBLE_READY.equals(intent.getAction())) {
                Log.d("BubbleService", "receive bubble ready broadcast " + intent.getStringExtra("bid"));
                Adapter adapter = ChatListFragment.this.adapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                ChatListFragment chatListFragment = ChatListFragment.this;
                chatListFragment.currentUser = chatListFragment.accountService.getUserProfile();
                ChatListFragment chatListFragment2 = ChatListFragment.this;
                chatListFragment2.myUid = chatListFragment2.accountService.getUserId();
                Adapter adapter2 = ChatListFragment.this.adapter;
                if (adapter2 != null) {
                    adapter2.notifyDataSetChanged();
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowWelcomeMessage() {
        return false;
    }

    protected boolean addTopMargin() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean shouldInitSwipeRefresh() {
        return true;
    }

    static /* synthetic */ int access$308(ChatListFragment chatListFragment) {
        int i = chatListFragment.newMessageCount;
        chatListFragment.newMessageCount = i + 1;
        return i;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountService = (AccountService) getService("account");
        this.currentUser = this.accountService.getUserProfile();
        this.myUid = this.accountService.getUserId();
        this.chatHelper = new ChatHelper(getContext());
        this.chatRequestHelper = new ChatRequestHelper(this);
        this.chatService = (ChatService) getService("chat");
        this.chatService.addThreadLvelRecptor(getThreadId(), this);
        this.chatService.addVideoMessagePostListener(getThreadId(), this);
        this.pushService = (PushService) getService("push");
        this.pushService.addPushListener(this.pushListener);
        this.configService = (ConfigService) getService("config");
        this.ndcId = this.configService.getCommunityId();
        getActivity().setVolumeControlStream(3);
        this.audioHelper = new AudioHelper(this);
        this.globalChatHelper = new GlobalChatHelper(this);
        this.membershipService = (MembershipService) getService("membership");
        this.stickerHelper = new StickerHelper(this);
        this.chatPreferenceHelper = new ChatPreferenceHelper(this);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", "Chat Thread");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commitAllowingStateLoss();
        }
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(BubbleService.ACTION_BUBBLE_READY));
        this.lbm.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.lastTimeWelcomeMessageShow = this.chatPreferenceHelper.getLastWelcomeMessageShowTime(getThreadId());
        if (TextUtils.isEmpty(getThreadId())) {
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.chatService.removeThreadLevelReceptor(getThreadId(), this);
        this.pushService.removePushListener(this.pushListener);
        this.lbm.unregisterReceiver(this.receiver);
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.removeVideoMessagePostListener(getThreadId(), this);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.accountService == null) {
            this.accountService = (AccountService) getService("account");
        }
        this.myUid = this.accountService.getUserId();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (shouldShowWelcomeMessage()) {
            this.chatPreferenceHelper.saveLastWelcomeMessageShowTime(getThreadId(), System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCallMessageRelatedPush(PushPayload pushPayload) {
        if (pushPayload == null) {
            return false;
        }
        return pushPayload.isCallCancelMessage() || pushPayload.isTimeoutMessage() || pushPayload.isDeclineMessage() || pushPayload.isCallInviteType();
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.chat_list_layout, viewGroup, false);
    }

    @Override // com.narvii.chat.core.ChatService.VideoMessageProgressChangeListener
    public void onProgressUpdate(int i, int i2) {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        ReverseAdapter reverseAdapter = new ReverseAdapter(this);
        Adapter adapterMainAdapter = mainAdapter();
        this.adapter = adapterMainAdapter;
        reverseAdapter.setAdapter(adapterMainAdapter);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (addTopMargin()) {
            mergeAdapter.addAdapter(new TopMarginAdapter());
        }
        mergeAdapter.addAdapter(reverseAdapter, true);
        mergeAdapter.addAdapter(new MarginAdapter(this, 3));
        return mergeAdapter;
    }

    protected Adapter mainAdapter() {
        return new Adapter();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.chat.ChatListFragment.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 2 || ChatListFragment.this.avatarLongClicked) {
                    if (ChatListFragment.this.avatarLongClicked && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3 || motionEvent.getAction() == 0)) {
                        ChatListFragment.this.avatarLongClicked = false;
                    }
                } else {
                    ChatListFragment chatListFragment = ChatListFragment.this;
                    chatListFragment.touchMoved = true;
                    Fragment fragmentFindFragmentByTag = chatListFragment.getFragmentManager().findFragmentByTag("chatInput");
                    if (fragmentFindFragmentByTag != null) {
                        ((ChatInputFragment) fragmentFindFragmentByTag).hideKeyboardAndPanel();
                    }
                }
                return false;
            }
        });
        if (listView instanceof ChatListView) {
            ((ChatListView) listView).setRevertedSwipeRefreshEnabled(this.isSwipeRefreshEnabled);
        }
        listView.setOnScrollListener(this.scrollListener);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.tvNewMessage = (TextView) view.findViewById(R.id.new_message);
        TextView textView = this.tvNewMessage;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.-$$Lambda$ChatListFragment$u0VDTx5HVm7YGtTqJitSTgHjFQE
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onViewCreated$1$ChatListFragment(view2);
                }
            });
        }
        this.newMsgContainer = view.findViewById(R.id.new_message_container);
        SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setReversed(true);
        }
    }

    public /* synthetic */ void lambda$onViewCreated$1$ChatListFragment(View view) {
        getListView().post(new Runnable() { // from class: com.narvii.chat.-$$Lambda$ChatListFragment$fHj2MxLZ-GBNIGhhJtJBcRm5aCw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$0$ChatListFragment();
            }
        });
    }

    public /* synthetic */ void lambda$null$0$ChatListFragment() {
        getListView().setSelection(getListView().getCount() - 1);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        this.chatThread = getThread();
        this.curBubble = this.chatThread.getCurBubble(this.accountService.getUserId());
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public void scrollToBottom() {
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter == null || getListView() == null) {
            return;
        }
        try {
            int count = listAdapter.getCount();
            if (count > 1) {
                getListView().setSelection(count - 1);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityAvailability() {
        return !this.globalChatHelper.tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), false, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.ChatListFragment.4
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public ChatThread followingChatToJoin() {
                return null;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i, boolean z) {
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ChatListFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i);
                ChatListFragment.this.startActivity(intent);
                return true;
            }
        });
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
        if (isAdded()) {
            this.adapter.resetChatList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNewMessage() {
        View view;
        String str;
        if (this.tvNewMessage == null || (view = this.newMsgContainer) == null) {
            return;
        }
        int i = this.newMessageCount;
        if (i <= 0) {
            this.newMessageCount = 0;
            view.setVisibility(8);
            return;
        }
        view.setVisibility(0);
        if (i == 1) {
            this.tvNewMessage.setText(R.string.new_message_1);
            return;
        }
        TextView textView = this.tvNewMessage;
        Object[] objArr = new Object[1];
        if (i > 500) {
            str = "500+ ";
        } else {
            str = i + " ";
        }
        objArr[0] = str;
        textView.setText(getString(R.string.new_message_n, objArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00ee  */
    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNewChatMessage(int r10, com.narvii.chat.util.ChatMessageDto r11) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.ChatListFragment.onNewChatMessage(int, com.narvii.chat.util.ChatMessageDto):void");
    }

    @Override // com.narvii.chat.ChatMessageItem.onMentionedUserClickedListener
    public void onMentionedUserClicked(String str) {
        if (checkCommunityAvailability()) {
            final User user = new User();
            user.uid = str;
            new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(getThread(), user, "Chat Thread", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc
                @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                public final void onClicked(int i, NVObject nVObject) {
                    this.f$0.lambda$onMentionedUserClicked$2$ChatListFragment(user, i, nVObject);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onMentionedUserClicked$2$ChatListFragment(User user, int i, NVObject nVObject) {
        if (i == 2) {
            Intent intent = UserProfileFragment.intent(this, user);
            if (intent == null) {
                return;
            }
            intent.putExtra("Source", "Chat Thread");
            startActivity(intent);
            return;
        }
        if (i == 1) {
            if (nVObject instanceof User) {
                user = (User) nVObject;
            }
            startChat(user);
        }
    }

    @Override // com.narvii.chat.ChatMessageItem.OnSeeAllClickedListener
    public void onSeeAllClicked(ChatMessage chatMessage) {
        showNormalMessageDetail(chatMessage);
    }

    class TopMarginAdapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 901924L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public TopMarginAdapter() {
            super(ChatListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view != null) {
                return view;
            }
            View view2 = new View(getContext());
            view2.setLayoutParams(new AbsListView.LayoutParams(-1, ((int) Utils.dpToPx(getContext(), 64.0f)) + ChatListFragment.this.getActionBarOverlaySize() + ChatListFragment.this.getStatusBarOverlaySize()));
            return view2;
        }
    }

    protected class Adapter extends NVPagedAdapter<ChatMessage, MessageListResponse> implements NotificationListener {
        HashSet<String> existedMessageId;
        ArrayList<ChatMessage> l;

        /* JADX INFO: Access modifiers changed from: private */
        public void replyToMessage(ChatMessage chatMessage) {
            if (chatMessage == null) {
                return;
            }
            Fragment fragmentFindFragmentByTag = ChatListFragment.this.getFragmentManager().findFragmentByTag("chatInput");
            if (fragmentFindFragmentByTag instanceof ChatInputFragment) {
                ((ChatInputFragment) fragmentFindFragmentByTag).onReplybyLongClick(chatMessage);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 15;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
        }

        public Adapter() {
            super(ChatListFragment.this);
            this.existedMessageId = new HashSet<>();
            this.paginationType = 1;
            if (ChatListFragment.this.configService.getCommunityId() == 0) {
                setDarkTheme(true);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            super.resetList();
            this.existedMessageId.clear();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatMessage> filterResponseList(List<ChatMessage> list, int i) {
            List<ChatMessage> listFilter = new FilterHelper(this).keepBlockedUser().keepForLeaderAndCurator().filter(list);
            if (listFilter == null) {
                return null;
            }
            Iterator<ChatMessage> it = listFilter.iterator();
            while (it.hasNext()) {
                ChatMessage next = it.next();
                if (next.isStickerMessage()) {
                    Sticker stickerInfo = next.getStickerInfo();
                    StickerCollection stickerCollectionSummary = ChatListFragment.this.chatHelper.getStickerCollectionSummary(next);
                    if ((stickerInfo != null && stickerInfo.isDisabled()) || (stickerCollectionSummary != null && stickerCollectionSummary.isDisabled())) {
                        it.remove();
                    }
                }
                if (i != 2 && this.existedMessageId.contains(next.id())) {
                    it.remove();
                }
                this.existedMessageId.add(next.id());
                if (next.isHidden) {
                    it.remove();
                }
            }
            return listFilter;
        }

        void appendNewChatMessage(ChatMessage chatMessage) {
            int i;
            ChatMessage mappedMessage;
            if (isCurrentChatMessageAccessible(chatMessage)) {
                boolean z = true;
                if (!TextUtils.isEmpty(chatMessage.id()) && this.existedMessageId.contains(chatMessage.id()) && (chatMessage.type != 100 || ((mappedMessage = getMappedMessage(chatMessage.messageId)) != null && mappedMessage.type == chatMessage.type))) {
                    return;
                }
                boolean zIsEqualsNotNull = Utils.isEqualsNotNull(chatMessage.uid(), ChatListFragment.this.accountService.getUserId());
                if (!ChatListFragment.this.reachBottom && !zIsEqualsNotNull && chatMessage.isUserContentMessage()) {
                    ChatListFragment.access$308(ChatListFragment.this);
                    ChatListFragment.this.updateNewMessage();
                }
                if (!TextUtils.isEmpty(chatMessage.id())) {
                    this.existedMessageId.add(chatMessage.id());
                }
                ChatListFragment.this.chatHelper.appendNewMessageWithSort(rawList(), chatMessage);
                if (chatMessage.getBubbleId() != null) {
                    ChatListFragment.this.bubbleIdMapper.put(chatMessage.uid(), chatMessage.getBubbleId());
                    ChatListFragment.this.bubbleVersionMapper.put(chatMessage.uid(), Integer.valueOf(chatMessage.getBubbleVersion()));
                } else {
                    ChatListFragment.this.bubbleIdMapper.remove(chatMessage.uid());
                    ChatListFragment.this.bubbleVersionMapper.remove(chatMessage.uid());
                }
                boolean z2 = chatMessage.type == 116;
                if (!Utils.isEqualsNotNull(ChatListFragment.this.getThread() == null ? null : ChatListFragment.this.getThread().uid(), chatMessage.uid()) || ((i = chatMessage.type) != 102 && i != 101)) {
                    z = false;
                }
                if (z || z2) {
                    ClaimOrganizerTransFragment.sendGetThreadRequest(this, ChatListFragment.this.getThreadId());
                }
                notifyDataSetChanged();
            }
        }

        private ChatMessage getMappedMessage(String str) {
            if (rawList() == null) {
                return null;
            }
            for (ChatMessage chatMessage : rawList()) {
                if (Utils.isEquals(str, chatMessage.id())) {
                    return chatMessage;
                }
            }
            return null;
        }

        private boolean isCurrentChatMessageAccessible(ChatMessage chatMessage) {
            if (chatMessage == null) {
                return false;
            }
            if (chatMessage.isStickerMessage()) {
                Sticker stickerInfo = chatMessage.getStickerInfo();
                StickerCollection stickerCollectionSummary = ChatListFragment.this.chatHelper.getStickerCollectionSummary(chatMessage);
                if ((stickerInfo != null && stickerInfo.isDisabled()) || (stickerCollectionSummary != null && stickerCollectionSummary.isDisabled())) {
                    return false;
                }
            }
            return chatMessage.isAccessibleByUser(ChatListFragment.this.currentUser);
        }

        void resetChatList() {
            abortRequests();
            rawList().clear();
            resetList();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0124  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0149  */
        /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
        @Override // com.narvii.list.NVPagedAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onPageResponse(com.narvii.util.http.ApiRequest r10, com.narvii.chat.MessageListResponse r11, int r12) {
            /*
                Method dump skipped, instructions count: 335
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.ChatListFragment.Adapter.onPageResponse(com.narvii.util.http.ApiRequest, com.narvii.chat.MessageListResponse, int):void");
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            FanClub fanClub;
            String str;
            Object obj = notification.obj;
            if ((obj instanceof ChatCoHostNotificationWrapper) && ((ChatCoHostNotificationWrapper) obj).chatThread != null) {
                ChatListFragment.this.chatThread = ((ChatCoHostNotificationWrapper) obj).chatThread;
                notifyDataSetChanged();
            }
            if ((notification.obj instanceof ChatMessage) && Utils.isEqualsNotNull(ChatListFragment.this.getThreadId(), notification.parentId)) {
                String str2 = notification.action;
                if (str2 == "update") {
                    ChatMessage chatMessage = (ChatMessage) notification.obj;
                    if (list() == null) {
                        return;
                    }
                    int i = 0;
                    while (true) {
                        if (i >= list().size()) {
                            break;
                        }
                        ChatMessage chatMessage2 = list().get(i);
                        if (Utils.isEqualsNotNull(Integer.valueOf(list().get(i).clientRefId), Integer.valueOf(chatMessage.clientRefId)) && (str = chatMessage.messageId) != null) {
                            chatMessage2.messageId = str;
                            break;
                        }
                        i++;
                    }
                    if (chatMessage._status == 0 && !TextUtils.isEmpty(chatMessage.messageId)) {
                        this.existedMessageId.add(chatMessage.messageId);
                    }
                    notifyDataSetChanged();
                } else if (str2 == "delete") {
                    ChatListFragment.this.chatService.onNotification(notification);
                    editList(notification, false);
                } else {
                    notifyDataSetChanged();
                }
            }
            Object obj2 = notification.obj;
            if (obj2 instanceof ChatBubbleNotificationWrapper) {
                ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = (ChatBubbleNotificationWrapper) obj2;
                String str3 = chatBubbleNotificationWrapper.threadId;
                String strId = chatBubbleNotificationWrapper.id();
                boolean z = chatBubbleNotificationWrapper.action == 1;
                if (Utils.isEqualsNotNull(str3, ChatListFragment.this.getThreadId()) || chatBubbleNotificationWrapper.applyForAll) {
                    updateThreadBubble(chatBubbleNotificationWrapper.chatBubble, z);
                    return;
                }
                if (Utils.isEqualsNotNull(strId, ChatListFragment.this.curBubble == null ? null : ChatListFragment.this.curBubble.id())) {
                    ChatListFragment.this.curBubble = chatBubbleNotificationWrapper.chatBubble;
                    if (chatBubbleNotificationWrapper.action == 1 && !chatBubbleNotificationWrapper.chatBubble.isActivated) {
                        ChatListFragment.this.curBubble = null;
                    }
                    Adapter adapter = ChatListFragment.this.adapter;
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                return;
            }
            if (obj2 instanceof ChatBubble) {
                if (Utils.isEqualsNotNull(notification.id, ChatListFragment.this.curBubble != null ? ChatListFragment.this.curBubble.id() : null)) {
                    updateThreadBubble((ChatBubble) notification.obj);
                }
            } else if (obj2 instanceof FanClub) {
                if (!Utils.isEqualsNotNull(((FanClub) obj2).targetUid, ChatListFragment.this.getThread() == null ? null : ChatListFragment.this.getThread().uid()) || isMeAccessibleToThisChat() || (fanClub = ((AccountService) getService("account")).getFanClub(((FanClub) notification.obj).targetUid)) == null || !fanClub.isActive()) {
                    return;
                }
                refresh(0, null);
            }
        }

        public boolean isMeAccessibleToThisChat() {
            if (ChatListFragment.this.getParentFragment() instanceof ChatFragment) {
                return ((ChatFragment) ChatListFragment.this.getParentFragment()).isMeAccessibleToThisChat();
            }
            if (ChatListFragment.this.getThread() != null && ChatListFragment.this.getThread().type != 2) {
                return true;
            }
            if (Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), ChatListFragment.this.getThread() == null ? null : ChatListFragment.this.getThread().uid())) {
                return true;
            }
            return (ChatListFragment.this.getThread() == null || ChatListFragment.this.getThread().needHidden) ? false : true;
        }

        private void updateThreadBubble(ChatBubble chatBubble) {
            updateThreadBubble(chatBubble, false);
        }

        private void updateThreadBubble(ChatBubble chatBubble, boolean z) {
            if (ChatListFragment.this.getThread() == null) {
                return;
            }
            ChatThread thread = ChatListFragment.this.getThread();
            if (thread.chatBubbles == null) {
                thread.chatBubbles = new HashMap();
            }
            if (ChatListFragment.this.accountService.getUserId() != null) {
                if (!chatBubble.isActivated && z) {
                    chatBubble = new ChatBubble();
                    chatBubble.id = "default";
                }
                thread.chatBubbles.put(ChatListFragment.this.accountService.getUserId(), chatBubble);
            }
            ChatListFragment.this.curBubble = chatBubble;
            Adapter adapter = ChatListFragment.this.adapter;
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
        }

        private ChatMessage tryFixMessageCreatedTime(ChatMessage chatMessage) {
            Date outBoundCreatedTime = ChatListFragment.this.chatService.getOutBoundCreatedTime(chatMessage);
            if (outBoundCreatedTime == null) {
                outBoundCreatedTime = chatMessage.createdTime;
            }
            chatMessage.createdTime = outBoundCreatedTime;
            return chatMessage;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            Date date;
            List<? extends ChatMessage> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList<>();
            } else {
                this.l = new ArrayList<>();
                ChatListFragment chatListFragment = ChatListFragment.this;
                List<ChatMessage> outboundMessages = chatListFragment.chatService.getOutboundMessages(chatListFragment.getThreadId());
                if (outboundMessages.size() > 0) {
                    SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                    long j = 0;
                    for (ChatMessage chatMessage : listRawList) {
                        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(chatMessage.uid(), ChatListFragment.this.myUid);
                        int i = chatMessage.clientRefId;
                        if (i != 0 && zIsEqualsNotNull) {
                            sparseBooleanArray.put(i, true);
                        }
                        Date date2 = tryFixMessageCreatedTime(chatMessage).createdTime;
                        long time = date2 == null ? 0L : date2.getTime();
                        if (j == 0 || time < j) {
                            j = time;
                        }
                    }
                    this.l.addAll(listRawList);
                    for (ChatMessage chatMessage2 : outboundMessages) {
                        if (!sparseBooleanArray.get(chatMessage2.clientRefId) && (date = chatMessage2.createdTime) != null && date.getTime() > j) {
                            this.l.add(tryFixMessageCreatedTime(chatMessage2));
                        }
                    }
                    Collections.sort(this.l, ChatHelper.Companion.getMESSAGE_COMPARATOR());
                } else {
                    this.l.addAll(listRawList);
                }
                insertTimestamps(this.l, EventLogProfileService.EVENT_LOG_PROFILE_RATE_CONTROL, isEnd());
                if (ChatListFragment.this.shouldShowWelcomeMessage()) {
                    insertWelcomeMessage(this.l);
                }
                insertInviteMessage(this.l);
            }
            super.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public int removeIdEqualsObject(ChatMessage chatMessage) {
            return Utils.removeIdEqualsObject(this._list, chatMessage);
        }

        int insertTimestamps(ArrayList<ChatMessage> arrayList, long j, boolean z) {
            int i = 0;
            if (arrayList.size() == 0) {
                return 0;
            }
            Date date = arrayList.get(arrayList.size() - 1).createdTime;
            long time = date == null ? 0L : date.getTime();
            for (int size = arrayList.size() - 2; size >= 0; size--) {
                ChatMessage chatMessage = arrayList.get(size);
                Date date2 = chatMessage.createdTime;
                if (date2 != null) {
                    long time2 = date2.getTime();
                    if (time2 >= time + j) {
                        ChatMessage chatMessage2 = new ChatMessage();
                        chatMessage2.type = ChatMessage.TYPE_TIMESTAMP;
                        chatMessage2.createdTime = chatMessage.createdTime;
                        arrayList.add(size + 1, chatMessage2);
                        i++;
                    }
                    time = time2;
                }
            }
            if (!z || date == null) {
                return i;
            }
            ChatMessage chatMessage3 = new ChatMessage();
            chatMessage3.type = ChatMessage.TYPE_TIMESTAMP;
            chatMessage3.createdTime = date;
            arrayList.add(chatMessage3);
            return i + 1;
        }

        void insertWelcomeMessage(ArrayList<ChatMessage> arrayList) {
            Date date;
            if (ChatListFragment.this.welcomeMessageDate != null) {
                date = ChatListFragment.this.welcomeMessageDate;
            } else if (arrayList.size() == 0) {
                date = new Date(SystemClock.elapsedRealtime());
                ChatListFragment.this.welcomeMessageDate = date;
            } else {
                date = arrayList.get(0).createdTime;
                ChatListFragment.this.welcomeMessageDate = date;
            }
            ChatMessage chatMessage = new ChatMessage();
            chatMessage.content = "";
            if (ChatListFragment.this.getThread() != null && ChatListFragment.this.getThread().owner() != null && !TextUtils.isEmpty(ChatListFragment.this.getThread().owner().nickname())) {
                chatMessage.content += ChatListFragment.this.getThread().owner().nickname() + ": ";
            }
            chatMessage.content += com.narvii.util.text.TextUtils.compactContent(ChatListFragment.this.getThread().content);
            chatMessage.type = ChatMessage.TYPE_WELCOME_MESSAGE;
            chatMessage.author = ChatListFragment.this.getThread().owner();
            chatMessage.createdTime = date;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).createdTime.getTime() <= date.getTime()) {
                    arrayList.add(i, chatMessage);
                    return;
                }
            }
        }

        void insertInviteMessage(ArrayList<ChatMessage> arrayList) {
            Date date;
            if (ChatListFragment.this.getThread() == null || ChatListFragment.this.getThread().type != 2 || ChatListFragment.this.getThread().membersCount >= 5 || ChatListFragment.this.getThread().author == null) {
                return;
            }
            ChatListFragment chatListFragment = ChatListFragment.this;
            if (Utils.isEqualsNotNull(chatListFragment.myUid, chatListFragment.getThread().author.uid) && ChatListFragment.this.getThread().condition == 1) {
                if (ChatListFragment.this.inviteMessageDate != null) {
                    date = ChatListFragment.this.inviteMessageDate;
                } else if (arrayList.size() == 0) {
                    date = new Date(SystemClock.elapsedRealtime());
                    ChatListFragment.this.inviteMessageDate = date;
                } else {
                    date = arrayList.get(0).createdTime;
                    ChatListFragment.this.inviteMessageDate = date;
                }
                ChatMessage chatMessage = new ChatMessage();
                chatMessage.content = "";
                chatMessage.type = ChatMessage.TYPE_INVITE_MESSAGE;
                chatMessage.author = ChatListFragment.this.getThread().owner();
                chatMessage.createdTime = date;
                if (arrayList.size() == 0) {
                    arrayList.add(chatMessage);
                    return;
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    if (arrayList.get(i).createdTime.getTime() <= date.getTime()) {
                        arrayList.add(i, chatMessage);
                        return;
                    }
                }
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<? extends ChatMessage> list() {
            return this.l;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public long getItemId(int i) {
            Object item = getItem(i);
            if (item instanceof ChatMessage) {
                int i2 = ((ChatMessage) item).clientRefId;
                return i2 == 0 ? r0.hashCode() : i2;
            }
            return super.getItemId(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ChatMessage> dataType() {
            return ChatMessage.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MessageListResponse> responseType() {
            return MessageListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread/" + ChatListFragment.this.getThreadId() + "/message");
            builderPath.param("v", 2);
            if (z) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            ChatMessage chatMessage = (ChatMessage) obj;
            int i = chatMessage.type;
            if ((i == 101 || i == 103) && !TextUtils.isEmpty(chatMessage.content)) {
                i = 0;
            }
            if (i == 0) {
                if (!chatMessage.isAccessibleByUser(null)) {
                    return 7;
                }
                boolean zHasMedia = chatMessage.hasMedia();
                TextUtils.isEmpty(chatMessage.content);
                if (zHasMedia) {
                    return chatMessage.media().isVideo() ? 2 : 3;
                }
                if (chatMessage.hasLinkSnippet()) {
                    return 13;
                }
                return chatMessage.isReplyMessage() ? 14 : 1;
            }
            if (i == 1) {
                return 5;
            }
            if (i == 2) {
                return 8;
            }
            if (i == 3) {
                String str = chatMessage.mediaValue;
                return (str == null || !str.startsWith("ndcsticker://e/")) ? 11 : 10;
            }
            if (i == 4) {
                return 2;
            }
            switch (i) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                case 108:
                case 109:
                case 110:
                case 111:
                case 112:
                case 113:
                case 114:
                case 115:
                case 116:
                    return 4;
                default:
                    switch (i) {
                        case 122:
                        case 123:
                        case 124:
                        case 125:
                        case 126:
                            return 4;
                        default:
                            switch (i) {
                                case ChatMessage.TYPE_TIMESTAMP /* 65281 */:
                                    return 6;
                                case ChatMessage.TYPE_WELCOME_MESSAGE /* 65282 */:
                                    return 9;
                                case ChatMessage.TYPE_INVITE_MESSAGE /* 65283 */:
                                    return 12;
                                default:
                                    return 0;
                            }
                    }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
        @Override // com.narvii.list.NVPagedAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected android.view.View getItemView(java.lang.Object r11, android.view.View r12, android.view.ViewGroup r13) {
            /*
                Method dump skipped, instructions count: 738
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.ChatListFragment.Adapter.getItemView(java.lang.Object, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) throws IllegalStateException {
            Intent intent;
            if (obj instanceof ChatMessage) {
                final ChatMessage chatMessage = (ChatMessage) obj;
                if (view2 == null) {
                    return false;
                }
                if (view2.getId() == R.id.chat_bubble_container || view2.getId() == R.id.chat_bubble) {
                    if (chatMessage.mediaType == 100 && chatMessage.mediaValue != null) {
                        openImageDetail(chatMessage);
                        return true;
                    }
                    if (chatMessage.hasMedia() && chatMessage.media().isVideo()) {
                        startActivity(NVFullScreenVideoActivity.intent(chatMessage.media(), chatMessage, (Class<? extends NVFragment>) OptionMenuFragment.class));
                        return true;
                    }
                    if (chatMessage.mediaType == 110 && chatMessage.mediaValue != null && chatMessage._status == 0) {
                        if (!chatMessage.isAccessibleByUser(null)) {
                            Intent intent2 = FragmentWrapperActivity.intent(ChatMessageItemDetailFragment.class);
                            intent2.putExtra(ChatMessageItemDetailFragment.KEY_CHAT_MESSAGE, JacksonUtils.writeAsString(chatMessage));
                            intent2.putExtra("seeAll", false);
                            intent2.putExtra("showDisabled", true);
                            startActivity(intent2);
                            return true;
                        }
                        ChatListFragment.this.audioHelper.handleChatBubbleClick(chatMessage, view, true);
                        return true;
                    }
                    if (!chatMessage.isAccessibleByUser(null)) {
                        ChatListFragment.this.showNormalMessageDetail(chatMessage);
                        return true;
                    }
                    if ((view instanceof ChatMessageItem) && ((ChatMessageItem) view).isExpandable()) {
                        ChatListFragment.this.showNormalMessageDetail(chatMessage);
                        return true;
                    }
                } else {
                    if (view2.getId() == R.id.avatar) {
                        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("MessageUserIcon").object(chatMessage != null ? chatMessage.author : null).send();
                        if (!ChatListFragment.this.checkCommunityAvailability()) {
                            return true;
                        }
                        new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(ChatListFragment.this.getThread(), chatMessage.author, "Chat Thread", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.ChatListFragment.Adapter.3
                            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                            public void onClicked(int i2, NVObject nVObject) {
                                if (i2 == 2) {
                                    Intent intent3 = UserProfileFragment.intent(((NVAdapter) Adapter.this).context, chatMessage.author);
                                    if (intent3 == null) {
                                        return;
                                    }
                                    intent3.putExtra("Source", "Chat Thread");
                                    Adapter.this.startActivity(intent3);
                                    return;
                                }
                                if (i2 == 1) {
                                    ChatListFragment.this.startChat(nVObject instanceof User ? (User) nVObject : chatMessage.author);
                                } else if (i2 == 3) {
                                    new FlagReportOptionDialog.Builder(((NVAdapter) Adapter.this).context).nvObject(chatMessage).build().show();
                                }
                            }
                        });
                        return true;
                    }
                    if (view2.getId() == R.id.chat_sticker || view2.getId() == R.id.mood_sticker) {
                        openStickerChatMessage(chatMessage);
                    } else {
                        if (view2.getId() == R.id.chat_resend) {
                            if (chatMessage._status == 2 && chatMessage._errorCode == 4200 && ChatListFragment.this.membershipService.hasMemberShipExpired()) {
                                MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(ChatListFragment.this);
                                membershipExpireDialog.source = chatMessage.isStickerMessage() ? "Sticker (Dialog)" : "Chat Bubble (Dialog)";
                                membershipExpireDialog.show();
                                return true;
                            }
                            ChatListFragment.this.resend(chatMessage);
                            return true;
                        }
                        if (view2.getId() == R.id.text) {
                            if (chatMessage.type == 101) {
                                if (!ChatListFragment.this.checkCommunityAvailability() || (intent = UserProfileFragment.intent(this, chatMessage.author)) == null) {
                                    return true;
                                }
                                intent.putExtra("Source", "Chat Thread");
                                startActivity(intent);
                                return true;
                            }
                        } else if (chatMessage.type == 65283) {
                            LogEvent.clickWildcardBuilder(this).area("InviteButton").send();
                            Intent intent3 = FragmentWrapperActivity.intent(ThreadDetailFragment.class);
                            intent3.putExtra("id", ChatListFragment.this.getThreadId());
                            intent3.putExtra(ThreadDetailFragment.KEY_OPEN_INVITE_LIST, true);
                            intent3.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(ChatListFragment.this.getThread()));
                            intent3.putExtra("customFinishAnimIn", R.anim.activity_push_right_in);
                            intent3.putExtra("customFinishAnimOut", R.anim.activity_push_right_out);
                            intent3.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, ChatListFragment.this.getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT));
                            intent3.putExtra(RtcService.KEY_COMMUNITY, ChatListFragment.this.getStringParam(RtcService.KEY_COMMUNITY));
                            startActivity(intent3);
                            ChatListFragment.this.getActivity().overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_left_out);
                            return true;
                        }
                    }
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showMessageDetailPage(ChatMessage chatMessage) {
            if (chatMessage == null) {
                return;
            }
            if (chatMessage.isStickerMessage()) {
                openStickerChatMessage(chatMessage);
                return;
            }
            if (chatMessage.mediaType == 100 && chatMessage.mediaValue != null) {
                openImageDetail(chatMessage);
            } else if (!chatMessage.hasMedia() || !chatMessage.media().isVideo()) {
                ChatListFragment.this.showNormalMessageDetail(chatMessage);
            } else {
                startActivity(NVFullScreenVideoActivity.intent(chatMessage.media(), chatMessage, (Class<? extends NVFragment>) OptionMenuFragment.class));
            }
        }

        private void openImageDetail(ChatMessage chatMessage) {
            Media media = new Media();
            media.type = chatMessage.mediaType;
            media.url = chatMessage.mediaValue;
            ArrayList arrayList = new ArrayList();
            arrayList.add(media);
            Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
            intent.putExtra("parent", JacksonUtils.writeAsString(chatMessage));
            intent.putExtra("parentClass", ChatMessage.class);
            intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
            intent.putExtra("showCheckHD", true);
            if (!chatMessage.isAccessibleByUser(null)) {
                intent.putExtra("hideShareBar", true);
            }
            startActivity(intent);
        }

        private void openStickerChatMessage(ChatMessage chatMessage) {
            Intent intent = FragmentWrapperActivity.intent(StickerDetailFragment.class);
            intent.putExtra("threadId", ChatListFragment.this.getThreadId());
            intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
            startActivity(intent);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            StickerCollection stickerCollectionSummary;
            StickerCollection stickerCollectionSummary2;
            User user;
            Fragment fragmentFindFragmentByTag;
            if (obj instanceof ChatMessage) {
                final ChatMessage chatMessage = (ChatMessage) obj;
                String userId = ChatListFragment.this.accountService.getUserId();
                if (view2 != null && view2.getId() == R.id.avatar) {
                    if (ChatListFragment.this.chatThread != null && ChatListFragment.this.chatThread.type != 0 && (user = chatMessage.author) != null && !TextUtils.equals(user.uid(), userId) && (fragmentFindFragmentByTag = ChatListFragment.this.getFragmentManager().findFragmentByTag("chatInput")) != null) {
                        ChatListFragment.this.avatarLongClicked = true;
                        ChatInputFragment chatInputFragment = (ChatInputFragment) fragmentFindFragmentByTag;
                        chatInputFragment.onUserMentionedByLongClick(chatMessage.author);
                        chatInputFragment.scrollChatListToBottom();
                    }
                    return true;
                }
                int i2 = chatMessage.type;
                boolean z = !TextUtils.isEmpty(chatMessage.messageId) && (!TextUtils.isEmpty(chatMessage.content) || chatMessage.hasMedia()) && (i2 == 0 || i2 == 3 || i2 == 4 || i2 == 2);
                boolean z2 = (chatMessage.isStickerMessage() || chatMessage.mediaType != 100 || TextUtils.isEmpty(chatMessage.mediaValue)) ? false : true;
                boolean z3 = (TextUtils.isEmpty(chatMessage.content) || chatMessage.hasMedia()) ? false : true;
                User user2 = chatMessage.author;
                boolean zIsEquals = Utils.isEquals(user2 == null ? null : user2.uid, userId);
                ChatThread thread = ChatListFragment.this.getThread();
                boolean z4 = zIsEquals || (thread != null && thread.isHostOrCoHost(userId) && thread.type == 2);
                final ArrayList arrayList = new ArrayList();
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                if (z3) {
                    arrayList.add("copy");
                    actionSheetDialog.addItem(R.string.copy, false);
                }
                if (z) {
                    arrayList.add("reply");
                    actionSheetDialog.addItem(R.string.reply, false);
                }
                if (chatMessage.isStickerMessage()) {
                    Sticker stickerInfo = chatMessage.getStickerInfo();
                    if (stickerInfo == null || (!stickerInfo.isLocalMood() && stickerInfo.isAccessibleByUser(null) && (stickerCollectionSummary2 = new ChatHelper(getContext()).getStickerCollectionSummary(chatMessage)) != null && ChatListFragment.this.stickerHelper.isStickerCollectionValid(stickerCollectionSummary2) && stickerCollectionSummary2.isAccessibleByUser(null))) {
                        arrayList.add("saveAsFavorite");
                        actionSheetDialog.addItem(R.string.add_sticker, false);
                    }
                }
                arrayList.add("detail");
                actionSheetDialog.addItem(R.string.check_detail, false);
                if (z2) {
                    arrayList.add("saveImage");
                    actionSheetDialog.addItem(R.string.save_image, false);
                }
                if (z4) {
                    arrayList.add("delete");
                    actionSheetDialog.addItem(R.string.delete, true);
                }
                User user3 = chatMessage.author;
                if (!Utils.isEquals(user3 != null ? user3.uid : null, userId)) {
                    if (!chatMessage.isStickerMessage() || (stickerCollectionSummary = ChatListFragment.this.chatHelper.getStickerCollectionSummary(chatMessage)) == null || stickerCollectionSummary.canBeFlagged()) {
                        arrayList.add("flag");
                        actionSheetDialog.addItem(R.string.flag_for_review, false);
                    }
                }
                if (ChatListFragment.this.accountService.getUserProfile() != null && ChatListFragment.this.accountService.getUserProfile().isCurator()) {
                    arrayList.add("advanced");
                    actionSheetDialog.addItem(R.string.advanced, false);
                }
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.ChatListFragment.Adapter.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        Object obj2 = arrayList.get(i3);
                        if ("copy".equals(obj2)) {
                            try {
                                ((ClipboardManager) Adapter.this.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", chatMessage.content));
                                return;
                            } catch (Exception unused) {
                                return;
                            }
                        }
                        if ("saveImage".equals(obj2)) {
                            SaveImageFragment saveImageFragment = (SaveImageFragment) ChatListFragment.this.getFragmentManager().findFragmentByTag("saveImage");
                            if (saveImageFragment == null) {
                                saveImageFragment = new SaveImageFragment();
                                ChatListFragment.this.getFragmentManager().beginTransaction().add(saveImageFragment, "saveImage").commit();
                                ChatListFragment.this.getFragmentManager().executePendingTransactions();
                            }
                            saveImageFragment.save(chatMessage.media());
                            return;
                        }
                        if ("delete".equals(obj2)) {
                            ChatListFragment.this.delete(chatMessage);
                            return;
                        }
                        if ("flag".equals(obj2)) {
                            if (ChatListFragment.this.checkCommunityAvailability()) {
                                new FlagReportOptionDialog.Builder(((NVAdapter) Adapter.this).context).nvObject(chatMessage).build().show();
                                return;
                            }
                            return;
                        }
                        if ("advanced".equals(obj2)) {
                            new AdvancedOptionDialog.Builder(ChatListFragment.this).nvObject(chatMessage).build().show();
                            return;
                        }
                        if ("detail".equals(obj2)) {
                            Adapter.this.showMessageDetailPage(chatMessage);
                            return;
                        }
                        if ("saveAsFavorite".equals(obj2)) {
                            if (ChatListFragment.this.checkCommunityJoined()) {
                                StickerHelper stickerHelper = new StickerHelper(ChatListFragment.this);
                                Sticker stickerInfo2 = chatMessage.getStickerInfo();
                                if (stickerInfo2 != null) {
                                    stickerHelper.saveAsFavorite(stickerInfo2);
                                    return;
                                } else {
                                    stickerHelper.saveAsFavorite(chatMessage.mediaValue);
                                    return;
                                }
                            }
                            return;
                        }
                        if (!"reply".equals(obj2) || ChatListFragment.this.chatThread == null || chatMessage.author == null) {
                            return;
                        }
                        Fragment fragmentFindFragmentByTag2 = ChatListFragment.this.getFragmentManager().findFragmentByTag("chatInput");
                        if (fragmentFindFragmentByTag2 instanceof ChatInputFragment) {
                            ((ChatInputFragment) fragmentFindFragmentByTag2).onReplybyLongClick(chatMessage);
                        }
                    }
                });
                actionSheetDialog.show();
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityJoined() {
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent());
            return false;
        }
        final int communityId = ((ConfigService) getService("config")).getCommunityId();
        return this.globalChatHelper.checkCommunityJoined(communityId, new Callback<Boolean>() { // from class: com.narvii.chat.ChatListFragment.5
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                Intent intentCommunityDetailIntent = ChatListFragment.this.globalChatHelper.communityDetailIntent(Integer.valueOf(communityId), null);
                if (ChatListFragment.this.getActivity() != null) {
                    ChatListFragment.this.startActivity(intentCommunityDetailIntent);
                }
            }
        });
    }

    public void resend(ChatMessage chatMessage) {
        int i;
        if (chatMessage._status != 2 || (i = chatMessage.clientRefId) == 0) {
            return;
        }
        this.chatService.retryPost(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startChat(User user) {
        ChatInviteFragment chatInviteFragment;
        if (this.accountService.hasAccount()) {
            ConfigService configService = (ConfigService) getService("config");
            ChatHelper chatHelper = new ChatHelper(getContext());
            if ((configService.getCommunityId() != 0 || chatHelper.canChatWithCurrentUserInGlobalLevel(user)) && (chatInviteFragment = (ChatInviteFragment) getFragmentManager().findFragmentByTag("chatInvite")) != null) {
                chatInviteFragment.startChat(user.uid());
                return;
            }
            return;
        }
        Intent intent = new Intent("chat");
        intent.putExtra("uid", user.uid());
        ensureLogin(intent);
    }

    public void delete(ChatMessage chatMessage) {
        this.chatRequestHelper.sendDeleteChatMessageRequest(getThreadId(), chatMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNormalMessageDetail(ChatMessage chatMessage) {
        Intent intent = FragmentWrapperActivity.intent(MessageContentDetailFragment.class);
        intent.putExtra("threadId", getThreadId());
        intent.putExtra(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(chatMessage));
        intent.putExtra("thread", JacksonUtils.writeAsString(getThread()));
        startActivity(intent);
    }

    public void openMiniProfile(final User user) {
        if (user != null && checkCommunityAvailability()) {
            new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(getThread(), user, "Chat Thread", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.ChatListFragment.7
                @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                public void onClicked(int i, NVObject nVObject) {
                    if (i == 2) {
                        Intent intent = UserProfileFragment.intent(ChatListFragment.this, user);
                        if (intent == null) {
                            return;
                        }
                        intent.putExtra("Source", "Chat Thread");
                        ChatListFragment.this.startActivity(intent);
                        return;
                    }
                    if (i == 1) {
                        ChatListFragment.this.startChat(user);
                    } else if (i == 3) {
                        new FlagReportOptionDialog.Builder(ChatListFragment.this).nvObject(user).miniProfile(true).build().show();
                    }
                }
            });
        }
    }
}
