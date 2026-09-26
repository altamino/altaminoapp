package com.narvii.chat.global.chat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.databinding.FragmentAggrefationChatBinding;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.MasterTabFragment;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.WeakLruCache;
import com.narvii.widget.AutoScaleTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes5.dex */
public final class AggregationChatFragment extends NVFragment implements MyCommunityListService.MyCommunityListObserver, ChatService.ChatMessageReceptor, MasterTopBarAvailable {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(AggregationChatFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long REFRESH_COMMUNITY_LIST_DURATION;
    private static final long REMINDER_CHECK_DURATION;
    private final int INDEX_GLOBAL_CHAT;
    public AccountService accountService;
    public ChatService chatService;

    @Nullable
    private List<? extends Community> communityList;

    @Nullable
    private CommunityListAdapter communityListAdapter;
    public MyCommunityListService myCommunityService;

    @Nullable
    private RecentChatListFragment recentChatFragment;
    private final int INDEX_RECENT_CHAT = -1;

    @NotNull
    private final w7.m communityListView$delegate = bind(R.id.community_list);

    @NotNull
    private final w7.m recentView$delegate = bind(R.id.recent_layout);

    @NotNull
    private final w7.m recentIndicator$delegate = bind(R.id.selected_indicator);

    @NotNull
    private final w7.m chatContentFrame$delegate = bind(R.id.chat_content_frame);
    private int selectedNdcId = -1;

    @NotNull
    private final WeakLruCache<Integer, CommunityChatFragment> chatFragments = new WeakLruCache<>(5);

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, AggregationChatFragment$binding$2.INSTANCE);

