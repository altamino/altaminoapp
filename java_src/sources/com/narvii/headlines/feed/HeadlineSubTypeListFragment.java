package com.narvii.headlines.feed;

import a0.a;
import a0.b;
import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.rebound.d;
import com.facebook.rebound.e;
import com.facebook.rebound.i;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.community.ReminderCheck;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.HeadLineSessionIdUpdateListener;
import com.narvii.headlines.HeadlineListResponse;
import com.narvii.headlines.HeadlinePreferencesHelper;
import com.narvii.headlines.HeadlineRefreshMonitor;
import com.narvii.headlines.category.HeadLineChannel;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.HeadlineDividerAdapter;
import com.narvii.master.MasterBottomAdapter;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.nvplayer.delegate.HeadLineVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.SmoothProgressBar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class HeadlineSubTypeListFragment extends NVListFragment implements RecentCommunityHelper.RecentCommunityChangeListener, AffiliationsService.AffiliationChangeListener, MyCommunityListService.MyCommunityListObserver, HeadLineSessionIdUpdateListener {
    private static final int HEADLINE_REFRESH_SCROLL_LIMIT = 10;
    public static final String KEY_HEADLINE_CATEGORY = "key_category";
    public static final TmpValue<String> REFRESH_SOURCE = new TmpValue<>();
    private AffiliationsService affiliationsService;
    private FeedAdapter feedAdapter;
    private boolean firstRequesting;
    private HeadLineChannel headLineCategory;
    private boolean isHotCategoryTab;
    private boolean isMyAminoTab;
    private boolean isScrollToTopRequest;
    private ContentLanguageService languageService;
    private int lastFirstVisibleIndex;
    private MyLaunchHelper launchHelper;
    LoggingService logging;
    private MyCommunityListService myCommunityListService;
    private MyRecentAminoAdapter myRecentAminoAdapter;
    private TextView newHeadLineHint;
    private HeadlinePreferencesHelper preferencesHelper;
    PreferencesHelper prefsHelper;
    private List<Community> recentCommunities;
    private RecentCommunityHelper recentCommunityHelper;
    private boolean refreshShowedBefore;
    int screenHeight;
    private boolean isFirst = true;
    List<String> loggedFeedId = new ArrayList();
    HashMap<String, Long> loggedFeedSeenStart = new HashMap<>();
    HashMap<String, Long> loggedFeedUnseenDuration = new HashMap<>();
    HashMap<String, LogStub> loggedFeedUnseenStub = new HashMap<>();
    EventDispatcher<HeadlineRefreshMonitor> headlineRefreshMointorEventDispatcher = new EventDispatcher<>();
    AbsListView.OnScrollListener scrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.1
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            if (i10 == 0 && HeadlineSubTypeListFragment.this.isScrollToTopRequest) {
                HeadlineSubTypeListFragment.this.isScrollToTopRequest = false;
                if (((NVListFragment) HeadlineSubTypeListFragment.this).swipeLayout != null) {
                    ((NVListFragment) HeadlineSubTypeListFragment.this).swipeLayout.setRefreshing(true);
                }
                HeadlineSubTypeListFragment.this.onRefresh();
            }
            if (HeadlineSubTypeListFragment.this.isFirst) {
                HeadlineSubTypeListFragment.this.isFirst = false;
                Utils.handler.removeCallbacks(HeadlineSubTypeListFragment.this.notScrollCheckRunnable);
                Utils.postDelayed(HeadlineSubTypeListFragment.this.notScrollCheckRunnable, 500L);
            }
            boolean z6 = (HeadlineSubTypeListFragment.this.getParentFragment() instanceof NVBaseScrollableTabFragment) && ((NVBaseScrollableTabFragment) HeadlineSubTypeListFragment.this.getParentFragment()).getCurrentFragment() == HeadlineSubTypeListFragment.this;
            if ((HeadlineSubTypeListFragment.this.headLineCategory == null || !Utils.isEqualsNotNull(HeadlineSubTypeListFragment.this.headLineCategory.channelId, HeadLineChannel.CHANNEL_MY_AMINO_ID)) && i10 > 10 && !HeadlineSubTypeListFragment.this.refreshShowedBefore && z6) {
                HeadlineSubTypeListFragment.this.headlineRefreshMointorEventDispatcher.dispatch(new Callback<HeadlineRefreshMonitor>() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.1.1
                    @Override // com.narvii.util.Callback
                    public void call(HeadlineRefreshMonitor headlineRefreshMonitor) {
                        HeadlineSubTypeListFragment.this.refreshShowedBefore = true;
                        headlineRefreshMonitor.isReadyToRefreshHeadline(true);
                    }
                });
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 != 0) {
                Utils.handler.removeCallbacks(HeadlineSubTypeListFragment.this.notScrollCheckRunnable);
                return;
            }
            HeadlineSubTypeListFragment headlineSubTypeListFragment = HeadlineSubTypeListFragment.this;
            headlineSubTypeListFragment.lastFirstVisibleIndex = headlineSubTypeListFragment.getListView().getFirstVisiblePosition();
            Utils.handler.removeCallbacks(HeadlineSubTypeListFragment.this.notScrollCheckRunnable);
            Utils.postDelayed(HeadlineSubTypeListFragment.this.notScrollCheckRunnable, 500L);
        }
    };
    Runnable notScrollCheckRunnable = new Runnable() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.2
        @Override // java.lang.Runnable
        public void run() {
            View childAt;
            View viewFindViewById;
            int suitablePosition = HeadlineSubTypeListFragment.this.getSuitablePosition();
            Feed mappedFeed = HeadlineSubTypeListFragment.this.getMappedFeed(suitablePosition);
            if (mappedFeed == null || HeadlineSubTypeListFragment.this.feedAdapter.fixedFeatureMode.containsKey(mappedFeed.id()) || HeadlineSubTypeListFragment.this.getListView().getChildCount() <= suitablePosition || (childAt = HeadlineSubTypeListFragment.this.getListView().getChildAt(suitablePosition)) == null || (viewFindViewById = childAt.findViewById(R.id.feature_tag)) == null) {
                return;
            }
            viewFindViewById.performClick();
        }
    };
    Callback refreshCallback = new Callback() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.4
        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            if (((NVListFragment) HeadlineSubTypeListFragment.this).swipeLayout != null) {
                ((NVListFragment) HeadlineSubTypeListFragment.this).swipeLayout.setRefreshing(false);
            }
            if (((NVListFragment) HeadlineSubTypeListFragment.this).outerRefreshCallback != null) {
                ((NVListFragment) HeadlineSubTypeListFragment.this).outerRefreshCallback.call(null);
            }
            HeadlineSubTypeListFragment.this.refreshShowedBefore = false;
            HeadlineSubTypeListFragment.this.headlineRefreshMointorEventDispatcher.dispatch(new Callback<HeadlineRefreshMonitor>() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.4.1
                @Override // com.narvii.util.Callback
                public void call(HeadlineRefreshMonitor headlineRefreshMonitor) {
                    headlineRefreshMonitor.isHeadlineRefreshFinished(true);
                }
            });
            if (((NVListFragment) HeadlineSubTypeListFragment.this).mVideoListDelegate == null || !((NVListFragment) HeadlineSubTypeListFragment.this).videoAutoPlay) {
                return;
            }
            ((NVListFragment) HeadlineSubTypeListFragment.this).mVideoListDelegate.onRefresh();
        }
    };
    private Runnable headlineHintRunnable = new Runnable() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.6
        @Override // java.lang.Runnable
        public void run() {
            if (HeadlineSubTypeListFragment.this.newHeadLineHint != null) {
                HeadlineSubTypeListFragment.this.newHeadLineHint.setVisibility(4);
            }
        }
    };

    private class FeedAdapter extends HeadLinesListAdapter {
        String dID;

        public FeedAdapter(NVContext nVContext) {
            super(nVContext);
            this.dID = b.k();
            this.paginationType = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendNoInterestRequest(final Feed feed) {
            if (feed == null) {
                return;
            }
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.FeedAdapter.2
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    FeedAdapter.this.sendNotification(new Notification("delete", feed));
                }
            };
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("headline/feedback/report").post();
            builder.param("type", 1);
            builder.param("language", HeadlineSubTypeListFragment.this.languageService.getRequestPrefLanguageWithLocalAsDefault());
            builder.param(a.o, this.dID);
            builder.param(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(feed.ndcId));
            builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(feed instanceof Item ? 2 : 1));
            builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, feed.id());
            builder.param("channel", HeadlineSubTypeListFragment.this.headLineCategory.channelId);
            ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
            progressDialog.show();
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected String channelId() {
            if (HeadlineSubTypeListFragment.this.headLineCategory == null) {
                return null;
            }
            return HeadlineSubTypeListFragment.this.headLineCategory.channelId;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected boolean enterCommunityDirectly() {
            return HeadlineSubTypeListFragment.this.getBooleanParam("enterCommunityDirectly");
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected String getStoredLastTimeFeedId() {
            if (HeadlineSubTypeListFragment.this.headLineCategory == null) {
                return null;
            }
            return HeadlineSubTypeListFragment.this.preferencesHelper.getLastTimeHeadlineFeedId(HeadlineSubTypeListFragment.this.headLineCategory.channelId);
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, final Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.headline_feed_options) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            final boolean z6 = !HeadLineChannel.CHANNEL_MY_AMINO_ID.equals(HeadlineSubTypeListFragment.this.headLineCategory.channelId);
            if (z6) {
                actionSheetDialog.addItem(R.string.not_interested, 0);
            }
            final boolean zContains = ((AffiliationsService) getService("affiliations")).contains(((Feed) obj).ndcId);
            actionSheetDialog.addItem(R.string.flag_for_review, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.FeedAdapter.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i11) {
                    boolean z10 = z6;
                    boolean z11 = false;
                    boolean z12 = z10 && i11 == 0;
                    if (!z10 ? i11 == 0 : i11 == 1) {
                        z11 = true;
                    }
                    if (z12) {
                        FeedAdapter.this.sendNoInterestRequest((Feed) obj);
                        return;
                    }
                    if (!z11 || FeedAdapter.this.shouldShowDownloadMasterDialog(((Feed) obj).ndcId)) {
                        return;
                    }
                    if (zContains) {
                        new FlagReportOptionDialog.Builder(((NVAdapter) FeedAdapter.this).context).nvObject((Feed) obj).build().show();
                        return;
                    }
                    FeedAdapter feedAdapter = FeedAdapter.this;
                    Object obj2 = obj;
                    feedAdapter.showJoinCommunityDialog(((Feed) obj2).ndcId, ((Feed) obj2).id());
                }
            });
            actionSheetDialog.show();
            return true;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected void onLastReadPointClicked() {
            HeadlineSubTypeListFragment.this.getListView().smoothScrollToPosition(0);
            HeadlineSubTypeListFragment.this.onRefresh();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, HeadlineListResponse headlineListResponse, int i10) {
            HeadlineSubTypeListFragment.this.firstRequesting = false;
            if (i10 == -1 && headlineListResponse.headlinePostList != null) {
                List<Feed> listFilterResponseList = filterResponseList(headlineListResponse.list(), i10);
                HeadlineSubTypeListFragment.this.showNewHeadlineHint(listFilterResponseList != null ? listFilterResponseList.size() : 0);
            }
            super.onPageResponse(apiRequest, headlineListResponse, i10);
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected boolean showLastReadTimePoint() {
            return !(HeadlineSubTypeListFragment.this.headLineCategory != null && Utils.isEqualsNotNull(HeadlineSubTypeListFragment.this.headLineCategory.channelId, HeadLineChannel.CHANNEL_MY_AMINO_ID));
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("headline/feed");
            builder.param("channel", HeadlineSubTypeListFragment.this.headLineCategory.channelId);
            builder.param("language", HeadlineSubTypeListFragment.this.languageService.getRequestPrefLanguageWithLocalAsDefault());
            builder.param(a.o, this.dID);
            builder.param("v", "2.1.0");
            if (z6) {
                builder.tag("start0");
            }
            builder.tag(this.REQ_TAG_QUERY_START_TIME, Long.valueOf(System.currentTimeMillis()));
            HeadlineSubTypeListFragment.this.firstRequesting = z6;
            return builder.build();
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
            super.onFailResponse(apiRequest, str, apiResponse, i10);
            HeadlineSubTypeListFragment.this.firstRequesting = false;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        public void storeLastTimeReadFeedId() {
            super.storeLastTimeReadFeedId();
            if (HeadlineSubTypeListFragment.this.headLineCategory != null && list() != null && list().size() > 0) {
                HeadlineSubTypeListFragment.this.preferencesHelper.saveLastReadHeadlineFeedId(HeadlineSubTypeListFragment.this.headLineCategory.channelId, ((Feed) list().get(0)).id());
            }
        }
    }

    private class MyAminosPostHintAdapter extends AdriftAdapter {
        public MyAminosPostHintAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.my_aminos_post_hint, viewGroup, view);
        }
    }

    private class MyLaunchHelper extends CommunityLaunchHelper {
        Community community;
        NVImageView imageView;
        Activity launchActivity;
        SmoothProgressBar progressBar;
        boolean recent;

        public MyLaunchHelper(NVContext nVContext) {
            super(nVContext, "Headlines");
        }

        private void launchCid(int i10, Drawable drawable) {
            User user;
            String str;
            List<Community> list = HeadlineSubTypeListFragment.this.myCommunityListService.list();
            Community community = null;
            if (list != null) {
                for (Community community2 : list) {
                    if (community2.id == i10) {
                        User userProfile = HeadlineSubTypeListFragment.this.myCommunityListService.getUserProfile(i10);
                        String userInfoTimestamp = HeadlineSubTypeListFragment.this.myCommunityListService.getUserInfoTimestamp(i10);
                        if (userInfoTimestamp == null || userProfile == null) {
                            str = userInfoTimestamp;
                            user = null;
                        } else {
                            community = community2;
                            str = userInfoTimestamp;
                            user = userProfile;
                        }
                    }
                }
                user = null;
                str = null;
            } else {
                user = null;
                str = null;
            }
            launch(i10, community, str, user, str, HeadlineSubTypeListFragment.this.myCommunityListService.getReminder(i10), HeadlineSubTypeListFragment.this.myCommunityListService.getReminderTimestamp(i10), false, 2, drawable);
        }

        public void launchCommunity(Community community, NVImageView nVImageView, SmoothProgressBar smoothProgressBar) {
            this.community = community;
            this.imageView = nVImageView;
            this.progressBar = smoothProgressBar;
            smoothProgressBar.setVisibility(0);
            smoothProgressBar.setMax(100);
            smoothProgressBar.setProgress(0);
            this.recent = false;
            launchCid(community.id, nVImageView.getDrawable());
        }

        public void launchRecent(Community community, NVImageView nVImageView) {
            this.community = community;
            this.imageView = nVImageView;
            this.progressBar = null;
            this.recent = true;
            launchCid(community.id, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            if (this.community == null || HeadlineSubTypeListFragment.this.getActivity() == null) {
                return;
            }
            if (this.imageView == null || this.launchImageDrawable == null) {
                super.onFinish();
                return;
            }
            FragmentActivity activity = HeadlineSubTypeListFragment.this.getActivity();
            this.launchActivity = activity;
            SplashUtils.splash(activity, this.imageView, this.launchImageDrawable, new Callback<Boolean>() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.MyLaunchHelper.1
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        EnterCommunityHelper.SOURCE.set(MyLaunchHelper.this.source);
                        MyLaunchHelper.super.onFinish();
                    }
                }
            });
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i10, float f) {
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress((int) (f * 100.0f));
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.community = null;
            this.imageView = null;
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress(0);
                this.progressBar.setVisibility(4);
            }
            this.progressBar = null;
            Activity activity = this.launchActivity;
            if (activity != null) {
                SplashUtils.cancelSplash(activity);
            }
            this.launchActivity = null;
        }
    }

    private class MyRecentAminoAdapter extends AdriftAdapter {
        RecentAminosRecycleAdapter recentAminosRecycleAdapter;

        public MyRecentAminoAdapter(NVContext nVContext) {
            super(nVContext);
            this.recentAminosRecycleAdapter = HeadlineSubTypeListFragment.this.new RecentAminosRecycleAdapter(HeadlineSubTypeListFragment.this.recentCommunities);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (HeadlineSubTypeListFragment.this.recentCommunities == null || HeadlineSubTypeListFragment.this.recentCommunities.size() == 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_recent_aminos_layout, viewGroup, view);
            HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) viewCreateView.findViewById(R.id.recent_amino_layout);
            if (horizontalRecyclerView.getAdapter() == null) {
                horizontalRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
                horizontalRecyclerView.setAdapter(this.recentAminosRecycleAdapter);
            }
            return viewCreateView;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            RecentAminosRecycleAdapter recentAminosRecycleAdapter = this.recentAminosRecycleAdapter;
            if (recentAminosRecycleAdapter != null) {
                recentAminosRecycleAdapter.setRecentCommunities(HeadlineSubTypeListFragment.this.recentCommunities);
            }
        }
    }

    private class RecentAminosRecycleAdapter extends RecyclerView.Adapter {
        List<Community> recentCommunities;

        class RecentAminoViewHolder extends RecyclerView.ViewHolder {
            CommunityIconView communityIconView;
            TextView tvBadge;
            TextView tvTitle;

            public RecentAminoViewHolder(View view) {
                super(view);
                this.communityIconView = (CommunityIconView) view.findViewById(R.id.icon);
                this.tvBadge = (TextView) view.findViewById(R.id.badge);
                this.tvTitle = (TextView) view.findViewById(R.id.title);
            }
        }

        public RecentAminosRecycleAdapter(List<Community> list) {
            this.recentCommunities = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Community> list = this.recentCommunities;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, int i10) {
            if (viewHolder instanceof RecentAminoViewHolder) {
                final Community community = this.recentCommunities.get(i10);
                RecentAminoViewHolder recentAminoViewHolder = (RecentAminoViewHolder) viewHolder;
                recentAminoViewHolder.communityIconView.setImageUrl(community.icon);
                ReminderCheck reminder = HeadlineSubTypeListFragment.this.myCommunityListService.getReminder(community.id);
                int i11 = reminder == null ? 0 : reminder.notificationsCount + reminder.noticesCount;
                recentAminoViewHolder.tvBadge.setVisibility(i11 > 0 ? 0 : 4);
                recentAminoViewHolder.tvBadge.setText(i11 > 9 ? "9+" : String.valueOf(i11));
                recentAminoViewHolder.tvTitle.setText(community.name);
                recentAminoViewHolder.itemView.setVisibility(0);
                recentAminoViewHolder.itemView.setTag(community);
                viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.RecentAminosRecycleAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HeadlineSubTypeListFragment headlineSubTypeListFragment = HeadlineSubTypeListFragment.this;
                        headlineSubTypeListFragment.launchHelper = headlineSubTypeListFragment.new MyLaunchHelper(headlineSubTypeListFragment);
                        HeadlineSubTypeListFragment.this.launchHelper.launchRecent(community, ((RecentAminoViewHolder) viewHolder).communityIconView);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new RecentAminoViewHolder(LayoutInflater.from(HeadlineSubTypeListFragment.this.getContext()).inflate(R.layout.headline_recent_icon, viewGroup, false));
        }

        public void setRecentCommunities(List<Community> list) {
            this.recentCommunities = list;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            return super.getItemViewType(i10);
        }
    }

    private class StatusBarAndHeadlineTabAdapter extends AdriftAdapter {
        public StatusBarAndHeadlineTabAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.headline_tab_and_statusbar_layout, viewGroup, view);
        }
    }

    public static void getLocationInView(View view, View view2, int[] iArr) {
        int left = 0;
        int top = 0;
        while (view != null && view != view2) {
            left += view.getLeft();
            top += view.getTop();
            Object parent = view.getParent();
            view = (!(parent instanceof View) || parent == view) ? null : (View) parent;
        }
        iArr[0] = left;
        iArr[1] = top;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public void onRefresh(Callback<Integer> callback) {
        this.outerRefreshCallback = callback;
        if (!this.feedAdapter.loadPrevPage(this.refreshCallback)) {
            this.feedAdapter.refresh(1, this.refreshCallback);
        }
        String andRemove = REFRESH_SOURCE.getAndRemove();
        StatisticsEventBuilder statisticsEventBuilderEvent = ((StatisticsService) getService("statistics")).event("Refresh Headlines Feed");
        if (andRemove == null) {
            andRemove = "Pull to Refresh";
        }
        statisticsEventBuilderEvent.source(andRemove).userPropInc("Refresh Headlines Feed Total");
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    static class LogStub {
        Feed feed;
        int index;

        LogStub(Feed feed, int i10) {
            this.feed = feed;
            this.index = i10;
        }
    }

    private void fetchRecentCommunityList() {
        this.recentCommunities = this.recentCommunityHelper.getRecentList(-1, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Feed getMappedFeed(int i10) {
        int iListViewTopOffset = (i10 + this.lastFirstVisibleIndex) - listViewTopOffset();
        if (iListViewTopOffset >= 0 && this.feedAdapter.list().size() > iListViewTopOffset && (this.feedAdapter.list().get(iListViewTopOffset) instanceof Feed)) {
            return (Feed) this.feedAdapter.list().get(iListViewTopOffset);
        }
        return null;
    }

    public void addHeadlineRefreshListener(HeadlineRefreshMonitor headlineRefreshMonitor) {
        this.headlineRefreshMointorEventDispatcher.addListener(headlineRefreshMonitor);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.feedAdapter = new FeedAdapter(this);
        this.myRecentAminoAdapter = new MyRecentAminoAdapter(this);
        new HeadlineDividerAdapter(this).setAdapter(this.feedAdapter);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new MarginAdapter(this, getResources().getDimensionPixelSize(R.dimen.my_amino_top_fit)));
        if (this.isMyAminoTab) {
            mergeAdapter.addAdapter(new MyAminosPostHintAdapter(this));
        }
        mergeAdapter.addAdapter(this.feedAdapter, true);
        mergeAdapter.addAdapter(new MasterBottomAdapter(this));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return getStringParam("pageName");
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new HeadLineVideoListDelegate(this, getActivity());
    }

    protected int listViewTopOffset() {
        MyRecentAminoAdapter myRecentAminoAdapter;
        return (!this.isHotCategoryTab || (myRecentAminoAdapter = this.myRecentAminoAdapter) == null || myRecentAminoAdapter.getCount() <= 0) ? 2 : 3;
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        if (this.myRecentAminoAdapter != null) {
            fetchRecentCommunityList();
            this.myRecentAminoAdapter.notifyDataSetChanged();
        }
    }

    private boolean containFeatureTagAtPos(int i10) {
        Feed mappedFeed = getMappedFeed(i10);
        if (mappedFeed == null || mappedFeed.getHeadlineStyle() == null || mappedFeed.getHeadlineStyle().featuredTag == null) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNewHeadlineHint(int i10) {
        TextView textView;
        if (isAdded() && (textView = this.newHeadLineHint) != null && i10 != 0) {
            textView.setVisibility(0);
            e eVarC = i.g().c();
            eVarC.a(new d() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.5
                @Override // com.facebook.rebound.d, com.facebook.rebound.g
                public void onSpringUpdate(e eVar) {
                    super.onSpringUpdate(eVar);
                    float fC = (float) eVar.c();
                    HeadlineSubTypeListFragment.this.newHeadLineHint.setScaleX(fC);
                    HeadlineSubTypeListFragment.this.newHeadLineHint.setScaleY(fC);
                }
            });
            eVarC.o(1.0d);
            this.newHeadLineHint.setText(getString(R.string.some_new_stories));
            Utils.handler.removeCallbacks(this.headlineHintRunnable);
            Utils.postDelayed(this.headlineHintRunnable, 1000L);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected String emptyMessage() {
        return getString(R.string.no_post_yet);
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height) * (-1);
    }

    public int getSuitablePosition() {
        int screenHeight = Utils.getScreenHeight(getContext());
        NVListView nVListView = (NVListView) getListView();
        for (int i10 = 0; i10 < nVListView.getChildCount(); i10++) {
            View viewFindViewById = nVListView.getChildAt(i10).findViewById(R.id.feature_tag);
            if (viewFindViewById != null) {
                int[] iArr = new int[2];
                getLocationInView(viewFindViewById, nVListView, iArr);
                if (iArr[1] > Utils.dpToPxInt(getContext(), 100.0f) && iArr[1] < (screenHeight * 3.0f) / 4.0f && containFeatureTagAtPos(i10)) {
                    return i10;
                }
                if (iArr[1] > screenHeight) {
                    return -1;
                }
            }
        }
        return -1;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        boolean z10;
        EventDispatcher<HeadlineRefreshMonitor> eventDispatcher;
        super.onActiveChanged(z6);
        if ((getParentFragment() instanceof NVBaseScrollableTabFragment) && ((NVBaseScrollableTabFragment) getParentFragment()).getCurrentFragment() == this) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z6 && z10 && (eventDispatcher = this.headlineRefreshMointorEventDispatcher) != null) {
            eventDispatcher.dispatch(new Callback<HeadlineRefreshMonitor>() { // from class: com.narvii.headlines.feed.HeadlineSubTypeListFragment.3
                @Override // com.narvii.util.Callback
                public void call(HeadlineRefreshMonitor headlineRefreshMonitor) {
                    headlineRefreshMonitor.isReadyToRefreshHeadline(HeadlineSubTypeListFragment.this.refreshShowedBefore);
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        this.myCommunityListService = (MyCommunityListService) getService("myCommunityList");
        this.recentCommunityHelper = (RecentCommunityHelper) getService("recentCommunities");
        HeadLineChannel headLineChannel = (HeadLineChannel) JacksonUtils.readAs(getStringParam(KEY_HEADLINE_CATEGORY), HeadLineChannel.class);
        this.headLineCategory = headLineChannel;
        boolean z10 = false;
        if (headLineChannel != null && Utils.isEqualsNotNull(headLineChannel.channelId, HeadLineChannel.CHANNEL_HOT_ID)) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isHotCategoryTab = z6;
        HeadLineChannel headLineChannel2 = this.headLineCategory;
        if (headLineChannel2 != null && Utils.isEqualsNotNull(headLineChannel2.channelId, HeadLineChannel.CHANNEL_MY_AMINO_ID)) {
            z10 = true;
        }
        this.isMyAminoTab = z10;
        if (this.isHotCategoryTab) {
            this.recentCommunityHelper.addChangeListener(this);
            this.myCommunityListService.addObserver(this);
            fetchRecentCommunityList();
        }
        this.languageService = (ContentLanguageService) getService("content_language");
        AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
        this.affiliationsService = affiliationsService;
        affiliationsService.addAffiliationChangeListener(this);
        this.preferencesHelper = new HeadlinePreferencesHelper(this);
        this.prefsHelper = new PreferencesHelper(this);
        this.screenHeight = Utils.getScreenHeight(getContext());
        this.logging = (LoggingService) getService("logging");
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_headline_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.recentCommunityHelper.removeChangeListener(this);
        this.affiliationsService.removeAffiliationChangeListener(this);
        this.myCommunityListService.removeObserver(this);
    }

    @Override // com.narvii.headlines.HeadLineSessionIdUpdateListener
    public void onHeadLineSessionIdUpdated(String str) {
        FeedAdapter feedAdapter;
        if (!TextUtils.isEmpty(str) && this.firstRequesting && (feedAdapter = this.feedAdapter) != null) {
            feedAdapter.resetList();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(this.scrollListener);
        }
    }

    public void onNewerFeedFetched() {
        if (isAdded() && getListView() != null) {
            if (getListView().getFirstVisiblePosition() == 0) {
                SwipeRefreshLayout swipeRefreshLayout = this.swipeLayout;
                if (swipeRefreshLayout != null) {
                    swipeRefreshLayout.setRefreshing(true);
                }
                onRefresh();
                return;
            }
            this.isScrollToTopRequest = true;
            if (getListView().getFirstVisiblePosition() <= 20) {
                getListView().smoothScrollToPosition(0);
            } else {
                getListView().setSelection(0);
            }
        }
    }

    @Override // com.narvii.community.RecentCommunityHelper.RecentCommunityChangeListener
    public void onRecentCommunityChanged() {
        if (isAdded() && getActivity() != null) {
            fetchRecentCommunityList();
            MyRecentAminoAdapter myRecentAminoAdapter = this.myRecentAminoAdapter;
            if (myRecentAminoAdapter != null) {
                myRecentAminoAdapter.notifyDataSetChanged();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.storeLastTimeReadFeedId();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.newHeadLineHint = (TextView) view.findViewById(R.id.new_feed_hint);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh(null);
    }
}
