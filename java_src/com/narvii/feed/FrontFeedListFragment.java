package com.narvii.feed;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.feed.featured.MoreFeaturedListAdapter;
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
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayer.delegate.NVFeedListVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.HomeFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
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
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (absListView.getChildCount() == 0 || absListView.getChildAt(0) == null) {
            }
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Featured";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.main_featured_title_popular);
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.communityId = ((ConfigService) getService("config")).getCommunityId();
        this.displayMode = this.communityConfigHelper.getFeaturedLayout();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.home_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.homeFrame = (HomeFrameLayout) view.findViewById(R.id.list_frame);
        int iColorPrimary = ((ConfigService) getService("config")).getTheme().colorPrimary();
        float[] fArr = {0.0f, (float) (d * 0.75d), (float) (d * 1.1d)};
        Color.colorToHSV(iColorPrimary, fArr);
        double d = fArr[1];
        Double.isNaN(d);
        double d2 = fArr[2];
        Double.isNaN(d2);
        this.primaryColor = iColorPrimary;
        this.highlightColor = Color.HSVToColor(fArr);
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return ViewUtils.getBannerLift(this, 16);
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mFeaturedAdapter = new FrontFeaturedAdapter(this.displayMode);
        LayoutAdapter layoutAdapter = new LayoutAdapter(this.mFeaturedAdapter);
        this.mFeaturedLayoutAdapter = layoutAdapter;
        this.mDividerAdapter = new DividerAdapter();
        this.mNewestAdapter = new NewestAdapter();
        com.narvii.list.DividerAdapter dividerAdapter = new com.narvii.list.DividerAdapter(this);
        NewestAdapter newestAdapter = this.mNewestAdapter;
        NewMembersAdapter newMembersAdapter = new NewMembersAdapter(this, 5, true);
        newMembersAdapter.setAdapter(newestAdapter);
        dividerAdapter.setAdapter(newMembersAdapter);
        this.mHistoryFeaturedFeedAdapter = new HistoryFeaturedFeedAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        if (isEmbedFragment()) {
            FitTopAdapter fitTopAdapter = new FitTopAdapter();
            this.fitTopAdapter = fitTopAdapter;
            mergeAdapter.addAdapter(fitTopAdapter);
        }
        mergeAdapter.addAdapter(applyNewMemberAdapterAsWrapper(layoutAdapter), true);
        mergeAdapter.addAdapter(this.mHistoryFeaturedFeedAdapter);
        mergeAdapter.addAdapter(this.mDividerAdapter);
        mergeAdapter.addAdapter(dividerAdapter);
        return mergeAdapter;
    }

    private NVAdapter applyNewMemberAdapterAsWrapper(NVAdapter nVAdapter) {
        NewMembersAdapter newMembersAdapter = new NewMembersAdapter(this, 3, false);
        newMembersAdapter.setAdapter(nVAdapter);
        return newMembersAdapter;
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

        public NewMembersAdapter(NVContext nVContext, int i, boolean z) {
            super(nVContext);
            this.NEW_MEMBERS = new Tag("new_members_list");
            this.ipc = new RecyclerInListViewImpressionCollector(User.class, R.id.new_members_list);
            this.appearPos = i;
            this.appearPosWithoutPin = i;
            this.isInsideLatest = z;
        }

        private boolean shouldShow() {
            if (this.isInsideLatest) {
                return FrontFeedListFragment.this.mFeaturedLayoutAdapter.getCount() - FrontFeedListFragment.this.mFeaturedLayoutAdapter.getPinCount() <= 3;
            }
            this.appearPos = this.appearPosWithoutPin + FrontFeedListFragment.this.mFeaturedLayoutAdapter.getPinCount();
            return true;
        }

        @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(this.ipc);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public Object getItem(int i) {
            int iTrans = trans(i);
            if (iTrans < 0) {
                return this.NEW_MEMBERS;
            }
            return this.wrapped.getItem(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public long getItemId(int i) {
            int iTrans = trans(i);
            if (iTrans < 0) {
                return iTrans | (this.NEW_MEMBERS.hashCode() << 32);
            }
            return this.wrapped.getItemId(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int iTrans = trans(i);
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

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public int getCount() {
            int count = this.wrapped.getCount();
            return (!shouldShow() || count <= this.appearPos) ? count : count + 1;
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.wrapped.getViewTypeCount() + 1;
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            int iTrans = trans(i);
            if (iTrans == -1) {
                return -10;
            }
            return this.wrapped.getItemViewType(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            int iTrans = trans(i);
            if (iTrans < 0) {
                return false;
            }
            return this.wrapped.isEnabled(iTrans);
        }

        @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            int iTrans = trans(i);
            if (iTrans < 0) {
                return true;
            }
            return super.onItemClick(listAdapter, iTrans, obj, view, view2);
        }

        @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            int iTrans = trans(i);
            if (iTrans < 0) {
                return false;
            }
            return super.onLongClick(listAdapter, iTrans, obj, view, view2);
        }

        private int trans(int i) {
            int i2;
            if (!shouldShow() || i < (i2 = this.appearPos)) {
                return i;
            }
            if (i == i2) {
                return -1;
            }
            return i - 1;
        }

        @Override // com.narvii.list.ObjectItemClickListener
        public void onItemClick(NVObject nVObject) {
            if (nVObject == null) {
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("NewestMembersMore").send();
            } else if (nVObject instanceof User) {
                logClickEvent(nVObject, ActSemantic.checkDetail);
            }
        }
    }

    private class FrontFeaturedAdapter extends FeaturedFeedAdapter {
        PinLayoutImpressionCollector pinIPC;
        int refreshFlags;

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean useDefaultImpressionCollector() {
            return false;
        }

        public FrontFeaturedAdapter(int i) {
            super(FrontFeedListFragment.this, i);
            this.pinIPC = new PinLayoutImpressionCollector(Feed.class) { // from class: com.narvii.feed.FrontFeedListFragment.FrontFeaturedAdapter.1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Feed> objectInfo) {
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    builder.area("PinnedPosts");
                }
            };
            this.displayMode = i;
            this.source = "Front Page Feed";
            setRefreshWaitTime(1200L);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new FeatureLayoutImpressionCollector(Feed.class));
            addImpressionCollector(this.pinIPC, false);
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i) {
            super.onPageResponse(apiRequest, listResponse, i);
            NewestAdapter newestAdapter = FrontFeedListFragment.this.mNewestAdapter;
            if (newestAdapter.pendingForFeatured) {
                newestAdapter.resetList();
            }
            FrontFeedListFragment frontFeedListFragment = FrontFeedListFragment.this;
            if (frontFeedListFragment.mHistoryFeaturedFeedAdapter != null) {
                if (this.featureLoadFinished && (frontFeedListFragment.mFeaturedAdapter.list() == null || FrontFeedListFragment.this.mFeaturedAdapter.list().size() == 0 || FrontFeedListFragment.this.mFeaturedAdapter.getTopCellCount() == 0)) {
                    FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.setShowStyle(1);
                } else {
                    FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.setShowStyle(0);
                }
            }
            boolean z = (listResponse.list() == null || listResponse.list().size() <= 0 || ((Feed) listResponse.list().get(0)).firstMedia() == null || ((Feed) listResponse.list().get(0)).featureType() != 1 || this.displayMode == 4) ? false : true;
            if (listResponse.list() == null || listResponse.list().size() == 0 || !z) {
                FrontFeedListFragment.this.targetAlpha = 1.0f;
            } else {
                FrontFeedListFragment.this.targetAlpha = 0.6f;
            }
            FrontFeedListFragment.this.updateTabLayout();
            notifyDataSetChanged();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected void logFeedClickEvent(Feed feed) {
            if (feed.featureType() == 2) {
                getClickEventBuilder(this.pinIPC, feed, ActSemantic.checkDetail).send();
            } else {
                super.logFeedClickEvent(feed);
            }
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.featureLoadFinished ? !list().isEmpty() || FrontFeedListFragment.this.mNewestAdapter.isListShown() || FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.isListShown() : list() != null && list().size() > 0;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (this.featureLoadFinished) {
                return super.isEmpty() && FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.isEmpty() && FrontFeedListFragment.this.mNewestAdapter.isEmpty();
            }
            return super.isEmpty();
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            if (isEmpty()) {
                return super.errorMessage();
            }
            return null;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            FrontFeedListFragment.this.mFeaturedAdapter.setDisplayMode(((ConfigService) getService("config")).getInt("frontPageLayout"));
            this.refreshFlags = i;
            refreshMonitorStart(i, callback);
            super.refresh(i | 512, null);
            FrontFeedListFragment.this.mNewestAdapter.refresh(i, null);
            FrontFeedListFragment.this.mHistoryFeaturedFeedAdapter.refresh(i, null);
            refreshMonitorEnd();
        }

        @Override // com.narvii.feed.FeaturedFeedAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            resetList();
        }
    }

    private class LayoutAdapter extends FeatureLayoutAdapter {
        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
        }

        public LayoutAdapter(FeaturedFeedAdapter featuredFeedAdapter) {
            super(FrontFeedListFragment.this, featuredFeedAdapter);
        }
    }

    private class FitTopAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
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
        public View getView(int i, View view, ViewGroup viewGroup) {
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

    private class DividerAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
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
        public View getView(int i, View view, ViewGroup viewGroup) {
            return createView(R.layout.feed_divider_item, viewGroup, view);
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

    class NewestAdapter extends FeedListAdapter implements NotificationListener {
        boolean pendingForFeatured;

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "LatestList";
        }

        public NewestAdapter() {
            super(FrontFeedListFragment.this);
            this.source = "Front Page Feed";
            this.paginationType = 1;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            return new Bundle();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            FrontFeaturedAdapter frontFeaturedAdapter = FrontFeedListFragment.this.mFeaturedAdapter;
            if (frontFeaturedAdapter == null || !frontFeaturedAdapter.featureLoadFinished) {
                return 0;
            }
            return super.getCount();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            FrontFeaturedAdapter frontFeaturedAdapter = FrontFeedListFragment.this.mFeaturedAdapter;
            if (frontFeaturedAdapter == null || !frontFeaturedAdapter.featureLoadFinished) {
                this.pendingForFeatured = true;
                return null;
            }
            this.pendingForFeatured = false;
            return ApiRequest.builder().path("/feed/blog-all").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Feed> filterResponseList(List<Feed> list, int i) {
            ArrayList arrayList = new ArrayList(super.filterResponseList(list, i));
            Iterator it = FrontFeedListFragment.this.mFeaturedAdapter.rawList().iterator();
            while (it.hasNext()) {
                Utils.removeId(arrayList, ((Feed) it.next()).id());
            }
            return arrayList;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            super.onNotification(notification);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            return super.getItemView(obj, view, viewGroup);
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isActive() {
        return super.isActive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabLayout() {
        if (getParentFragment() instanceof HomeFragment) {
            ((HomeFragment) getParentFragment()).updateTabView(this);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        ((LiveLayerService) getService("liveLayer")).reportBrowsing(Module.MODULE_FEATURED, z);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 201 && i2 == -1) {
            NVToast.makeText(getContext(), getString(R.string.change_category_successfully), 0).show();
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVFeedListVideoDelegate(this, getActivity());
    }
}
