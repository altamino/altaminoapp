package com.narvii.chat.global.chat;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.GlobalChatsFragment;
import com.narvii.chat.global.chat.RecommendChatAdapter;
import com.narvii.chat.global.chat.RecommendChatAdapter.RecommendHeaderAdapter;
import com.narvii.chat.hangout.HangoutListFragment;
import com.narvii.chat.thread.MyChatManagePopUp;
import com.narvii.chat.thread.ThreadHelper;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.IMyChatList;
import com.narvii.chat.util.MyChatListDelegate;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.MyCommunityListService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.prefs.UserProfilePrivilegeFragment;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommunityChatFragment.kt */
/* loaded from: classes2.dex */
public final class CommunityChatFragment extends NVListFragment implements ChatService.ChatMessageReceptor, RecommendChatAdapter.RecommendChatRefresh {
    private HashMap _$_findViewCache;
    public AccountService accountService;
    public Adapter adapter;
    public ChatHelper chatHelper;
    public ChatRequestHelper chatRequestHelper;
    public ChatService chatService;
    private CommunityIconView communityIconView;
    private View communityLayout;
    private TextView communityTitle;
    private MyChatManagePopUp myChatManagePopUp;
    public MyCommunityListService myCommunityService;
    private int ndcId;
    private boolean needRefreshWhenResume;
    private PopupWindow popupWindow;
    private final CommunityChatFragment$pushListener$1 pushListener = new PushService.PushListener() { // from class: com.narvii.chat.global.chat.CommunityChatFragment$pushListener$1
        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(PushPayload payload) {
            Intrinsics.checkParameterIsNotNull(payload, "payload");
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(PushPayload payload) {
            Intrinsics.checkParameterIsNotNull(payload, "payload");
            return payload.ndcId == this.this$0.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID) && this.this$0.isActive() && payload.isChat() && !this.this$0.isAnnouncementMsg(payload);
        }
    };
    private PushService pushService;
    private RecommendChatAdapter recommendAdapter;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
    }

    public final int getNdcId() {
        return this.ndcId;
    }

    public final void setNdcId(int i) {
        this.ndcId = i;
    }

    public final ChatHelper getChatHelper() {
        ChatHelper chatHelper = this.chatHelper;
        if (chatHelper != null) {
            return chatHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatHelper");
        throw null;
    }

    public final void setChatHelper(ChatHelper chatHelper) {
        Intrinsics.checkParameterIsNotNull(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final ChatRequestHelper getChatRequestHelper() {
        ChatRequestHelper chatRequestHelper = this.chatRequestHelper;
        if (chatRequestHelper != null) {
            return chatRequestHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatRequestHelper");
        throw null;
    }

    public final void setChatRequestHelper(ChatRequestHelper chatRequestHelper) {
        Intrinsics.checkParameterIsNotNull(chatRequestHelper, "<set-?>");
        this.chatRequestHelper = chatRequestHelper;
    }

    public final ChatService getChatService() {
        ChatService chatService = this.chatService;
        if (chatService != null) {
            return chatService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatService");
        throw null;
    }

    public final void setChatService(ChatService chatService) {
        Intrinsics.checkParameterIsNotNull(chatService, "<set-?>");
        this.chatService = chatService;
    }

    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    public final void setAccountService(AccountService accountService) {
        Intrinsics.checkParameterIsNotNull(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final MyChatManagePopUp getMyChatManagePopUp() {
        return this.myChatManagePopUp;
    }

    public final void setMyChatManagePopUp(MyChatManagePopUp myChatManagePopUp) {
        this.myChatManagePopUp = myChatManagePopUp;
    }

    public final Adapter getAdapter() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public final void setAdapter(Adapter adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final CommunityIconView getCommunityIconView() {
        return this.communityIconView;
    }

    public final void setCommunityIconView(CommunityIconView communityIconView) {
        this.communityIconView = communityIconView;
    }

    public final View getCommunityLayout() {
        return this.communityLayout;
    }

    public final void setCommunityLayout(View view) {
        this.communityLayout = view;
    }

    public final TextView getCommunityTitle() {
        return this.communityTitle;
    }

    public final void setCommunityTitle(TextView textView) {
        this.communityTitle = textView;
    }

    public final MyCommunityListService getMyCommunityService() {
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService != null) {
            return myCommunityListService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
        throw null;
    }

    public final void setMyCommunityService(MyCommunityListService myCommunityListService) {
        Intrinsics.checkParameterIsNotNull(myCommunityListService, "<set-?>");
        this.myCommunityService = myCommunityListService;
    }

    public final PopupWindow getPopupWindow() {
        return this.popupWindow;
    }

    public final void setPopupWindow(PopupWindow popupWindow) {
        this.popupWindow = popupWindow;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("myCommunityList");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"myCommunityList\")");
        this.myCommunityService = (MyCommunityListService) service;
        this.ndcId = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            this.chatHelper = new ChatHelper(context);
            this.chatRequestHelper = new ChatRequestHelper(this);
            Object service2 = getService("chat");
            Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"chat\")");
            this.chatService = (ChatService) service2;
            ChatService chatService = this.chatService;
            if (chatService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatService");
                throw null;
            }
            chatService.addCommunityLevelReceptor(this.ndcId, this);
            Object service3 = getService("account");
            Intrinsics.checkExpressionValueIsNotNull(service3, "getService(\"account\")");
            this.accountService = (AccountService) service3;
            this.pushService = (PushService) getService("push");
            this.adapter = new Adapter(this);
            return;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.removeCommunityLevelReceptor(this.ndcId, this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return this.ndcId == 0 ? "Global" : "Community";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (z) {
            PushService pushService = this.pushService;
            if (pushService != null) {
                pushService.addPushListener(this.pushListener);
            }
            if (this.needRefreshWhenResume) {
                Adapter adapter = this.adapter;
                if (adapter != null) {
                    adapter.refresh(256, null);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
            }
            return;
        }
        PushService pushService2 = this.pushService;
        if (pushService2 != null) {
            pushService2.removePushListener(this.pushListener);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            return (-1) * context.getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int intParam = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, -1);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (intParam == 0) {
            mergeAdapter.addAdapter(new CreateAdapter(this));
        }
        Adapter adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        mergeAdapter.addAdapter(adapter);
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(mergeAdapter, 2);
        EmptyAdapter emptyAdapter = new EmptyAdapter(this, this);
        Adapter adapter2 = this.adapter;
        if (adapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        emptyAdapter.setAdapter(adapter2);
        final RecommendChatAdapter recommendChatAdapter = new RecommendChatAdapter(this, this.ndcId);
        this.recommendAdapter = recommendChatAdapter;
        MergeAdapter mergeAdapter2 = new MergeAdapter(this) { // from class: com.narvii.chat.global.chat.CommunityChatFragment$createAdapter$mergeAdapter$1
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return recommendChatAdapter.isListShown() || super.isListShown();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i, Callback<Integer> callback) {
                super.refresh(i, callback);
                recommendChatAdapter.refresh(i, callback);
            }
        };
        mergeAdapter2.addAdapter(dividerAdapter);
        mergeAdapter2.addAdapter(emptyAdapter);
        mergeAdapter2.addAdapter(recommendChatAdapter.new RecommendHeaderAdapter());
        mergeAdapter2.addAdapter(recommendChatAdapter);
        if (intParam == 0) {
            mergeAdapter2.addAdapter(new ExplorerGlobalChatAdapter(this));
        } else {
            mergeAdapter2.addAdapter(new ExplorChatAdapter(this));
        }
        return mergeAdapter2;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_community_chat, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setOverScrollMode(2);
        ListView listView = getListView();
        Adapter adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        listView.setOnItemLongClickListener(adapter);
        this.communityIconView = (CommunityIconView) view.findViewById(R.id.community_icon);
        this.communityTitle = (TextView) view.findViewById(R.id.community_title);
        this.communityLayout = view.findViewById(R.id.community_info_Layout);
        final Community community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        CommunityIconView communityIconView = this.communityIconView;
        if (communityIconView != null) {
            communityIconView.setCommunity(community);
        }
        TextView textView = this.communityTitle;
        if (textView != null) {
            textView.setText(community != null ? community.name : null);
        }
        View view2 = this.communityLayout;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.CommunityChatFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    if (community != null) {
                        LogEvent.clickBuilder(CommunityChatFragment.this, ActSemantic.aminoEnter).object(community).area("CommunityBar").send();
                        CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(CommunityChatFragment.this);
                        communityLaunchHelper.needUpdateCommunity = false;
                        Community community2 = community;
                        communityLaunchHelper.launch(community2.id, community2);
                    }
                }
            });
        }
        if (this.ndcId == 0) {
            View viewFindViewById = setEmptyView(R.layout.empty_global_chat).findViewById(R.id.more_aminos);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.CommunityChatFragment.onViewCreated.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        LogEvent.clickBuilder(CommunityChatFragment.this, ActSemantic.listViewEnter).area("MoreChats").send();
                        CommunityChatFragment.this.startActivity(FragmentWrapperActivity.intent(GlobalChatsFragment.class));
                    }
                });
            }
        } else {
            View emptyView = setEmptyView(R.layout.empty_community_chat);
            View viewFindViewById2 = emptyView.findViewById(R.id.empty_retry);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.CommunityChatFragment.onViewCreated.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        CommunityChatFragment.this.getAdapter().refresh(0, null);
                    }
                });
            }
            View viewFindViewById3 = emptyView.findViewById(R.id.explore_chat);
            if (viewFindViewById3 != null) {
                viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.CommunityChatFragment.onViewCreated.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        LogEvent.clickBuilder(CommunityChatFragment.this, ActSemantic.listViewEnter).area("MoreChats").send();
                        Intent intent = FragmentWrapperActivity.intent(HangoutListFragment.class);
                        intent.putExtra("__communityId", CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
                        CommunityChatFragment.this.startActivity(intent);
                    }
                });
            }
        }
        ((TintButton) _$_findCachedViewById(com.narvii.amino.R.id.setting)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.CommunityChatFragment.onViewCreated.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                CommunityChatFragment communityChatFragment = CommunityChatFragment.this;
                communityChatFragment.setMyChatManagePopUp(new MyChatManagePopUp((TintButton) communityChatFragment._$_findCachedViewById(com.narvii.amino.R.id.setting), false) { // from class: com.narvii.chat.global.chat.CommunityChatFragment.onViewCreated.5.1
                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public void onClickManage() {
                        Intent intent = FragmentWrapperActivity.intent(ChatBatchDeletionFragment.class);
                        intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, CommunityChatFragment.this.getNdcId());
                        intent.putExtra("__communityId", CommunityChatFragment.this.getNdcId());
                        CommunityChatFragment.this.startActivity(intent);
                    }

                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public void onClickInbound() {
                        Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
                        intent.putExtra("title", CommunityChatFragment.this.getString(R.string.allow_inbound_chat_requests));
                        intent.putExtra("privilegeKey", User.CHAT);
                        if (CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID) != 0) {
                            intent.putExtra("__communityId", CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
                        } else {
                            intent.putExtra("subTitle", CommunityChatFragment.this.getString(R.string.global));
                        }
                        CommunityChatFragment.this.startActivity(intent);
                    }

                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public boolean isManageEnabled() {
                        return (CommunityChatFragment.this.getAdapter() == null || CommunityChatFragment.this.getAdapter().isEmpty()) ? false : true;
                    }
                });
                MyChatManagePopUp myChatManagePopUp = CommunityChatFragment.this.getMyChatManagePopUp();
                if (myChatManagePopUp != null) {
                    myChatManagePopUp.show();
                }
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView list, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        super.onListViewCreated(list, bundle);
        list.setDivider(null);
        list.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        if (this.ndcId == 0) {
            ChatService chatService = this.chatService;
            if (chatService != null) {
                chatService.queryThreadCheckInfo(0, true);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("chatService");
                throw null;
            }
        }
    }

    @Override // com.narvii.chat.global.chat.RecommendChatAdapter.RecommendChatRefresh
    public void refreshRecommendChat() {
        RecommendChatAdapter recommendChatAdapter = this.recommendAdapter;
        if (recommendChatAdapter != null) {
            recommendChatAdapter.refreshWithRateControl();
        }
    }

    /* compiled from: CommunityChatFragment.kt */
    public final class CreateAdapter extends AdriftAdapter {
        private final NVContext ctx;

        public CreateAdapter(NVContext nVContext) {
            super(nVContext);
            this.ctx = nVContext;
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_create_chat, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.item…hat, parent, convertView)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            new ThreadHelper(this).showCreateChatDialog(null, null, null, true, null);
            return true;
        }
    }

    /* compiled from: CommunityChatFragment.kt */
    public final class EmptyAdapter extends NVPagerStatusAdapter {
        final /* synthetic */ CommunityChatFragment this$0;

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int emptyLayoutId() {
            return R.layout.empty_inner_chat;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyAdapter(CommunityChatFragment communityChatFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = communityChatFragment;
        }
    }

    /* compiled from: CommunityChatFragment.kt */
    public final class Adapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener, IMyChatList {
        private final NVContext ctx;
        private User curUser;
        private List<? extends ChatThread> l;
        private MyChatListDelegate myChatListDelegate;

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatRoomList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(ThreadUpdateObject updateObject) {
            Intrinsics.checkParameterIsNotNull(updateObject, "updateObject");
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.ctx = nVContext;
            setDarkTheme(true);
            AccountService accountService = (AccountService) getService("account");
            if (CommunityChatFragment.this.getNdcId() != 0) {
                this.curUser = CommunityChatFragment.this.getMyCommunityService().getUserProfile(CommunityChatFragment.this.getNdcId()) == null ? accountService.getUserProfile(CommunityChatFragment.this.getNdcId()) : CommunityChatFragment.this.getMyCommunityService().getUserProfile(CommunityChatFragment.this.getNdcId());
            } else {
                this.curUser = accountService.getUserProfile(0);
            }
            this.myChatListDelegate = new MyChatListDelegate(this, this, true, this.curUser, false, 16, null);
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        public final User getCurUser() {
            return this.curUser;
        }

        public final void setCurUser(User user) {
            this.curUser = user;
        }

        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        public final void setMyChatListDelegate(MyChatListDelegate myChatListDelegate) {
            this.myChatListDelegate = myChatListDelegate;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (this.mainIpc == null) {
                addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
            }
        }

        public final List<ChatThread> getL$Amino_bundle() {
            return this.l;
        }

        public final void setL$Amino_bundle(List<? extends ChatThread> list) {
            this.l = list;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ChatThread> dataType() {
            return ChatThread.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderCommunityId = ApiRequest.builder().chatServer().path("/chat/thread").param("type", "joined-me").communityId(CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
            builderCommunityId.tag(Boolean.valueOf(z));
            ApiRequest apiRequestBuild = builderCommunityId.build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<ChatThread> list() {
            return this.l;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            this.l = super.rawList();
            Collections.sort(this.l, ChatHelper.Companion.getTHREAD_COMPARATOR());
            super.notifyDataSetChanged();
            MyChatManagePopUp myChatManagePopUp = CommunityChatFragment.this.getMyChatManagePopUp();
            if (myChatManagePopUp != null) {
                myChatManagePopUp.updateManageButtonStatus();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
            }
            return ThreadListItem.getViewType(CommunityChatFragment.this.getChatHelper(), (ChatThread) obj);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatThread> filterResponseList(List<ChatThread> list, int i) {
            return list != null ? list : new ArrayList();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof ChatThread)) {
                obj = null;
            }
            ChatThread chatThread = (ChatThread) obj;
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                return myChatListDelegate.getChatThreadItemCell(this, chatThread, view, viewGroup);
            }
            return null;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public ChatThread getMappedThreadFromList(String str) {
            for (ChatThread chatThread : super.rawList()) {
                if (Utils.isEqualsNotNull(chatThread.threadId, str)) {
                    return chatThread;
                }
            }
            return null;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            int intParam = CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNotification(notification, Integer.valueOf(intParam));
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
                if (myChatListDelegate == null) {
                    return true;
                }
                MyChatListDelegate.openMyChat$default(myChatListDelegate, (ChatThread) obj, Integer.valueOf(CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)), null, 4, null);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
                if (myChatListDelegate == null) {
                    return true;
                }
                MyChatListDelegate.onLongClick$default(myChatListDelegate, (ChatThread) obj, Integer.valueOf(CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)), CommunityChatFragment.this.getChildFragmentManager(), false, 8, null);
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(ChatMessage message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            if (!CommunityChatFragment.this.isActive()) {
                CommunityChatFragment.this.needRefreshWhenResume = true;
            } else {
                refresh(256, null);
            }
        }

        public final void onNewMessage(ChatMessage message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNewChatMessage(message);
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
            if (!CommunityChatFragment.this.isActive()) {
                CommunityChatFragment.this.needRefreshWhenResume = true;
            } else {
                refresh(256, null);
            }
        }
    }

    /* compiled from: CommunityChatFragment.kt */
    public final class ExplorChatAdapter extends AdriftAdapter {
        public ExplorChatAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_explorer_community_chat, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.item…hat, parent, convertView)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("MoreChats").send();
            Intent intent = FragmentWrapperActivity.intent(HangoutListFragment.class);
            intent.putExtra("__communityId", CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
            startActivity(intent);
            return true;
        }
    }

    /* compiled from: CommunityChatFragment.kt */
    public static final class ExplorerGlobalChatAdapter extends AdriftAdapter {
        public ExplorerGlobalChatAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_explorer_global_chat, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.item…hat, parent, convertView)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            ViewUtils.setMontserratExtraBoldTypeface((TextView) viewCreateView.findViewById(R.id.more_aminos));
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("MoreChats").send();
            startActivity(FragmentWrapperActivity.intent(GlobalChatsFragment.class));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAnnouncementMsg(PushPayload pushPayload) {
        return pushPayload.msgType == 121;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        ChatMessage chatMessage;
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
        Adapter adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        if (adapter == null || (chatMessage = chatMessageDto.chatMessage) == null) {
            return;
        }
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        Intrinsics.checkExpressionValueIsNotNull(chatMessage, "chatMessageDto.chatMessage");
        adapter.onNewMessage(chatMessage);
    }
}
