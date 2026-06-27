package com.narvii.chat.global.chat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.chat.RecommendChatAdapter;
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
import com.narvii.model.Community;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.WeakLruCache;
import com.narvii.widget.AutoScaleTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: AggregationChatFragment.kt */
/* loaded from: classes2.dex */
public final class AggregationChatFragment extends NVFragment implements MyCommunityListService.MyCommunityListObserver, ChatService.ChatMessageReceptor, MasterTopBarAvailable {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AggregationChatFragment.class), "communityListView", "getCommunityListView()Lcom/narvii/widget/NVListView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AggregationChatFragment.class), "recentView", "getRecentView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AggregationChatFragment.class), "recentIndicator", "getRecentIndicator()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AggregationChatFragment.class), "chatContentFrame", "getChatContentFrame()Landroid/widget/FrameLayout;"))};
    public static final Companion Companion = new Companion(null);
    private static final long REFRESH_COMMUNITY_LIST_DURATION;
    private static final long REMINDER_CHECK_DURATION;
    private final int INDEX_GLOBAL_CHAT;
    private HashMap _$_findViewCache;
    public AccountService accountService;
    public ChatService chatService;
    private List<? extends Community> communityList;
    private CommunityListAdapter communityListAdapter;
    public MyCommunityListService myCommunityService;
    private RecentChatListFragment recentChatFragment;
    private final int INDEX_RECENT_CHAT = -1;
    private final Lazy communityListView$delegate = bind(this, R.id.community_list);
    private final Lazy recentView$delegate = bind(this, R.id.recent_layout);
    private final Lazy recentIndicator$delegate = bind(this, R.id.selected_indicator);
    private final Lazy chatContentFrame$delegate = bind(this, R.id.chat_content_frame);
    private int selectedNdcId = this.INDEX_RECENT_CHAT;
    private final WeakLruCache<Integer, CommunityChatFragment> chatFragments = new WeakLruCache<>(5);
    private final AggregationChatFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.chat.global.chat.AggregationChatFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            View view;
            View viewFindViewById;
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                View view2 = this.this$0.getView();
                if ((view2 != null ? view2.findViewById(com.narvii.amino.R.id.global_layout) : null) != null && (view = this.this$0.getView()) != null && (viewFindViewById = view.findViewById(com.narvii.amino.R.id.global_layout)) != null) {
                    viewFindViewById.setVisibility(this.this$0.getAccountService().hasAccount() ? 0 : 8);
                }
                if (!this.this$0.getAccountService().hasAccount() || this.this$0.getChatService() == null) {
                    return;
                }
                this.this$0.getChatService().addThreadCheckQueue(0);
            }
        }
    };

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

    public final FrameLayout getChatContentFrame() {
        Lazy lazy = this.chatContentFrame$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (FrameLayout) lazy.getValue();
    }

    public final NVListView getCommunityListView() {
        Lazy lazy = this.communityListView$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (NVListView) lazy.getValue();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Chats";
    }

    public final View getRecentIndicator() {
        Lazy lazy = this.recentIndicator$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (View) lazy.getValue();
    }

    public final View getRecentView() {
        Lazy lazy = this.recentView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return true;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    public final int getINDEX_RECENT_CHAT() {
        return this.INDEX_RECENT_CHAT;
    }

    public final int getINDEX_GLOBAL_CHAT() {
        return this.INDEX_GLOBAL_CHAT;
    }

    public final CommunityListAdapter getCommunityListAdapter() {
        return this.communityListAdapter;
    }

    public final void setCommunityListAdapter(CommunityListAdapter communityListAdapter) {
        this.communityListAdapter = communityListAdapter;
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

    public final int getSelectedNdcId() {
        return this.selectedNdcId;
    }

    public final void setSelectedNdcId(int i) {
        this.selectedNdcId = i;
    }

    public final List<Community> getCommunityList() {
        return this.communityList;
    }

    public final void setCommunityList(List<? extends Community> list) {
        this.communityList = list;
    }

    public final WeakLruCache<Integer, CommunityChatFragment> getChatFragments() {
        return this.chatFragments;
    }

    public final RecentChatListFragment getRecentChatFragment() {
        return this.recentChatFragment;
    }

    public final void setRecentChatFragment(RecentChatListFragment recentChatListFragment) {
        this.recentChatFragment = recentChatListFragment;
    }

    /* compiled from: AggregationChatFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getREFRESH_COMMUNITY_LIST_DURATION() {
            return AggregationChatFragment.REFRESH_COMMUNITY_LIST_DURATION;
        }

        public final long getREMINDER_CHECK_DURATION() {
            return AggregationChatFragment.REMINDER_CHECK_DURATION;
        }
    }

    static {
        REFRESH_COMMUNITY_LIST_DURATION = NVApplication.DEBUG ? 60000 : 300000;
        REMINDER_CHECK_DURATION = NVApplication.DEBUG ? 60000 : 300000;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.chats);
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_aggrefation_chat, viewGroup, false);
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return isRootFragment();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (isRootFragment()) {
            view.setBackgroundColor(getResources().getColor(R.color.color_default_primary));
        }
        Object service = getService("myCommunityList");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"myCommunityList\")");
        this.myCommunityService = (MyCommunityListService) service;
        Object service2 = getService("chat");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"chat\")");
        this.chatService = (ChatService) service2;
        ChatService chatService = this.chatService;
        if (chatService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
        chatService.addGlobalChatMessageReceptor(this);
        Object service3 = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service3, "getService(\"account\")");
        this.accountService = (AccountService) service3;
        this.communityListAdapter = new CommunityListAdapter(this, this);
        getCommunityListView().setAdapter((ListAdapter) this.communityListAdapter);
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
            throw null;
        }
        myCommunityListService.addObserver(this);
        CommunityListAdapter communityListAdapter = this.communityListAdapter;
        if (communityListAdapter != null) {
            communityListAdapter.onAttach();
        }
        this.recentChatFragment = new RecentChatListFragment();
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        RecentChatListFragment recentChatListFragment = this.recentChatFragment;
        if (recentChatListFragment == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        fragmentTransactionBeginTransaction.replace(R.id.chat_content_frame, recentChatListFragment).commitAllowingStateLoss();
        getRecentView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.AggregationChatFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AggregationChatFragment aggregationChatFragment = AggregationChatFragment.this;
                aggregationChatFragment.onItemSelected(aggregationChatFragment.getINDEX_RECENT_CHAT(), null);
            }
        });
        AccountService accountService = this.accountService;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        if (accountService.hasAccount()) {
            ChatService chatService2 = this.chatService;
            if (chatService2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatService");
                throw null;
            }
            chatService2.addThreadCheckQueue(0);
        }
        view.findViewById(com.narvii.amino.R.id.global_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.AggregationChatFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AggregationChatFragment aggregationChatFragment = AggregationChatFragment.this;
                aggregationChatFragment.onItemSelected(aggregationChatFragment.getINDEX_GLOBAL_CHAT(), null);
            }
        });
        View viewFindViewById = view.findViewById(R.id.master_top_placeholder);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById<View>(…d.master_top_placeholder)");
        viewFindViewById.setVisibility(getParentFragment() instanceof MasterTabFragment ? 0 : 8);
        View viewFindViewById2 = view.findViewById(R.id.bottom_place_holder);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById<View>(R.id.bottom_place_holder)");
        viewFindViewById2.setVisibility(getParentFragment() instanceof MasterTabFragment ? 0 : 8);
        View viewFindViewById3 = view.findViewById(com.narvii.amino.R.id.global_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.global_layout");
        AccountService accountService2 = this.accountService;
        if (accountService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        viewFindViewById3.setVisibility(accountService2.hasAccount() ? 0 : 8);
        updateGlobalUnreadCount();
        updateLeftNav();
    }

    public final void updateGlobalUnreadCount() {
        ChatService chatService = this.chatService;
        if (chatService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
        int unreadChatCountInCurCommunity = chatService.getUnreadChatCountInCurCommunity(0);
        ChatService chatService2 = this.chatService;
        if (chatService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
        int unreadChatCountInCurCommunity2 = chatService2.getUnreadChatCountInCurCommunity(0);
        AutoScaleTextView autoScaleTextView = (AutoScaleTextView) _$_findCachedViewById(com.narvii.amino.R.id.global_notification_count);
        if (autoScaleTextView != null) {
            autoScaleTextView.setText(unreadChatCountInCurCommunity > 9 ? "9+" : String.valueOf(unreadChatCountInCurCommunity));
        }
        AutoScaleTextView autoScaleTextView2 = (AutoScaleTextView) _$_findCachedViewById(com.narvii.amino.R.id.global_notification_count);
        if (autoScaleTextView2 != null) {
            autoScaleTextView2.setVisibility(unreadChatCountInCurCommunity2 <= 0 ? 4 : 0);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
            throw null;
        }
        myCommunityListService.removeObserver(this);
        _$_clearFindViewByIdCache();
    }

    private final <T extends View> Lazy<T> bind(AggregationChatFragment aggregationChatFragment, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.global.chat.AggregationChatFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = AggregationChatFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    /* compiled from: AggregationChatFragment.kt */
    public final class CommunityListAdapter extends NVAdapter {
        final /* synthetic */ AggregationChatFragment this$0;

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CommunityListAdapter(AggregationChatFragment aggregationChatFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = aggregationChatFragment;
            setDarkTheme(true);
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

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.this$0.getMyCommunityService().retryRetry();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof Community) {
                View cell = createView(R.layout.drawer_my_community_item, viewGroup, view, "community");
                ImageView imageView = (ImageView) cell.findViewById(R.id.icon);
                if (imageView instanceof CommunityIconView) {
                    ((CommunityIconView) imageView).setCommunity((Community) item);
                } else if (imageView instanceof NVImageView) {
                    ((NVImageView) imageView).setImageUrl(((Community) item).icon);
                }
                Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
                Community community = (Community) item;
                updateRemindersInCell(cell, community, true);
                View v = cell.findViewById(R.id.current_community_indicator);
                boolean z = this.this$0.getSelectedNdcId() == community.id;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                v.setVisibility(z ? 0 : 8);
                cell.setBackgroundColor(z ? 285212671 : 0);
                cell.setOnClickListener(this.subviewClickListener);
                return cell;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View v2 = createView(R.layout.drawer_my_community_join_item, viewGroup, view);
                v2.setOnClickListener(this.subviewClickListener);
                Intrinsics.checkExpressionValueIsNotNull(v2, "v");
                return v2;
            }
            if (item == NVPagedAdapter.LOADING) {
                View v3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                this.this$0.getMyCommunityService().loadNextPage(true);
                Intrinsics.checkExpressionValueIsNotNull(v3, "v");
                return v3;
            }
            return createErrorItem(viewGroup, view, this.this$0.getMyCommunityService().errorMessage());
        }

        @Override // com.narvii.list.NVAdapter
        public View createErrorItem(ViewGroup viewGroup, View view, String str) {
            View v = super.createErrorItem(viewGroup, view, str);
            v.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.AggregationChatFragment$CommunityListAdapter$createErrorItem$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.this$0.onErrorRetry();
                }
            });
            Intrinsics.checkExpressionValueIsNotNull(v, "v");
            return v;
        }

        public final void updateRemindersInCell(View cell, Community community, boolean z) {
            Intrinsics.checkParameterIsNotNull(cell, "cell");
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

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            Object obj;
            List<Community> list = this.this$0.getMyCommunityService().list();
            if (i < list.size()) {
                obj = list.get(i);
            } else if (this.this$0.getMyCommunityService().isEnd()) {
                obj = NVPagedAdapter.LIST_END;
            } else if (this.this$0.getMyCommunityService().errorMessage() == null) {
                obj = NVPagedAdapter.LOADING;
            } else {
                obj = NVPagedAdapter.ERROR;
            }
            Intrinsics.checkExpressionValueIsNotNull(obj, "if (position < list.size…apter.ERROR\n            }");
            return obj;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.this$0.getMyCommunityService().list().size() + 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            return item == NVPagedAdapter.ERROR ? 3 : -1;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.this$0.getMyCommunityService().isEnd() || this.this$0.getMyCommunityService().list().size() > 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (getItem(i) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Object item = getItem(i);
            if (item instanceof Community) {
                Community community = (Community) item;
                this.this$0.onItemSelected(community.id, community);
            } else if (Intrinsics.areEqual(item, NVPagedAdapter.LIST_END)) {
                Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
                intent.putExtra("__communityId", 0);
                startActivity(intent);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    public final void onItemSelected(int i, Community community) {
        Community community2;
        Fragment fragment;
        if (this.selectedNdcId == i) {
            return;
        }
        this.selectedNdcId = i;
        updateLeftNav();
        if (i == this.INDEX_RECENT_CHAT) {
            fragment = this.recentChatFragment;
            if (fragment == null) {
                this.recentChatFragment = new RecentChatListFragment();
                fragment = this.recentChatFragment;
            }
        } else {
            CommunityChatFragment communityChatFragment = this.chatFragments.get(Integer.valueOf(i));
            if (communityChatFragment == null) {
                communityChatFragment = new CommunityChatFragment();
                this.chatFragments.put(Integer.valueOf(i), communityChatFragment);
            }
            Bundle bundle = new Bundle();
            bundle.putInt(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
            if (community != null) {
                community2 = new Community();
                community2.id = community.id;
                community2.icon = community.icon;
                community2.name = community.name;
                community2.endpoint = community.endpoint;
            } else {
                community2 = null;
            }
            bundle.putString("community", JacksonUtils.writeAsString(community2));
            communityChatFragment.setArguments(bundle);
            fragment = communityChatFragment;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
        if (!childFragmentManager.getFragments().contains(fragment)) {
            if (fragment == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            fragmentTransactionBeginTransaction.add(R.id.chat_content_frame, fragment);
        }
        if (fragment != null) {
            fragmentTransactionBeginTransaction.show(fragment);
            if (fragment instanceof NVFragment) {
                fragment.setUserVisibleHint(true);
            }
            if (fragment instanceof RecommendChatAdapter.RecommendChatRefresh) {
                ((RecommendChatAdapter.RecommendChatRefresh) fragment).refreshRecommendChat();
            }
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(childFragmentManager2, "childFragmentManager");
            for (Fragment ff : childFragmentManager2.getFragments()) {
                if (!Intrinsics.areEqual(ff, fragment)) {
                    Intrinsics.checkExpressionValueIsNotNull(ff, "ff");
                    if (!ff.isHidden()) {
                        fragmentTransactionBeginTransaction.hide(ff);
                        if (ff instanceof NVFragment) {
                            ((NVFragment) ff).setUserVisibleHint(false);
                        }
                    }
                }
            }
            fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
            return;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        updateLeftNav();
        if ((myCommunityListService != null ? myCommunityListService.list() : null) != null) {
            ArrayList arrayList = new ArrayList();
            Map<Integer, CommunityChatFragment> mapSnapshot = this.chatFragments.snapshot();
            Intrinsics.checkExpressionValueIsNotNull(mapSnapshot, "chatFragments.snapshot()");
            for (Map.Entry<Integer, CommunityChatFragment> entry : mapSnapshot.entrySet()) {
                Integer key = entry.getKey();
                entry.getValue();
                if (key == null || key.intValue() != 0) {
                    if (!Utils.containsId(myCommunityListService.list(), String.valueOf(key.intValue()))) {
                        arrayList.add(key);
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num2 = (Integer) it.next();
                int i = this.selectedNdcId;
                if (num2 != null && num2.intValue() == i) {
                    onItemSelected(this.INDEX_RECENT_CHAT, null);
                } else {
                    getChildFragmentManager().beginTransaction().remove(this.chatFragments.get(num2)).commitAllowingStateLoss();
                    this.chatFragments.remove(num2);
                }
            }
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        updateLeftNav();
    }

    public final void updateLeftNav() {
        getRecentView().setBackgroundColor(this.selectedNdcId == this.INDEX_RECENT_CHAT ? 285212671 : 0);
        getRecentIndicator().setVisibility(this.selectedNdcId == this.INDEX_RECENT_CHAT ? 0 : 8);
        ImageView global_selected_indicator = (ImageView) _$_findCachedViewById(com.narvii.amino.R.id.global_selected_indicator);
        Intrinsics.checkExpressionValueIsNotNull(global_selected_indicator, "global_selected_indicator");
        global_selected_indicator.setVisibility(this.selectedNdcId == this.INDEX_GLOBAL_CHAT ? 0 : 8);
        _$_findCachedViewById(com.narvii.amino.R.id.global_layout).setBackgroundColor(this.selectedNdcId != this.INDEX_GLOBAL_CHAT ? 0 : 285212671);
        CommunityListAdapter communityListAdapter = this.communityListAdapter;
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
        CommunityListAdapter communityListAdapter = this.communityListAdapter;
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
        updateGlobalUnreadCount();
    }
}
