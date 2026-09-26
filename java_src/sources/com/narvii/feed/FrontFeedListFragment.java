package com.narvii.feed;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.feed.featured.MoreFeaturedListAdapter;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.list.ProxyAdapter;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.members.NewMemberListRow;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.nvplayer.delegate.NVFeedListVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAds;
import com.narvii.wallet.optinads.OptinAdsAdapter;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.HomeFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class FrontFeedListFragment extends NVListFragment {
    CommunityConfigHelper communityConfigHelper;
    int communityId;
    int displayMode;
    int extraHeight;
    FitTopAdapter fitTopAdapter;
    HomeFrameLayout homeFrame;
    DividerAdapter mDividerAdapter;
    FrontFeaturedAdapter mFeaturedAdapter;
    FeatureLayoutAdapter mFeaturedLayoutAdapter;
    HistoryFeaturedFeedAdapter mHistoryFeaturedFeedAdapter;
    NewestAdapter mNewestAdapter;
    NewMemberListRow newMemberListRow;
    float targetAlpha = 1.0f;
    int highlightColor = -16724355;
    int primaryColor = -16724355;
    private ArrayList<User> cachedNewMemberList = new ArrayList<>();
    private AbsListView.OnScrollListener scrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.feed.FrontFeedListFragment.1
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            if (absListView.getChildCount() != 0) {
                absListView.getChildAt(0);
            }
        }
    };

    private class DividerAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            return true;
        }

        public DividerAdapter() {
            super(FrontFeedListFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            FrontFeaturedAdapter frontFeaturedAdapter = FrontFeedListFragment.this.mFeaturedAdapter;
            return (frontFeaturedAdapter == null || !frontFeaturedAdapter.featureLoadFinished || ((frontFeaturedAdapter.list() == null || FrontFeedListFragment.this.mFeaturedAdapter.list().size() <= 0) && FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.getCount() == 0) || FrontFeedListFragment.this.mNewestAdapter.list().size() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.feed_divider_item, viewGroup, view);
        }
    }

    private class FitTopAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public FitTopAdapter() {
            super(FrontFeedListFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            FrontFeedListFragment frontFeedListFragment = FrontFeedListFragment.this;
            if (frontFeedListFragment.extraHeight == 0) {
                return 0;
            }
            FrontFeaturedAdapter frontFeaturedAdapter = frontFeedListFragment.mFeaturedAdapter;
            if (frontFeaturedAdapter != null && frontFeaturedAdapter.featureStartIndex == 0 && frontFeaturedAdapter.list() != null && FrontFeedListFragment.this.mFeaturedAdapter.list().size() > 0 && (FrontFeedListFragment.this.mFeaturedAdapter.list().get(0) instanceof Feed)) {
                FrontFeedListFragment frontFeedListFragment2 = FrontFeedListFragment.this;
                if (frontFeedListFragment2.displayMode != 4) {
                    FrontFeaturedAdapter frontFeaturedAdapter2 = frontFeedListFragment2.mFeaturedAdapter;
                    return (frontFeaturedAdapter2.featureStartIndex == 0 && ((Feed) frontFeaturedAdapter2.list().get(0)).featureType() == 2) ? 1 : 0;
                }
            }
            return 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = createView(android.R.layout.simple_list_item_1, viewGroup, view);
                view.setMinimumHeight(0);
            }
            if (view.getLayoutParams().height != FrontFeedListFragment.this.extraHeight) {
                view.getLayoutParams().height = FrontFeedListFragment.this.extraHeight;
                view.requestLayout();
            }
            return view;
        }
    }

    private class FrontFeaturedAdapter extends FeaturedFeedAdapter {
        PinLayoutImpressionCollector pinIPC;
        int refreshFlags;

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean useDefaultImpressionCollector() {
            return false;
        }

        public FrontFeaturedAdapter(int i10) {
            super(FrontFeedListFragment.this, i10);
            this.pinIPC = new PinLayoutImpressionCollector(Feed.class) { // from class: com.narvii.feed.FrontFeedListFragment.FrontFeaturedAdapter.1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, ObjectInfo<Feed> objectInfo) {
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    builder.area("PinnedPosts");
                }
            };
            this.displayMode = i10;
            this.source = "Front Page Feed";
            setRefreshWaitTime(1200L);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (this.featureLoadFinished) {
                return super.isEmpty() && FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.isEmpty() && FrontFeedListFragment.this.mNewestAdapter.isEmpty();
            }
            return super.isEmpty();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (!this.featureLoadFinished) {
                return list() != null && list().size() > 0;
            }
            if (list().isEmpty()) {
                return FrontFeedListFragment.this.mNewestAdapter.isListShown() || FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.isListShown();
            }
            return true;
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            FrontFeedListFragment.this.mFeaturedAdapter.setDisplayMode(((ConfigService) getService("config")).getInt("frontPageLayout"));
            this.refreshFlags = i10;
            refreshMonitorStart(i10, callback);
            super.refresh(i10 | 512, null);
            FrontFeedListFragment.this.mNewestAdapter.refresh(i10, null);
            FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.refresh(i10, null);
            refreshMonitorEnd();
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            if (isEmpty()) {
                return super.errorMessage();
            }
            return null;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected void logFeedClickEvent(Feed feed) {
            if (feed.featureType() == 2) {
                getClickEventBuilder(this.pinIPC, feed, ActSemantic.checkDetail).send();
            } else {
                super.logFeedClickEvent(feed);
            }
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new FeatureLayoutImpressionCollector(Feed.class));
            addImpressionCollector(this.pinIPC, false);
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            resetList();
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i10) {
            super.onPageResponse(apiRequest, listResponse, i10);
            NewestAdapter newestAdapter = FrontFeedListFragment.this.mNewestAdapter;
            if (newestAdapter.pendingForFeatured) {
                newestAdapter.resetList();
            }
            FrontFeedListFragment frontFeedListFragment = FrontFeedListFragment.this;
            boolean z6 = true;
            if (frontFeedListFragment.mHistoryFeaturedFeedAdapter != null) {
                if (this.featureLoadFinished && (frontFeedListFragment.mFeaturedAdapter.list() == null || FrontFeedListFragment.this.mFeaturedAdapter.list().size() == 0 || FrontFeedListFragment.this.mFeaturedAdapter.getTopCellCount() == 0)) {
                    FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.setShowStyle(1);
                } else {
                    FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.setShowStyle(0);
                }
            }
            if (listResponse.list() == null || listResponse.list().size() <= 0 || ((Feed) listResponse.list().get(0)).firstMedia() == null || ((Feed) listResponse.list().get(0)).featureType() != 1 || this.displayMode == 4) {
                z6 = false;
            }
            if (listResponse.list() != null && listResponse.list().size() != 0 && z6) {
                FrontFeedListFragment.this.targetAlpha = 0.6f;
            } else {
                FrontFeedListFragment.this.targetAlpha = 1.0f;
            }
            FrontFeedListFragment.this.updateTabLayout();
            notifyDataSetChanged();
        }
    }

    class HistoryFeaturedFeedAdapter extends MoreFeaturedListAdapter {
        public HistoryFeaturedFeedAdapter() {
            super(FrontFeedListFragment.this);
            this.detailOpenSource = "Front Page Feed";
        }

        @Override // com.narvii.feed.featured.MoreFeaturedListAdapter, android.widget.Adapter
        public int getCount() {
            FrontFeaturedAdapter frontFeaturedAdapter = FrontFeedListFragment.this.mFeaturedAdapter;
            if (frontFeaturedAdapter == null || !frontFeaturedAdapter.featureLoadFinished) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.feed.featured.MoreFeaturedListAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            DividerAdapter dividerAdapter = FrontFeedListFragment.this.mDividerAdapter;
            if (dividerAdapter != null) {
                dividerAdapter.notifyDataSetChanged();
            }
        }
    }

    private class LayoutAdapter extends FeatureLayoutAdapter {
        OptinAdsAdapter oaa;

        public LayoutAdapter(FeaturedFeedAdapter featuredFeedAdapter) {
            super(FrontFeedListFragment.this, featuredFeedAdapter);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            OptinAdsAdapter optinAdsAdapter = this.oaa;
            if (optinAdsAdapter != null) {
                optinAdsAdapter.set(getPinCount() + 3, 3);
            }
        }
    }

    private class NewMembersAdapter extends ProxyAdapter implements ObjectItemClickListener {
        public static final int ITEM_VIEW_TYPE_NEW_MEMBER_LIST = -10;
        public final Tag NEW_MEMBERS;
        private int appearPos;
        private int appearPosWithoutPin;
        RecyclerInListViewImpressionCollector ipc;
        private boolean isInsideLatest;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "NewestMembers";
        }

        @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            int iTrans = trans(i10);
            if (iTrans < 0) {
                return true;
            }
            return super.onItemClick(listAdapter, iTrans, obj, view, view2);
        }

        public NewMembersAdapter(NVContext nVContext, int i10, boolean z6) {
            super(nVContext);
            this.NEW_MEMBERS = new Tag("new_members_list");
            this.ipc = new RecyclerInListViewImpressionCollector(User.class, R.id.new_members_list);
            this.appearPos = i10;
            this.appearPosWithoutPin = i10;
            this.isInsideLatest = z6;
        }

        private boolean shouldShow() {
            if (this.isInsideLatest) {
                return FrontFeedListFragment.this.mFeaturedLayoutAdapter.getCount() - FrontFeedListFragment.this.mFeaturedLayoutAdapter.getPinCount() <= 3;
            }
            this.appearPos = this.appearPosWithoutPin + FrontFeedListFragment.this.mFeaturedLayoutAdapter.getPinCount();
            return true;
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public int getCount() {
            int count = this.wrapped.getCount();
            return (!shouldShow() || count <= this.appearPos) ? count : count + 1;
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.wrapped.getViewTypeCount() + 1;
        }

        private int trans(int i10) {
            int i11;
            if (!shouldShow() || i10 < (i11 = this.appearPos)) {
                return i10;
            }
            if (i10 == i11) {
                return -1;
            }
            return i10 - 1;
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public Object getItem(int i10) {
            int iTrans = trans(i10);
            if (iTrans < 0) {
                return this.NEW_MEMBERS;
            }
            return this.wrapped.getItem(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public long getItemId(int i10) {
            int iTrans = trans(i10);
            if (iTrans < 0) {
                return iTrans | (this.NEW_MEMBERS.hashCode() << 32);
            }
            return this.wrapped.getItemId(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            int iTrans = trans(i10);
            if (iTrans == -1) {
                return -10;
            }
            return this.wrapped.getItemViewType(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int iTrans = trans(i10);
            if (iTrans < 0) {
                FrontFeedListFragment frontFeedListFragment = FrontFeedListFragment.this;
                if (frontFeedListFragment.newMemberListRow == null) {
                    frontFeedListFragment.newMemberListRow = (NewMemberListRow) LayoutInflater.from(this.context.getContext()).inflate(R.layout.item_new_member_list_row, viewGroup, false);
                    FrontFeedListFragment.this.newMemberListRow.setItemClickListener(this);
                }
                FrontFeedListFragment frontFeedListFragment2 = FrontFeedListFragment.this;
                frontFeedListFragment2.newMemberListRow.setupMemberList(this.context, frontFeedListFragment2.communityId, frontFeedListFragment2.cachedNewMemberList);
                LogUtils.recyclerShownInAdapter(FrontFeedListFragment.this.newMemberListRow, this.ipc);
                return FrontFeedListFragment.this.newMemberListRow;
            }
            return this.wrapped.getView(iTrans, view, viewGroup);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            int iTrans = trans(i10);
            if (iTrans < 0) {
                return false;
            }
            return this.wrapped.isEnabled(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(this.ipc);
        }

        @Override // com.narvii.list.ObjectItemClickListener
        public void onItemClick(NVObject nVObject) {
            if (nVObject == null) {
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("NewestMembersMore").send();
            } else if (nVObject instanceof User) {
                logClickEvent(nVObject, ActSemantic.checkDetail);
            }
        }

        @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            int iTrans = trans(i10);
            if (iTrans < 0) {
                return false;
            }
            return super.onLongClick(listAdapter, iTrans, obj, view, view2);
        }
    }

    class NewestAdapter extends FeedListAdapter {
        boolean pendingForFeatured;

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "LatestList";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public NewestAdapter() {
            super(FrontFeedListFragment.this);
            this.source = "Front Page Feed";
            this.paginationType = 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            FrontFeaturedAdapter frontFeaturedAdapter = FrontFeedListFragment.this.mFeaturedAdapter;
            if (frontFeaturedAdapter == null || !frontFeaturedAdapter.featureLoadFinished) {
                this.pendingForFeatured = true;
                return null;
            }
            this.pendingForFeatured = false;
            return ApiRequest.builder().path("/feed/blog-all").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Feed> filterResponseList(List<Feed> list, int i10) {
            ArrayList arrayList = new ArrayList(super.filterResponseList(list, i10));
            Iterator it = FrontFeedListFragment.this.mFeaturedAdapter.rawList().iterator();
            while (it.hasNext()) {
                Utils.removeId(arrayList, ((Feed) it.next()).id());
            }
            return arrayList;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            FrontFeaturedAdapter frontFeaturedAdapter = FrontFeedListFragment.this.mFeaturedAdapter;
            if (frontFeaturedAdapter == null || !frontFeaturedAdapter.featureLoadFinished) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            return super.getItemView(obj, view, viewGroup);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            super.onNotification(notification);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "featured_feed";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    private NVAdapter applyNewMemberAdapterAsWrapper(NVAdapter nVAdapter) {
        NewMembersAdapter newMembersAdapter = new NewMembersAdapter(this, 3, false);
        newMembersAdapter.setAdapter(nVAdapter);
        return newMembersAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mFeaturedAdapter = new FrontFeaturedAdapter(this.displayMode);
        LayoutAdapter layoutAdapter = new LayoutAdapter(this.mFeaturedAdapter);
        this.mFeaturedLayoutAdapter = layoutAdapter;
        this.mDividerAdapter = new DividerAdapter();
        this.mNewestAdapter = new NewestAdapter();
        com.narvii.list.DividerAdapter dividerAdapter = new com.narvii.list.DividerAdapter(this);
        NVAdapter nVAdapter = OptinAdsUtil.setupAdapter(this, this.mNewestAdapter, getString(R.string.mopub_unitid_mrec_feed), false);
        NewMembersAdapter newMembersAdapter = new NewMembersAdapter(this, 5, true);
        newMembersAdapter.setAdapter(nVAdapter);
        dividerAdapter.setAdapter(newMembersAdapter);
        this.mHistoryFeaturedFeedAdapter = new HistoryFeaturedFeedAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (isEmbedFragment()) {
            FitTopAdapter fitTopAdapter = new FitTopAdapter();
            this.fitTopAdapter = fitTopAdapter;
            mergeAdapter.addAdapter(fitTopAdapter);
        }
        if (OptinAds.optin(this, 1)) {
            OptinAdsAdapter optinAdsAdapter = new OptinAdsAdapter(this, 3, 3, getString(R.string.mopub_unitid_mrec_feed));
            optinAdsAdapter.setDarkTheme(isDarkTheme());
            optinAdsAdapter.setAdapter(layoutAdapter);
            layoutAdapter.oaa = optinAdsAdapter;
            mergeAdapter.addAdapter(applyNewMemberAdapterAsWrapper(optinAdsAdapter), true);
        } else {
            mergeAdapter.addAdapter(applyNewMemberAdapterAsWrapper(layoutAdapter), true);
        }
        mergeAdapter.addAdapter(this.mHistoryFeaturedFeedAdapter);
        mergeAdapter.addAdapter(this.mDividerAdapter);
        mergeAdapter.addAdapter(dividerAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVFeedListVideoDelegate(this, getActivity());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 201 && i11 == -1) {
            NVToast.makeText(getContext(), getString(R.string.change_category_successfully), 0).show();
        }
        super.onActivityResult(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabLayout() {
        if (getParentFragment() instanceof HomeFragment) {
            ((HomeFragment) getParentFragment()).updateTabView(this);
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isActive() {
        return super.isActive();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        ((LiveLayerService) getService("liveLayer")).reportBrowsing(Module.MODULE_FEATURED, z6);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.main_featured_title_popular);
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.communityId = ((ConfigService) getService("config")).getCommunityId();
        this.displayMode = this.communityConfigHelper.getFeaturedLayout();
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Featured Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Featured Page Opened Total");
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.home_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.front_feed_empty_view);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOnScrollListener(this.scrollListener);
    }

    @Override // com.narvii.list.NVListFragment
    public void onRefresh(Callback<Integer> callback) {
        super.onRefresh(callback);
        this.cachedNewMemberList.clear();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.homeFrame = (HomeFrameLayout) view.findViewById(R.id.list_frame);
        int iColorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
        float[] fArr = new float[3];
        Color.colorToHSV(iColorPrimary, fArr);
        fArr[1] = (float) (((double) fArr[1]) * 0.75d);
        fArr[2] = (float) (((double) fArr[2]) * 1.1d);
        this.primaryColor = iColorPrimary;
        this.highlightColor = Color.HSVToColor(fArr);
    }
}
