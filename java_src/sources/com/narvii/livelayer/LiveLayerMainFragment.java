package com.narvii.livelayer;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.github.mmin18.widget.RealtimeBlurLayout;
import com.narvii.adapter.MarginAdapter;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.community.JoinCommunityDialog;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.livelayer.category.OnlineCategory;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.members.PeopleListAdapter;
import com.narvii.members.PeopleListFragment;
import com.narvii.model.Community;
import com.narvii.model.api.UserListResponse;
import com.narvii.onlinestatus.OnlineMembersFragment;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsService;
import com.narvii.widget.NVListView;
import com.narvii.widget.SwipeableLayout;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class LiveLayerMainFragment extends NVListFragment {
    public LiveLayerMemberAdapter allOnline;
    private Drawable backgroundDrawable;
    private NVPagerStatusAdapter emptyViewAdapter;
    public LiveLayerOnlineCategoryAdapter onlineCategoryAdapter;
    public LiveLayerMemberAdapter pageOnline;
    private PeopleListAdapter peopleListAdapter;
    boolean offline = false;
    WsService.WsListener wsListener = new WsService.WsListener() { // from class: com.narvii.livelayer.LiveLayerMainFragment.1
        @Override // com.narvii.util.ws.WsService.WsListener
        public void onConnect(WsService wsService) {
        }

        @Override // com.narvii.util.ws.WsService.WsListener
        public void onWsError(WsService wsService, WsError wsError) {
        }

        @Override // com.narvii.util.ws.WsService.WsListener
        public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        }

        @Override // com.narvii.util.ws.WsService.WsListener
        public void onDisconnect(WsService wsService, Throwable th) {
            LiveLayerMainFragment.this.offline = true;
        }
    };

    class AllMembersTitleAdapter extends AdriftAdapter {
        private TextView titleView;

        public AllMembersTitleAdapter(NVContext nVContext) {
            super(nVContext);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateTitle(int i10) {
            TextView textView = this.titleView;
            if (textView != null) {
                textView.setText(TextUtils.getCountTitle(LiveLayerMainFragment.this.getString(R.string.community_all_members), i10));
            }
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            LiveLayerMainFragment.this.peopleListAdapter.getCount();
            return 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.live_layer_category_title, viewGroup, view);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
            imageView.setImageResource(R.drawable.ic_live_layer_all_members);
            imageView.setPadding(0, 0, 0, 0);
            viewCreateView.findViewById(R.id.more_user).setVisibility(8);
            this.titleView = (TextView) viewCreateView.findViewById(R.id.list_title);
            updateTitle(LiveLayerMainFragment.this.peopleListAdapter.getAllMembersCount());
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "live_layer";
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        List<OnlineCategory> list;
        UserListResponse userListResponse;
        final LiveLayerMainData cachedLiveLayerMainData = ((LiveLayerService) getService("liveLayer")).getCachedLiveLayerMainData();
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.livelayer.LiveLayerMainFragment.3
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public String errorMessage() {
                return null;
            }

            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return true;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (LiveLayerMainFragment.this.blockClickEvent()) {
                    return true;
                }
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
        };
        if (getStringParam("pageTopic") != null) {
            LiveLayerMemberAdapter liveLayerMemberAdapter = new LiveLayerMemberAdapter(this) { // from class: com.narvii.livelayer.LiveLayerMainFragment.4
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.livelayer.LiveLayerMemberAdapter
                public int getTitleIcon() {
                    return R.drawable.ic_live_layer_page;
                }

                @Override // com.narvii.livelayer.LiveLayerMemberAdapter
                public int getTitleIconBackground() {
                    return -3984574;
                }

                @Override // com.narvii.livelayer.LiveLayerMemberAdapter
                protected boolean blockUserClick() {
                    return LiveLayerMainFragment.this.blockClickEvent();
                }

                @Override // com.narvii.livelayer.LiveLayerMemberAdapter
                protected String getLiveLayerTopic() {
                    return LiveLayerMainFragment.this.getStringParam("pageTopic");
                }

                @Override // com.narvii.livelayer.LiveLayerMemberAdapter
                public String getTitleView() {
                    return TextUtils.getCountTitle(this.context.getContext().getString(R.string.live_layer_pagemember_list_title_hint), this.userCount);
                }

                @Override // com.narvii.livelayer.LiveLayerMemberAdapter
                public boolean onMoreItemClick() {
                    Intent intent = FragmentWrapperActivity.intent(MemberOnPageFragment.class);
                    intent.putExtra("title", R.string.live_layer_pagemember_list_title_hint);
                    intent.putExtra("topic", LiveLayerMainFragment.this.getStringParam("pageTopic"));
                    BackgroundHelper.saveWithDrawable(LiveLayerMainFragment.this.backgroundDrawable);
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    return true;
                }
            };
            this.pageOnline = liveLayerMemberAdapter;
            liveLayerMemberAdapter.source = "Live Layer (Home)";
            mergeAdapter.addAdapter(liveLayerMemberAdapter);
        }
        LiveLayerMemberAdapter liveLayerMemberAdapter2 = new LiveLayerMemberAdapter(this) { // from class: com.narvii.livelayer.LiveLayerMainFragment.5
            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "MembersOnline";
            }

            @Override // com.narvii.livelayer.LiveLayerMemberAdapter
            protected String getLiveLayerTopic() {
                return "online-members";
            }

            @Override // com.narvii.livelayer.LiveLayerMemberAdapter
            public int getTitleIcon() {
                return R.drawable.live_layer_online_member_icon_green_oval;
            }

            @Override // com.narvii.livelayer.LiveLayerMemberAdapter
            public int getTitleIconBackground() {
                return 0;
            }

            @Override // com.narvii.livelayer.LiveLayerMemberAdapter
            protected boolean blockUserClick() {
                return LiveLayerMainFragment.this.blockClickEvent();
            }

            @Override // com.narvii.livelayer.LiveLayerMemberAdapter, com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
            public int getCount() {
                LiveLayerMainData liveLayerMainData = cachedLiveLayerMainData;
                if (liveLayerMainData != null && liveLayerMainData.userListResponse != null) {
                    return super.getCount();
                }
                LiveLayerMemberAdapter liveLayerMemberAdapter3 = LiveLayerMainFragment.this.pageOnline;
                if (liveLayerMemberAdapter3 == null || liveLayerMemberAdapter3.isRequestFinished()) {
                    return super.getCount();
                }
                return 0;
            }

            @Override // com.narvii.livelayer.LiveLayerMemberAdapter
            public String getTitleView() {
                return TextUtils.getCountTitle(this.context.getContext().getString(R.string.members_online), this.userCount);
            }

            @Override // com.narvii.livelayer.LiveLayerMemberAdapter
            public boolean onMoreItemClick() {
                Intent intent = FragmentWrapperActivity.intent(OnlineMembersFragment.class);
                BackgroundHelper.saveWithDrawable(LiveLayerMainFragment.this.backgroundDrawable);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
        };
        this.allOnline = liveLayerMemberAdapter2;
        boolean z6 = false;
        if (cachedLiveLayerMainData != null && (userListResponse = cachedLiveLayerMainData.userListResponse) != null) {
            liveLayerMemberAdapter2.setCachedUserListResponse(userListResponse);
            this.allOnline.refresh(0, null);
        }
        LiveLayerMemberAdapter liveLayerMemberAdapter3 = this.allOnline;
        liveLayerMemberAdapter3.source = "Live Layer (Home)";
        mergeAdapter.addAdapter(liveLayerMemberAdapter3, true);
        mergeAdapter.addAdapter(new MarginAdapter(this, getContext().getResources().getDimensionPixelSize(R.dimen.online_category_padding)));
        LiveLayerOnlineCategoryAdapter liveLayerOnlineCategoryAdapter = new LiveLayerOnlineCategoryAdapter(this) { // from class: com.narvii.livelayer.LiveLayerMainFragment.6
            @Override // android.widget.BaseAdapter, android.widget.ListAdapter
            public boolean isEnabled(int i10) {
                return false;
            }

            @Override // com.narvii.livelayer.LiveLayerOnlineCategoryAdapter, android.widget.Adapter
            public int getCount() {
                LiveLayerMainData liveLayerMainData = cachedLiveLayerMainData;
                if (liveLayerMainData != null && liveLayerMainData.onlineCategoryList != null) {
                    return super.getCount();
                }
                LiveLayerMemberAdapter liveLayerMemberAdapter4 = LiveLayerMainFragment.this.allOnline;
                if (liveLayerMemberAdapter4 == null || liveLayerMemberAdapter4.isRequestFinished()) {
                    return super.getCount();
                }
                return 0;
            }

            @Override // com.narvii.livelayer.LiveLayerOnlineCategoryAdapter
            protected void gotoFragment(Class<? extends LiveLayerDetailBaseFragment> cls) {
                LiveLayerDetailBaseFragment liveLayerDetailBaseFragmentNewInstance;
                if (LiveLayerMainFragment.this.isHidden() || LiveLayerMainFragment.this.getFragmentManager() == null) {
                    return;
                }
                try {
                    liveLayerDetailBaseFragmentNewInstance = cls.newInstance();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                    liveLayerDetailBaseFragmentNewInstance = null;
                } catch (InstantiationException e2) {
                    e2.printStackTrace();
                    liveLayerDetailBaseFragmentNewInstance = null;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(ExternalPostPreviewFragment.SOURCE, "Live Layer");
                liveLayerDetailBaseFragmentNewInstance.setArguments(bundle2);
                BackgroundHelper.saveWithDrawable(LiveLayerMainFragment.this.backgroundDrawable);
                LiveLayerMainFragment.this.getFragmentManager().q().r(LiveLayerMainFragment.this).b(R.id.frame, liveLayerDetailBaseFragmentNewInstance).h(null).k();
                try {
                    LiveLayerMainFragment.this.getFragmentManager().i0();
                } catch (Exception unused) {
                }
            }
        };
        this.onlineCategoryAdapter = liveLayerOnlineCategoryAdapter;
        if (cachedLiveLayerMainData != null && (list = cachedLiveLayerMainData.onlineCategoryList) != null) {
            liveLayerOnlineCategoryAdapter.setCachedListData(list);
        }
        mergeAdapter.addAdapter(this.onlineCategoryAdapter);
        mergeAdapter.addAdapter(new MarginAdapter(this, getContext().getResources().getDimensionPixelSize(R.dimen.online_category_padding)));
        NVPagerStatusAdapter nVPagerStatusAdapter = new NVPagerStatusAdapter(this) { // from class: com.narvii.livelayer.LiveLayerMainFragment.7
            @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.Adapter
            public int getCount() {
                return (!(LiveLayerMainFragment.this.onlineCategoryAdapter.contentEmpty() && LiveLayerMainFragment.this.onlineCategoryAdapter.isLoading()) && LiveLayerMainFragment.this.onlineCategoryAdapter.errorMessage() == null) ? 0 : 1;
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter
            protected void onEmptyClickRetry() {
                LiveLayerMainFragment.this.onRefresh();
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter
            protected void onErrorClickRetry() {
                LiveLayerMainFragment.this.onRefresh();
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public int getItemViewType(int i10) {
                int itemViewType = super.getItemViewType(i10);
                if (itemViewType == -2) {
                    return itemViewType;
                }
                if (LiveLayerMainFragment.this.onlineCategoryAdapter.contentEmpty() && !LiveLayerMainFragment.this.onlineCategoryAdapter.isLoading()) {
                    return -1;
                }
                return -3;
            }

            @Override // com.narvii.adapter.NVPagerStatusAdapter
            protected int getMinHeight() {
                int iDpToPx;
                int i10 = getContext().getResources().getDisplayMetrics().heightPixels;
                LiveLayerMemberAdapter liveLayerMemberAdapter4 = LiveLayerMainFragment.this.pageOnline;
                int iDpToPx2 = 0;
                if (liveLayerMemberAdapter4 != null && liveLayerMemberAdapter4.getCount() != 0) {
                    iDpToPx = (int) Utils.dpToPx(getContext(), 120.0f);
                } else {
                    iDpToPx = 0;
                }
                LiveLayerMemberAdapter liveLayerMemberAdapter5 = LiveLayerMainFragment.this.allOnline;
                if (liveLayerMemberAdapter5 != null && liveLayerMemberAdapter5.getCount() != 0) {
                    iDpToPx2 = (int) Utils.dpToPx(getContext(), 120.0f);
                }
                return ((((i10 - LiveLayerMainFragment.this.getStatusBarOverlaySize()) - (LiveLayerMainFragment.this.getActionBarOverlaySize() * 2)) - iDpToPx) - iDpToPx2) - (getContext().getResources().getDimensionPixelSize(R.dimen.online_category_padding) * 2);
            }
        };
        this.emptyViewAdapter = nVPagerStatusAdapter;
        nVPagerStatusAdapter.setAdapter(this.onlineCategoryAdapter);
        mergeAdapter.addAdapter(this.emptyViewAdapter);
        if (!getBooleanParam("fromCommunityDetail")) {
            final AllMembersTitleAdapter allMembersTitleAdapter = new AllMembersTitleAdapter(this);
            mergeAdapter.addAdapter(allMembersTitleAdapter);
            PeopleListAdapter peopleListAdapter = new PeopleListAdapter(this, z6) { // from class: com.narvii.livelayer.LiveLayerMainFragment.8
                public static final int MEMBERS_COUNT = 60;

                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.members.PeopleListAdapter
                public int allMembersLimit() {
                    return 60;
                }

                @Override // com.narvii.members.PeopleListAdapter
                protected void onAllMembersCountFetched(int i10) {
                    allMembersTitleAdapter.updateTitle(i10);
                }

                @Override // com.narvii.members.PeopleListAdapter
                protected boolean onSeeAllClick() {
                    if (getAreaName() != null) {
                        logClickEvent(ActSemantic.listViewEnter);
                    }
                    if (LiveLayerMainFragment.this.blockClickEvent()) {
                        return true;
                    }
                    Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Live Layer");
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    return true;
                }
            };
            this.peopleListAdapter = peopleListAdapter;
            mergeAdapter.addAdapter(peopleListAdapter);
        }
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    @NonNull
    protected Drawable getFrameDarkBackgroundDrawable() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        ((LiveLayerService) getService("liveLayer")).unregisterWsListener(this.wsListener);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.livelayer.LiveLayerMainFragment.10
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                if (((NVListFragment) LiveLayerMainFragment.this).swipeLayout != null) {
                    int i10 = this.n + 1;
                    this.n = i10;
                    LiveLayerMainFragment liveLayerMainFragment = LiveLayerMainFragment.this;
                    if (i10 == (liveLayerMainFragment.pageOnline == null ? 0 : 1) + 2) {
                        ((NVListFragment) liveLayerMainFragment).swipeLayout.setRefreshing(false);
                    }
                }
            }
        };
        LiveLayerMemberAdapter liveLayerMemberAdapter = this.pageOnline;
        if (liveLayerMemberAdapter != null) {
            liveLayerMemberAdapter.refresh(512, callback);
        }
        this.allOnline.refresh(512, callback);
        this.onlineCategoryAdapter.refresh(1, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean blockClickEvent() {
        if (shouldShowLoginPage()) {
            return true;
        }
        AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
        final int communityId = ((ConfigService) getService("config")).getCommunityId();
        if (!affiliationsService.contains(communityId)) {
            if (isInVisitorMode()) {
                JoinCommunityDialog.showInnerJoinDialog(this);
            } else {
                Community community = new Community();
                community.id = communityId;
                JoinCommunityDialog.join(getContext(), community, new Callback<Boolean>() { // from class: com.narvii.livelayer.LiveLayerMainFragment.9
                    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            if (LiveLayerMainFragment.this.getBooleanParam("fromCommunityDetail")) {
                                Intent intent = new Intent();
                                intent.putExtra("join", true);
                                LiveLayerMainFragment.this.setResult(-1, intent);
                                LiveLayerMainFragment.this.finish();
                                return;
                            }
                            Intent intent2 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                            intent2.putExtra("id", communityId);
                            intent2.putExtra("joinOnly", true);
                            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(LiveLayerMainFragment.this, intent2);
                        }
                    }
                });
            }
            return true;
        }
        return false;
    }

    private void resetBlurColor() {
        RealtimeBlurLayout realtimeBlurLayout = (RealtimeBlurLayout) getActivity().findViewById(R.id.theme_background_wrapper);
        if (realtimeBlurLayout != null) {
            realtimeBlurLayout.setOverlayColor(-1291845632);
            realtimeBlurLayout.setVisibility(0);
        }
    }

    private void tryBindSwipeView() {
        SwipeableLayout swipeableLayout;
        if (getActivity() != null && (swipeableLayout = (SwipeableLayout) getActivity().findViewById(R.id.frame)) != null) {
            swipeableLayout.bindListView((NVListView) getListView());
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (!isEmbedFragment()) {
            getActivity().getActionBar().hide();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            chatInviteFragment.setArguments(new Bundle());
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").k();
        }
        ((LiveLayerService) getService("liveLayer")).registerWsListener(this.wsListener);
        setShowScrollBarOnlyWhenScroll(true);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_main_layout, viewGroup, false);
        this.backgroundDrawable = BackgroundHelper.getDynamicBackground();
        resetBlurColor();
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z6) {
        super.onHiddenChanged(z6);
        if (!z6) {
            tryBindSwipeView();
            resetBlurColor();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOverscrollHeader(new ColorDrawable(-1721737120));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            LiveLayerMainData liveLayerMainData = new LiveLayerMainData();
            LiveLayerMemberAdapter liveLayerMemberAdapter = this.allOnline;
            if (liveLayerMemberAdapter != null) {
                liveLayerMainData.userListResponse = liveLayerMemberAdapter.getUserListResponse();
            }
            LiveLayerOnlineCategoryAdapter liveLayerOnlineCategoryAdapter = this.onlineCategoryAdapter;
            if (liveLayerOnlineCategoryAdapter != null) {
                liveLayerMainData.onlineCategoryList = liveLayerOnlineCategoryAdapter.getLiveLayerList();
            }
            LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
            if (liveLayerService != null) {
                liveLayerService.cacheLiveLayerMainData(liveLayerMainData);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.offline) {
            this.offline = false;
            this.onlineCategoryAdapter.refresh(0, null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.main_title_layout);
        ((TextView) viewFindViewById.findViewById(R.id.list_title)).setText(getString(R.string.live_layer_title_hint));
        getStatusBarOverlaySize();
        int actionBarOverlaySize = getActionBarOverlaySize();
        ViewGroup.LayoutParams layoutParams = view.findViewById(R.id.main_title_layout).getLayoutParams();
        int i10 = 0;
        if (isEmbedFragment()) {
            actionBarOverlaySize = 0;
        }
        layoutParams.height = actionBarOverlaySize;
        if (isEmbedFragment()) {
            i10 = 8;
        }
        viewFindViewById.setVisibility(i10);
        tryBindSwipeView();
        View viewFindViewById2 = view.findViewById(R.id.minimize);
        if (viewFindViewById2 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams();
            marginLayoutParams.topMargin = (getActionBarOverlaySize() - marginLayoutParams.height) / 2;
            viewFindViewById2.setLayoutParams(marginLayoutParams);
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.livelayer.LiveLayerMainFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LiveLayerMainFragment.this.finish();
                    if (LiveLayerMainFragment.this.getActivity() != null) {
                        LiveLayerMainFragment.this.getActivity().overridePendingTransition(0, R.anim.activity_push_bottom_out);
                    }
                }
            });
        }
    }
}