    @NotNull
    private final AggregationChatFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.chat.global.chat.AggregationChatFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            t.j(context, "context");
            t.j(intent, "intent");
            if (t.e(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                this.this$0.getBinding().globalLayout.rootGlobalLayout.setVisibility(this.this$0.getAccountService().hasAccount() ? 0 : 8);
                if (!this.this$0.getAccountService().hasAccount() || this.this$0.getChatService() == null) {
                    return;
                }
                this.this$0.getChatService().addThreadCheckQueue(0);
            }
        }
    };

    public final class CommunityListAdapter extends NVAdapter {
        final /* synthetic */ AggregationChatFragment this$0;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CommunityListAdapter(@NotNull AggregationChatFragment aggregationChatFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = aggregationChatFragment;
            setDarkTheme(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createErrorItem$lambda$0(CommunityListAdapter this$0, View view) {
            t.j(this$0, "this$0");
            this$0.onErrorRetry();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.this$0.getMyCommunityService().list().size() + 1;
        }

        @Override // android.widget.Adapter
        @NotNull
        public Object getItem(int i10) {
            Object obj;
            List<Community> list = this.this$0.getMyCommunityService().list();
            if (i10 < list.size()) {
                obj = list.get(i10);
            } else if (this.this$0.getMyCommunityService().isEnd()) {
                obj = NVPagedAdapter.LIST_END;
            } else {
                obj = this.this$0.getMyCommunityService().errorMessage() == null ? NVPagedAdapter.LOADING : NVPagedAdapter.ERROR;
            }
            t.g(obj);
            return obj;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.this$0.getMyCommunityService().isEnd() || this.this$0.getMyCommunityService().list().size() > 0;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.this$0.getMyCommunityService().retryRetry();
        }

        public final void updateRemindersInCell(@NotNull View cell, @Nullable Community community, boolean z6) {
            t.j(cell, "cell");
            int unreadChatCountInCurCommunity = community == null ? 0 : this.this$0.getChatService().getUnreadChatCountInCurCommunity(community.id);
            View viewFindViewById = cell.findViewById(R.id.notification_count);
            if (viewFindViewById instanceof TextView) {
                ((TextView) viewFindViewById).setText(unreadChatCountInCurCommunity > 9 ? "9+" : String.valueOf(unreadChatCountInCurCommunity));
            }
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(unreadChatCountInCurCommunity <= 0 ? 8 : 0);
            }
            if (community == null || !this.this$0.getAccountService().hasAccount()) {
                return;
            }
            this.this$0.getChatService().addThreadCheckQueue(community.id);
        }

        @Override // com.narvii.list.NVAdapter
        @NotNull
        public View createErrorItem(@Nullable ViewGroup viewGroup, @Nullable View view, @Nullable String str) {
            View viewCreateErrorItem = super.createErrorItem(viewGroup, view, str);
            viewCreateErrorItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    AggregationChatFragment.CommunityListAdapter.createErrorItem$lambda$0(this.f1922a, view2);
                }
            });
            t.g(viewCreateErrorItem);
            return viewCreateErrorItem;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            if (item == NVPagedAdapter.ERROR) {
                return 3;
            }
            return -1;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            int i11;
            Object item = getItem(i10);
            boolean z6 = true;
            if (item instanceof Community) {
                View viewCreateView = createView(R.layout.drawer_my_community_item, viewGroup, view, SearchPrefsHelper.PREFS_KEY_COMMUNITY);
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
                if (imageView instanceof CommunityIconView) {
                    ((CommunityIconView) imageView).setCommunity((Community) item);
                } else if (imageView instanceof NVImageView) {
                    ((NVImageView) imageView).setImageUrl(((Community) item).icon);
                }
                t.g(viewCreateView);
                Community community = (Community) item;
                updateRemindersInCell(viewCreateView, community, true);
                View viewFindViewById = viewCreateView.findViewById(R.id.current_community_indicator);
                int i12 = 0;
                if (this.this$0.getSelectedNdcId() != community.id) {
                    z6 = false;
                }
                if (z6) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                viewFindViewById.setVisibility(i11);
                if (z6) {
                    i12 = 285212671;
                }
                viewCreateView.setBackgroundColor(i12);
                viewCreateView.setOnClickListener(this.subviewClickListener);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View viewCreateView2 = createView(R.layout.drawer_my_community_join_item, viewGroup, view);
                viewCreateView2.setOnClickListener(this.subviewClickListener);
                t.g(viewCreateView2);
                return viewCreateView2;
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateView3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                this.this$0.getMyCommunityService().loadNextPage(true);
                t.g(viewCreateView3);
                return viewCreateView3;
            }
            return createErrorItem(viewGroup, view, this.this$0.getMyCommunityService().errorMessage());
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i10);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (!isListShown()) {
                this.this$0.getMyCommunityService().loadNextPage(true);
            } else if (this.this$0.getMyCommunityService().getCommunityRequestTime() < SystemClock.elapsedRealtime() - AggregationChatFragment.Companion.getREFRESH_COMMUNITY_LIST_DURATION()) {
                this.this$0.getMyCommunityService().refresh(256, null);
            }
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                Community community = (Community) item;
                this.this$0.onItemSelected(community.id, community);
            } else if (t.e(item, NVPagedAdapter.LIST_END)) {
                Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
                intent.putExtra("__communityId", 0);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final long getREFRESH_COMMUNITY_LIST_DURATION() {
            return AggregationChatFragment.REFRESH_COMMUNITY_LIST_DURATION;
        }

        public final long getREMINDER_CHECK_DURATION() {
            return AggregationChatFragment.REMINDER_CHECK_DURATION;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.global.chat.AggregationChatFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = AggregationChatFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.global.chat.AggregationChatFragment.bind");
            return viewFindViewById;
        }
    }

    static {
        boolean z6 = NVApplication.DEBUG;
        REFRESH_COMMUNITY_LIST_DURATION = z6 ? 60000 : 300000;
        REMINDER_CHECK_DURATION = z6 ? 60000 : 300000;
    }

    @NotNull
    public final WeakLruCache<Integer, CommunityChatFragment> getChatFragments() {
        return this.chatFragments;
    }

    @Nullable
    public final List<Community> getCommunityList() {
        return this.communityList;
    }

    @Nullable
    public final CommunityListAdapter getCommunityListAdapter() {
        return this.communityListAdapter;
    }

    public final int getINDEX_GLOBAL_CHAT() {
        return this.INDEX_GLOBAL_CHAT;
    }

    public final int getINDEX_RECENT_CHAT() {
        return this.INDEX_RECENT_CHAT;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "chats";
    }

    @Nullable
    public final RecentChatListFragment getRecentChatFragment() {
        return this.recentChatFragment;
    }

    public final int getSelectedNdcId() {
        return this.selectedNdcId;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return true;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        t.j(chatMessageDto, "chatMessageDto");
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable CommunityListResponse communityListResponse) {
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final void setChatService(@NotNull ChatService chatService) {
        t.j(chatService, "<set-?>");
        this.chatService = chatService;
    }

    public final void setCommunityList(@Nullable List<? extends Community> list) {
        this.communityList = list;
    }

    public final void setCommunityListAdapter(@Nullable CommunityListAdapter communityListAdapter) {
        this.communityListAdapter = communityListAdapter;
    }

    public final void setMyCommunityService(@NotNull MyCommunityListService myCommunityListService) {
        t.j(myCommunityListService, "<set-?>");
        this.myCommunityService = myCommunityListService;
    }

    public final void setRecentChatFragment(@Nullable RecentChatListFragment recentChatListFragment) {
        this.recentChatFragment = recentChatListFragment;
    }

    public final void setSelectedNdcId(int i10) {
        this.selectedNdcId = i10;
    }

    private final <T extends View> w7.m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentAggrefationChatBinding getBinding() {
        return (FragmentAggrefationChatBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(AggregationChatFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.onItemSelected(this$0.INDEX_RECENT_CHAT, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(AggregationChatFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.onItemSelected(this$0.INDEX_GLOBAL_CHAT, null);
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
    public final FrameLayout getChatContentFrame() {
        return (FrameLayout) this.chatContentFrame$delegate.getValue();
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
    public final NVListView getCommunityListView() {
        return (NVListView) this.communityListView$delegate.getValue();
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

    @NotNull
    public final View getRecentIndicator() {
        return (View) this.recentIndicator$delegate.getValue();
    }

    @NotNull
    public final View getRecentView() {
        return (View) this.recentView$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        LinearLayout root = getBinding().getRoot();
        t.i(root, "getRoot(...)");
        return root;
    }

    public final void onItemSelected(int i10, @Nullable Community community) {
        Community community2;
        Fragment fragment;
        RecentChatListFragment recentChatListFragment;
        if (this.selectedNdcId == i10) {
            return;
        }
        this.selectedNdcId = i10;
        updateLeftNav();
        if (i10 == this.INDEX_RECENT_CHAT) {
            recentChatListFragment = this.recentChatFragment;
            if (recentChatListFragment == null) {
                fragment = recentChatListFragment;
                RecentChatListFragment recentChatListFragment2 = new RecentChatListFragment();
                this.recentChatFragment = recentChatListFragment2;
                fragment = recentChatListFragment2;
            }
        } else {
            CommunityChatFragment communityChatFragment = this.chatFragments.get(Integer.valueOf(i10));
            if (communityChatFragment == null) {
                communityChatFragment = new CommunityChatFragment();
                this.chatFragments.put(Integer.valueOf(i10), communityChatFragment);
            }
            Bundle bundle = new Bundle();
            bundle.putInt(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
            if (community != null) {
                community2 = new Community();
                community2.id = community.id;
                community2.icon = community.icon;
                community2.name = community.name;
                community2.endpoint = community.endpoint;
            } else {
                community2 = null;
            }
            bundle.putString(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(community2));
            communityChatFragment.setArguments(bundle);
            fragment = communityChatFragment;
        }
        fragment = recentChatListFragment;
        FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
        t.i(fragmentTransactionQ, "beginTransaction(...)");
        if (!getChildFragmentManager().B0().contains(fragment)) {
            t.g(fragment);
            fragmentTransactionQ.b(R.id.chat_content_frame, fragment);
        }
        t.g(fragment);
        fragmentTransactionQ.E(fragment);
        fragment.setUserVisibleHint(true);
        if (fragment instanceof RecommendChatAdapter.RecommendChatRefresh) {
            ((RecommendChatAdapter.RecommendChatRefresh) fragment).refreshRecommendChat();
        }
        for (Fragment fragment2 : getChildFragmentManager().B0()) {
            if (!t.e(fragment2, fragment) && !fragment2.isHidden()) {
                fragmentTransactionQ.r(fragment2);
                if (fragment2 instanceof NVFragment) {
                    ((NVFragment) fragment2).setUserVisibleHint(false);
                }
            }
        }
        fragmentTransactionQ.m();
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
        CommunityListAdapter communityListAdapter = this.communityListAdapter;
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
        updateGlobalUnreadCount();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        if (isRootFragment()) {
            view.setBackgroundColor(getResources().getColor(R.color.color_default_primary));
        }
        Object service = getService("myCommunityList");
        t.i(service, "getService(...)");
        setMyCommunityService((MyCommunityListService) service);
        Object service2 = getService("chat");
        t.i(service2, "getService(...)");
        setChatService((ChatService) service2);
        getChatService().addGlobalChatMessageReceptor(this);
        Object service3 = getService("account");
        t.i(service3, "getService(...)");
        setAccountService((AccountService) service3);
        this.communityListAdapter = new CommunityListAdapter(this, this);
        getCommunityListView().setAdapter((ListAdapter) this.communityListAdapter);
        getMyCommunityService().addObserver(this);
        CommunityListAdapter communityListAdapter = this.communityListAdapter;
        if (communityListAdapter != null) {
            communityListAdapter.onAttach();
        }
        this.recentChatFragment = new RecentChatListFragment();
        FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
        RecentChatListFragment recentChatListFragment = this.recentChatFragment;
        t.g(recentChatListFragment);
        fragmentTransactionQ.u(R.id.chat_content_frame, recentChatListFragment).k();
        getRecentView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AggregationChatFragment.onViewCreated$lambda$0(this.f1920a, view2);
            }
        });
        if (getAccountService().hasAccount()) {
            getChatService().addThreadCheckQueue(0);
        }
        getBinding().globalLayout.rootGlobalLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AggregationChatFragment.onViewCreated$lambda$1(this.f1921a, view2);
            }
        });
        view.findViewById(R.id.master_top_placeholder).setVisibility(getParentFragment() instanceof MasterTabFragment ? 0 : 8);
        view.findViewById(R.id.bottom_place_holder).setVisibility(getParentFragment() instanceof MasterTabFragment ? 0 : 8);
        getBinding().globalLayout.rootGlobalLayout.setVisibility(getAccountService().hasAccount() ? 0 : 8);
        updateGlobalUnreadCount();
        updateLeftNav();
    }

    private final void updateGlobalUnreadCount() {
        String strValueOf;
        int i10 = 0;
        int unreadChatCountInCurCommunity = getChatService().getUnreadChatCountInCurCommunity(0);
        int unreadChatCountInCurCommunity2 = getChatService().getUnreadChatCountInCurCommunity(0);
        if (getView() != null) {
            AutoScaleTextView autoScaleTextView = getBinding().globalLayout.globalNotificationCount;
            if (unreadChatCountInCurCommunity > 9) {
                strValueOf = "9+";
            } else {
                strValueOf = String.valueOf(unreadChatCountInCurCommunity);
            }
            autoScaleTextView.setText(strValueOf);
            AutoScaleTextView autoScaleTextView2 = getBinding().globalLayout.globalNotificationCount;
            if (unreadChatCountInCurCommunity2 <= 0) {
                i10 = 4;
            }
            autoScaleTextView2.setVisibility(i10);
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return isRootFragment();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.chats);
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getMyCommunityService().removeObserver(this);
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable MyCommunityListResponse myCommunityListResponse, @Nullable Integer num) {
        List<Community> list;
        updateLeftNav();
        if (myCommunityListService != null) {
            list = myCommunityListService.list();
        } else {
            list = null;
        }
        if (list != null) {
            ArrayList<Integer> arrayList = new ArrayList();
            Map<Integer, CommunityChatFragment> mapSnapshot = this.chatFragments.snapshot();
            t.i(mapSnapshot, "snapshot(...)");
            for (Map.Entry<Integer, CommunityChatFragment> entry : mapSnapshot.entrySet()) {
                Integer key = entry.getKey();
                entry.getValue();
                if (key == null || key.intValue() != 0) {
                    if (!Utils.containsId(myCommunityListService.list(), String.valueOf(key))) {
                        arrayList.add(key);
                    }
                }
            }
            for (Integer num2 : arrayList) {
                int i10 = this.selectedNdcId;
                if (num2 != null && num2.intValue() == i10) {
                    onItemSelected(this.INDEX_RECENT_CHAT, null);
                } else {
                    getChildFragmentManager().q().t(this.chatFragments.get(num2)).k();
                    this.chatFragments.remove(num2);
                }
            }
        }
        if (myCommunityListResponse != null && (getParentFragment() instanceof MasterTabFragment) && myCommunityListResponse.showStoreBadge) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            ((MasterTabFragment) parentFragment).setStoreBadged();
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(@Nullable MyCommunityListService myCommunityListService) {
        updateLeftNav();
    }

    public final void setStoreBadged() {
        MasterTabFragment masterTabFragment;
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof MasterTabFragment) {
            masterTabFragment = (MasterTabFragment) parentFragment;
        } else {
            masterTabFragment = null;
        }
        if (masterTabFragment != null) {
            masterTabFragment.setStoreBadged();
        }
    }

    public final void updateLeftNav() {
        int i10;
        int i11;
        View recentView = getRecentView();
        int i12 = 285212671;
        if (this.selectedNdcId == this.INDEX_RECENT_CHAT) {
            i10 = 285212671;
        } else {
            i10 = 0;
        }
        recentView.setBackgroundColor(i10);
        View recentIndicator = getRecentIndicator();
        int i13 = 8;
        if (this.selectedNdcId == this.INDEX_RECENT_CHAT) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        recentIndicator.setVisibility(i11);
        ImageView imageView = getBinding().globalLayout.globalSelectedIndicator;
        if (this.selectedNdcId == this.INDEX_GLOBAL_CHAT) {
            i13 = 0;
        }
        imageView.setVisibility(i13);
        FlexLayout flexLayout = getBinding().globalLayout.rootGlobalLayout;
        if (this.selectedNdcId != this.INDEX_GLOBAL_CHAT) {
            i12 = 0;
        }
        flexLayout.setBackgroundColor(i12);
        CommunityListAdapter communityListAdapter = this.communityListAdapter;
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
    }
}
