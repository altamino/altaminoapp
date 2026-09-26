package com.narvii.chat.global.chat;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.databinding.FragmentCommunityChatBinding;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.GlobalChatsFragment;
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
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.SearchPrefsHelper;
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
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class CommunityChatFragment extends NVListFragment implements ChatService.ChatMessageReceptor, RecommendChatAdapter.RecommendChatRefresh {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(CommunityChatFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "CommunityChatFragment";
    public AccountService accountService;
    public Adapter adapter;
    public ChatHelper chatHelper;
    public ChatRequestHelper chatRequestHelper;
    public ChatService chatService;

    @Nullable
    private CommunityIconView communityIconView;

    @Nullable
    private View communityLayout;

    @Nullable
    private TextView communityTitle;

    @Nullable
    private MyChatManagePopUp myChatManagePopUp;
    public MyCommunityListService myCommunityService;
    private int ndcId;
    private boolean needRefreshWhenResume;

    @Nullable
    private PopupWindow popupWindow;

    @Nullable
    private PushService pushService;

    @Nullable
    private RecommendChatAdapter recommendAdapter;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, CommunityChatFragment$binding$2.INSTANCE);

    @NotNull
    private final CommunityChatFragment$pushListener$1 pushListener = new PushService.PushListener() { // from class: com.narvii.chat.global.chat.CommunityChatFragment$pushListener$1
        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(@NotNull PushPayload payload) {
            t.j(payload, "payload");
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(@NotNull PushPayload payload) {
            t.j(payload, "payload");
            return payload.ndcId == this.this$0.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID) && this.this$0.isActive() && payload.isChat() && !this.this$0.isAnnouncementMsg(payload);
        }
    };

    public final class Adapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener, IMyChatList {

        @Nullable
        private final NVContext ctx;

        @Nullable
        private User curUser;

        @Nullable
        private List<? extends ChatThread> l;

        @Nullable
        private MyChatListDelegate myChatListDelegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<ChatThread> dataType() {
            return ChatThread.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "ChatRoomList";
        }

        @Nullable
        public final NVContext getCtx() {
            return this.ctx;
        }

        @Nullable
        public final User getCurUser() {
            return this.curUser;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Nullable
        public final List<ChatThread> getL$Amino_bundle() {
            return this.l;
        }

        @Nullable
        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        public List<ChatThread> list() {
            return this.l;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(@NotNull ThreadUpdateObject updateObject) {
            t.j(updateObject, "updateObject");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<? extends ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        public final void setCurUser(@Nullable User user) {
            this.curUser = user;
        }

        public final void setL$Amino_bundle(@Nullable List<? extends ChatThread> list) {
            this.l = list;
        }

        public final void setMyChatListDelegate(@Nullable MyChatListDelegate myChatListDelegate) {
            this.myChatListDelegate = myChatListDelegate;
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

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected List<ChatThread> filterResponseList(@Nullable List<ChatThread> list, int i10) {
            return list == null ? new ArrayList() : list;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(@Nullable Object obj) {
            t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            return ThreadListItem.getViewType(CommunityChatFragment.this.getChatHelper(), (ChatThread) obj);
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
            ChatThread chatThread = obj instanceof ChatThread ? (ChatThread) obj : null;
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                return myChatListDelegate.getChatThreadItemCell(this, chatThread, view, viewGroup);
            }
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof ChatThread)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate == null) {
                return true;
            }
            MyChatListDelegate.openMyChat$default(myChatListDelegate, (ChatThread) obj, Integer.valueOf(CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)), null, 4, null);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof ChatThread)) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate == null) {
                return true;
            }
            MyChatListDelegate.onLongClick$default(myChatListDelegate, (ChatThread) obj, Integer.valueOf(CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)), CommunityChatFragment.this.getChildFragmentManager(), false, 8, null);
            return true;
        }

        public final void onNewMessage(@NotNull ChatMessage message) {
            t.j(message, "message");
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNewChatMessage(message);
            }
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(@Nullable Notification notification) {
            int intParam = CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNotification(notification, Integer.valueOf(intParam));
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(@NotNull ChatMessage message) {
            t.j(message, "message");
            if (CommunityChatFragment.this.isActive()) {
                refresh(256, null);
            } else {
                CommunityChatFragment.this.needRefreshWhenResume = true;
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
            if (CommunityChatFragment.this.isActive()) {
                refresh(256, null);
            } else {
                CommunityChatFragment.this.needRefreshWhenResume = true;
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderCommunityId = ApiRequest.builder().chatServer().path("/chat/thread").param("type", "joined-me").communityId(CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
            builderCommunityId.tag(Boolean.valueOf(z6));
            ApiRequest apiRequestBuild = builderCommunityId.build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.chat.util.IMyChatList
        @Nullable
        public ChatThread getMappedThreadFromList(@Nullable String str) {
            for (ChatThread chatThread : super.rawList()) {
                if (Utils.isEqualsNotNull(chatThread.threadId, str)) {
                    return chatThread;
                }
            }
            return null;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends ChatThread> listRawList = super.rawList();
            this.l = listRawList;
            try {
                Collections.sort(listRawList, ChatHelper.Companion.getTHREAD_COMPARATOR());
            } catch (Exception e) {
                Log.e(CommunityChatFragment.TAG, "notifyDataSetChanged: failed to sort thread list", e);
            }
            super.notifyDataSetChanged();
            MyChatManagePopUp myChatManagePopUp = CommunityChatFragment.this.getMyChatManagePopUp();
            if (myChatManagePopUp != null) {
                myChatManagePopUp.updateManageButtonStatus();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (this.mainIpc == null) {
                addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class CreateAdapter extends AdriftAdapter {

        @Nullable
        private final NVContext ctx;

        @Nullable
        public final NVContext getCtx() {
            return this.ctx;
        }

        public CreateAdapter(NVContext nVContext) {
            super(nVContext);
            this.ctx = nVContext;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            new ThreadHelper(this).showCreateChatDialog(null, null, null, true, null);
            return true;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_create_chat, viewGroup, view);
            t.i(viewCreateView, "createView(...)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    public final class EmptyAdapter extends NVPagerStatusAdapter {
        final /* synthetic */ CommunityChatFragment this$0;

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int emptyLayoutId() {
            return R.layout.empty_inner_chat;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyAdapter(@NotNull CommunityChatFragment communityChatFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = communityChatFragment;
        }
    }

    public final class ExplorChatAdapter extends AdriftAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public ExplorChatAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("MoreChats").send();
            Intent intent = FragmentWrapperActivity.intent(HangoutListFragment.class);
            intent.putExtra("__communityId", CommunityChatFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_explorer_community_chat, viewGroup, view);
            t.i(viewCreateView, "createView(...)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    public static final class ExplorerGlobalChatAdapter extends AdriftAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("MoreChats").send();
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(GlobalChatsFragment.class));
            return true;
        }

        public ExplorerGlobalChatAdapter(@Nullable NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_explorer_global_chat, viewGroup, view);
            t.i(viewCreateView, "createView(...)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            ViewUtils.setMontserratExtraBoldTypeface((TextView) viewCreateView.findViewById(R.id.more_aminos));
            return viewCreateView;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public final CommunityIconView getCommunityIconView() {
        return this.communityIconView;
    }

    @Nullable
    public final View getCommunityLayout() {
        return this.communityLayout;
    }

    @Nullable
    public final TextView getCommunityTitle() {
        return this.communityTitle;
    }

    @Nullable
    public final MyChatManagePopUp getMyChatManagePopUp() {
        return this.myChatManagePopUp;
    }

    public final int getNdcId() {
        return this.ndcId;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return this.ndcId == 0 ? "global_chat" : "community_chat";
    }

    @Nullable
    public final PopupWindow getPopupWindow() {
        return this.popupWindow;
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

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final void setAdapter(@NotNull Adapter adapter) {
        t.j(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final void setChatHelper(@NotNull ChatHelper chatHelper) {
        t.j(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final void setChatRequestHelper(@NotNull ChatRequestHelper chatRequestHelper) {
        t.j(chatRequestHelper, "<set-?>");
        this.chatRequestHelper = chatRequestHelper;
    }

    public final void setChatService(@NotNull ChatService chatService) {
        t.j(chatService, "<set-?>");
        this.chatService = chatService;
    }

    public final void setCommunityIconView(@Nullable CommunityIconView communityIconView) {
        this.communityIconView = communityIconView;
    }

    public final void setCommunityLayout(@Nullable View view) {
        this.communityLayout = view;
    }

    public final void setCommunityTitle(@Nullable TextView textView) {
        this.communityTitle = textView;
    }

    public final void setMyChatManagePopUp(@Nullable MyChatManagePopUp myChatManagePopUp) {
        this.myChatManagePopUp = myChatManagePopUp;
    }

    public final void setMyCommunityService(@NotNull MyCommunityListService myCommunityListService) {
        t.j(myCommunityListService, "<set-?>");
        this.myCommunityService = myCommunityListService;
    }

    public final void setNdcId(int i10) {
        this.ndcId = i10;
    }

    public final void setPopupWindow(@Nullable PopupWindow popupWindow) {
        this.popupWindow = popupWindow;
    }

    private final FragmentCommunityChatBinding getBinding() {
        return (FragmentCommunityChatBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAnnouncementMsg(PushPayload pushPayload) {
        return pushPayload.msgType == 121;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(Community community, CommunityChatFragment this$0, View view) {
        t.j(this$0, "this$0");
        if (community != null) {
            LogEvent.clickBuilder(this$0, ActSemantic.aminoEnter).object(community).area("CommunityBar").send();
            CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this$0);
            communityLaunchHelper.needUpdateCommunity = false;
            communityLaunchHelper.launch(community.id, community);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(CommunityChatFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.listViewEnter).area("MoreChats").send();
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, FragmentWrapperActivity.intent(GlobalChatsFragment.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(CommunityChatFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.getAdapter().refresh(0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(CommunityChatFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.listViewEnter).area("MoreChats").send();
        Intent intent = FragmentWrapperActivity.intent(HangoutListFragment.class);
        intent.putExtra("__communityId", this$0.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(final CommunityChatFragment this$0, View view) {
        t.j(this$0, "this$0");
        final TintButton tintButton = this$0.getBinding().setting;
        MyChatManagePopUp myChatManagePopUp = new MyChatManagePopUp(tintButton) { // from class: com.narvii.chat.global.chat.CommunityChatFragment$onViewCreated$5$1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.chat.thread.MyChatManagePopUp
            public boolean isManageEnabled() {
                return (this.this$0.getAdapter() == null || this.this$0.getAdapter().isEmpty()) ? false : true;
            }

            @Override // com.narvii.chat.thread.MyChatManagePopUp
            public void onClickInbound() {
                Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
                intent.putExtra("title", this.this$0.getString(R.string.allow_inbound_chat_requests));
                intent.putExtra("privilegeKey", User.CHAT);
                if (this.this$0.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID) != 0) {
                    intent.putExtra("__communityId", this.this$0.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
                } else {
                    intent.putExtra("subTitle", this.this$0.getString(R.string.global));
                }
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this.this$0, intent);
            }

            @Override // com.narvii.chat.thread.MyChatManagePopUp
            public void onClickManage() {
                Intent intent = FragmentWrapperActivity.intent(ChatBatchDeletionFragment.class);
                intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, this.this$0.getNdcId());
                intent.putExtra("__communityId", this.this$0.getNdcId());
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this.this$0, intent);
            }
        };
        this$0.myChatManagePopUp = myChatManagePopUp;
        myChatManagePopUp.show();
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        int intParam = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, -1);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (intParam == 0) {
            mergeAdapter.addAdapter(new CreateAdapter(this));
        }
        mergeAdapter.addAdapter(getAdapter());
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(mergeAdapter, 2);
        EmptyAdapter emptyAdapter = new EmptyAdapter(this, this);
        emptyAdapter.setAdapter(getAdapter());
        final RecommendChatAdapter recommendChatAdapter = new RecommendChatAdapter(this, this.ndcId, new CommunityChatFragment$createAdapter$recommendAdapter$1(this));
        this.recommendAdapter = recommendChatAdapter;
        MergeAdapter mergeAdapter2 = new MergeAdapter(this) { // from class: com.narvii.chat.global.chat.CommunityChatFragment$createAdapter$mergeAdapter$1
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return recommendChatAdapter.isListShown() || super.isListShown();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i10, @Nullable Callback<Integer> callback) {
                super.refresh(i10, callback);
                recommendChatAdapter.refresh(i10, callback);
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

    @NotNull
    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        t.B("accountService");
        return null;
    }

    @NotNull
    public final Adapter getAdapter() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        t.B("adapter");
        return null;
    }

    @NotNull
    public final ChatHelper getChatHelper() {
        ChatHelper chatHelper = this.chatHelper;
        if (chatHelper != null) {
            return chatHelper;
        }
        t.B("chatHelper");
        return null;
    }

    @NotNull
    public final ChatRequestHelper getChatRequestHelper() {
        ChatRequestHelper chatRequestHelper = this.chatRequestHelper;
        if (chatRequestHelper != null) {
            return chatRequestHelper;
        }
        t.B("chatRequestHelper");
        return null;
    }

    @NotNull
    public final ChatService getChatService() {
        ChatService chatService = this.chatService;
        if (chatService != null) {
            return chatService;
        }
        t.B("chatService");
        return null;
    }

    @NotNull
    public final MyCommunityListService getMyCommunityService() {
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService != null) {
            return myCommunityListService;
        }
        t.B("myCommunityService");
        return null;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        LinearLayout root = getBinding().getRoot();
        t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@NotNull ListView list, @Nullable Bundle bundle) {
        t.j(list, "list");
        super.onListViewCreated(list, bundle);
        list.setDivider(null);
        list.setDividerHeight(0);
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        t.j(chatMessageDto, "chatMessageDto");
        if (getAdapter() == null || chatMessageDto.chatMessage == null) {
            return;
        }
        Adapter adapter = getAdapter();
        ChatMessage chatMessage = chatMessageDto.chatMessage;
        t.i(chatMessage, "chatMessage");
        adapter.onNewMessage(chatMessage);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        setOverScrollMode(2);
        getListView().setOnItemLongClickListener(getAdapter());
        this.communityIconView = (CommunityIconView) view.findViewById(R.id.community_icon);
        this.communityTitle = (TextView) view.findViewById(R.id.community_title);
        this.communityLayout = view.findViewById(R.id.community_info_Layout);
        final Community community = (Community) JacksonUtils.readAs(getStringParam(SearchPrefsHelper.PREFS_KEY_COMMUNITY), Community.class);
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
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    CommunityChatFragment.onViewCreated$lambda$0(community, this, view3);
                }
            });
        }
        if (this.ndcId == 0) {
            View viewFindViewById = setEmptyView(R.layout.empty_global_chat).findViewById(R.id.more_aminos);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.i
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        CommunityChatFragment.onViewCreated$lambda$1(this.f1931a, view3);
                    }
                });
            }
        } else {
            View emptyView = setEmptyView(R.layout.empty_community_chat);
            View viewFindViewById2 = emptyView.findViewById(R.id.empty_retry);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.j
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        CommunityChatFragment.onViewCreated$lambda$2(this.f1932a, view3);
                    }
                });
            }
            View viewFindViewById3 = emptyView.findViewById(R.id.explore_chat);
            if (viewFindViewById3 != null) {
                viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.k
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        CommunityChatFragment.onViewCreated$lambda$3(this.f1933a, view3);
                    }
                });
            }
        }
        getBinding().setting.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                CommunityChatFragment.onViewCreated$lambda$4(this.f1934a, view3);
            }
        });
    }

    @Override // com.narvii.chat.global.chat.RecommendChatAdapter.RecommendChatRefresh
    public void refreshRecommendChat() {
        RecommendChatAdapter recommendChatAdapter = this.recommendAdapter;
        if (recommendChatAdapter != null) {
            recommendChatAdapter.refreshWithRateControl();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return requireContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height) * (-1);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (z6) {
            PushService pushService = this.pushService;
            if (pushService != null) {
                pushService.addPushListener(this.pushListener);
            }
            if (this.needRefreshWhenResume) {
                getAdapter().refresh(256, null);
                return;
            }
            return;
        }
        PushService pushService2 = this.pushService;
        if (pushService2 != null) {
            pushService2.removePushListener(this.pushListener);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("myCommunityList");
        t.i(service, "getService(...)");
        setMyCommunityService((MyCommunityListService) service);
        this.ndcId = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        setChatHelper(new ChatHelper(contextRequireContext));
        setChatRequestHelper(new ChatRequestHelper(this));
        Object service2 = getService("chat");
        t.i(service2, "getService(...)");
        setChatService((ChatService) service2);
        getChatService().addCommunityLevelReceptor(this.ndcId, this);
        Object service3 = getService("account");
        t.i(service3, "getService(...)");
        setAccountService((AccountService) service3);
        this.pushService = (PushService) getService("push");
        setAdapter(new Adapter(this));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getChatService().removeCommunityLevelReceptor(this.ndcId, this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        if (this.ndcId == 0) {
            getChatService().queryThreadCheckInfo(0, true);
        }
    }
}
