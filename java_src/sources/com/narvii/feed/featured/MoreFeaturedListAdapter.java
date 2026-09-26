package com.narvii.feed.featured;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BlogInCategoryListFragment;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.FeedToolbarLayout;
import com.narvii.feed.PopularFeedListItem;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FanClub;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Feed;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.recycleview.DividerItemDecoration;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class MoreFeaturedListAdapter extends NVAdapter implements NotificationListener {
    private static final int PAGE_SIZE = 25;
    public static final int STYLE_BIG = 1;
    public static final int STYLE_SMALL = 0;
    private final int BASE_MORE_FEED_NUM;
    AccountService accountService;
    ConfigService configService;
    public String detailOpenSource;
    BlogCategory featuredBlogCategory;
    FeedHelper feedHelper;
    private RecyclerInListViewImpressionCollector<Feed> ipc;
    List<Blog> moreFeaturedList;
    MoreFeedRecycleAdapter recycleAdapter;
    protected int showStyle;
    boolean styleChanged;
    String timeStamp;

    private class MoreFeedRecycleAdapter extends RecyclerView.Adapter {
        private static final int TYPE_MEDIA_BIG = 3;
        private static final int TYPE_MEDIA_SMALL = 0;
        private static final int TYPE_MORE_BIG = 5;
        private static final int TYPE_MORE_SMALL = 2;
        private static final int TYPE_TEXT_BIG = 4;
        private static final int TYPE_TEXT_SMALL = 1;

        /* JADX WARN: Code duplicated, block: B:12:0x0019  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            int i11;
            if (i10 == 0) {
                i11 = R.layout.more_feature_item_small;
            } else if (i10 == 1) {
                i11 = R.layout.more_feature_item_text_small;
            } else if (i10 != 2) {
                i11 = R.layout.more_feature_item;
                if (i10 != 3) {
                    if (i10 == 4) {
                        i11 = R.layout.more_feature_item_text;
                    } else if (i10 == 5) {
                        i11 = R.layout.more_feature_item_all;
                    }
                }
            } else {
                i11 = R.layout.more_feature_item_all;
            }
            View viewInflate = LayoutInflater.from(MoreFeaturedListAdapter.this.getContext()).inflate(i11, viewGroup, false);
            MoreFeaturedListAdapter.this.fixItemViewStyle(viewInflate);
            if (i10 == 1 || i10 == 4) {
                viewInflate.findViewById(R.id.feed_item_base).setBackgroundDrawable(MoreFeaturedListAdapter.this.feedHelper.getTextOnlyBackground());
            }
            if (i10 == 2 || i10 == 5) {
                return MoreFeaturedListAdapter.this.new MoreItemsViewHolder(viewInflate);
            }
            if (i10 == 3 || i10 == 0 || i10 == 4 || i10 == 1) {
                return MoreFeaturedListAdapter.this.new PopularFeedViewHolder(viewInflate);
            }
            return null;
        }

        private MoreFeedRecycleAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Blog> list = MoreFeaturedListAdapter.this.moreFeaturedList;
            if (list == null) {
                return 0;
            }
            if (list.size() > 10) {
                return 11;
            }
            return MoreFeaturedListAdapter.this.moreFeaturedList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (i10 >= 10) {
                return MoreFeaturedListAdapter.this.showStyle == 1 ? 5 : 2;
            }
            if (MoreFeaturedListAdapter.this.moreFeaturedList.get(i10).firstMedia() != null) {
                return MoreFeaturedListAdapter.this.showStyle == 1 ? 3 : 0;
            }
            return MoreFeaturedListAdapter.this.showStyle == 1 ? 4 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, int i10) {
            if (!(viewHolder instanceof PopularFeedViewHolder)) {
                if (viewHolder instanceof MoreItemsViewHolder) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i11 = 10; i11 < MoreFeaturedListAdapter.this.moreFeaturedList.size(); i11++) {
                        Feed realFeed = MoreFeaturedListAdapter.this.moreFeaturedList.get(i11).getRealFeed();
                        if (realFeed.firstMedia() != null) {
                            boolean z6 = (realFeed instanceof Blog) && ((Blog) realFeed).type == 7 && realFeed.needHidden;
                            arrayList.add(realFeed.firstMedia().url);
                            arrayList2.add(Boolean.valueOf(z6));
                        }
                    }
                    MoreItemsViewHolder moreItemsViewHolder = (MoreItemsViewHolder) viewHolder;
                    moreItemsViewHolder.moreThumbLayout.setNeedBlurImage(arrayList2);
                    moreItemsViewHolder.moreThumbLayout.setThumbUrls(arrayList);
                    viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.featured.MoreFeaturedListAdapter.MoreFeedRecycleAdapter.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            LogEvent.clickBuilder(MoreFeaturedListAdapter.this, ActSemantic.listViewEnter).subArea("MoreButton").send();
                            MoreFeaturedListAdapter.this.openFeatureCategoryList();
                        }
                    });
                    return;
                }
                return;
            }
            PopularFeedViewHolder popularFeedViewHolder = (PopularFeedViewHolder) viewHolder;
            final Blog blog = MoreFeaturedListAdapter.this.moreFeaturedList.get(i10);
            if (i10 == 0) {
                int iDpToPx = (int) Utils.dpToPx(MoreFeaturedListAdapter.this.getContext(), 2.0f);
                View view = viewHolder.itemView;
                view.setPadding(iDpToPx, view.getPaddingTop(), viewHolder.itemView.getPaddingRight(), viewHolder.itemView.getPaddingBottom());
            } else {
                View view2 = viewHolder.itemView;
                view2.setPadding(0, view2.getPaddingTop(), viewHolder.itemView.getPaddingRight(), viewHolder.itemView.getPaddingBottom());
            }
            Feed realFeed2 = blog.getRealFeed();
            LogUtils.setAttachedObject(viewHolder.itemView, blog);
            PopularFeedListItem popularFeedListItem = popularFeedViewHolder.feedItem;
            if (popularFeedListItem != null) {
                popularFeedViewHolder.feedItem.setFeed(((NVAdapter) MoreFeaturedListAdapter.this).context, realFeed2, true, false, false, false, false, 1.0f, false, false, MoreFeaturedListAdapter.this.getContext().getResources().getDimensionPixelSize(R.dimen.feature_normal_feed_title_size), 3);
                popularFeedViewHolder.feedItem.setDarkTheme(true);
                viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.featured.MoreFeaturedListAdapter.MoreFeedRecycleAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        MoreFeaturedListAdapter.this.logClickEvent(blog, ActSemantic.checkDetail);
                        MoreFeaturedListAdapter moreFeaturedListAdapter = MoreFeaturedListAdapter.this;
                        moreFeaturedListAdapter.openFeedDetail(moreFeaturedListAdapter.moreFeaturedList.get(viewHolder.getAdapterPosition()), viewHolder.getAdapterPosition());
                        ((StatisticsService) MoreFeaturedListAdapter.this.getService("statistics")).event(null).userPropInc("More Featured Posts Read Total");
                    }
                });
            }
            FeedToolbarLayout feedToolbarLayout = popularFeedViewHolder.feedToolbarLayout;
            if (feedToolbarLayout != null) {
                feedToolbarLayout.setDarkTheme(true);
                ((TextView) popularFeedViewHolder.feedToolbarLayout.findViewById(R.id.feed_toolbar_vote_count)).setText((realFeed2 == null || realFeed2.getTotalVotesCount() <= 0) ? null : String.valueOf(realFeed2.getTotalVotesCount()));
                TintButton tintButton = (TintButton) popularFeedViewHolder.feedToolbarLayout.findViewById(R.id.feed_toolbar_vote_icon);
                if (realFeed2 == null || blog.getVotedValue(MoreFeaturedListAdapter.this.isGlobalInteractionScope()) != 0) {
                    popularFeedViewHolder.feedToolbarLayout.setFeed(realFeed2);
                } else {
                    tintButton.setImageDrawable(ContextCompat.getDrawable(MoreFeaturedListAdapter.this.getContext(), R.drawable.ic_vote_heart));
                    tintButton.setTintColor(-1);
                }
            }
        }
    }

    class MoreItemsViewHolder extends RecyclerView.ViewHolder {
        FeaturedMoreItemsLayout moreThumbLayout;

        public MoreItemsViewHolder(View view) {
            super(view);
            this.moreThumbLayout = (FeaturedMoreItemsLayout) view.findViewById(R.id.more_items);
        }
    }

    class PopularFeedViewHolder extends RecyclerView.ViewHolder {
        View commentLayout;
        PopularFeedListItem feedItem;
        FeedToolbarLayout feedToolbarLayout;
        View voteLayout;

        public PopularFeedViewHolder(View view) {
            super(view);
            this.feedItem = (PopularFeedListItem) view.findViewById(R.id.feed_item_base);
            this.feedToolbarLayout = (FeedToolbarLayout) view.findViewById(R.id.feed_toolbar);
            this.voteLayout = view.findViewById(R.id.feed_toolbar_vote);
            this.commentLayout = view.findViewById(R.id.feed_toolbar_comment);
        }
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "MoreFeaturedList";
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    public void setShowStyle(int i10) {
        if (this.showStyle == i10) {
            this.styleChanged = false;
        } else {
            this.showStyle = i10;
            this.styleChanged = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixItemViewStyle(View view) {
        if (view == null) {
            return;
        }
        if (this.showStyle == 1) {
            view.setLayoutParams(new RecyclerView.LayoutParams(getContext().getResources().getDimensionPixelSize(R.dimen.more_featured_item_width_b), getContext().getResources().getDimensionPixelSize(R.dimen.more_featured_item_height_b)));
        } else {
            view.setLayoutParams(new RecyclerView.LayoutParams(getContext().getResources().getDimensionPixelSize(R.dimen.more_featured_item_width_s), getContext().getResources().getDimensionPixelSize(R.dimen.more_featured_item_height_s)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openFeatureCategoryList() {
        if (this.featuredBlogCategory == null) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(BlogInCategoryListFragment.class);
        intent.putExtra("blogCategory", JacksonUtils.writeAsString(this.featuredBlogCategory));
        intent.putExtra("id", this.featuredBlogCategory.id());
        intent.putExtra("isFeaturedCategory", true);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
        ((StatisticsService) getService("statistics")).event("More Featured Posts Feed");
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<Blog> list = this.moreFeaturedList;
        return (list == null || list.size() < 3) ? 0 : 1;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        List<Blog> list;
        if (!(notification.obj instanceof FanClub) || (list = this.moreFeaturedList) == null) {
            return;
        }
        boolean z6 = false;
        for (Blog blog : list) {
            if (Utils.isEqualsNotNull(blog.uid(), ((FanClub) notification.obj).targetUid)) {
                blog.needHidden = !((FanClub) notification.obj).isActive();
                z6 = true;
            }
        }
        if (z6) {
            notifyDataSetChanged();
        }
    }

    public void openFeedDetail(Feed feed, int i10) {
        Intent intent = FeedDetailFragment.intent(this.context, feed, this.moreFeaturedList, getApiRequest() != null ? getApiRequest().url() : null, this.timeStamp, i10, null, 25);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.detailOpenSource);
        intent.putExtra("moreFeaturedPost", true);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
    }

    void sendMoreFeaturedRequest() {
        ((ApiService) getService("api")).exec(getApiRequest(), new ApiResponseListener<HistoryFeaturedFeedResponse>(HistoryFeaturedFeedResponse.class) { // from class: com.narvii.feed.featured.MoreFeaturedListAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, HistoryFeaturedFeedResponse historyFeaturedFeedResponse) throws Exception {
                super.onFinish(apiRequest, historyFeaturedFeedResponse);
                MoreFeaturedListAdapter moreFeaturedListAdapter = MoreFeaturedListAdapter.this;
                moreFeaturedListAdapter.moreFeaturedList = historyFeaturedFeedResponse.blogList;
                moreFeaturedListAdapter.featuredBlogCategory = historyFeaturedFeedResponse.featuredBlogCategory;
                moreFeaturedListAdapter.timeStamp = historyFeaturedFeedResponse.timestamp;
                moreFeaturedListAdapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                MoreFeaturedListAdapter.this.notifyDataSetChanged();
            }
        });
    }

    public MoreFeaturedListAdapter(NVContext nVContext) {
        super(nVContext);
        this.BASE_MORE_FEED_NUM = 10;
        this.showStyle = 0;
        this.styleChanged = false;
        this.feedHelper = new FeedHelper(nVContext);
        this.configService = (ConfigService) getService("config");
        this.accountService = (AccountService) getService("account");
        this.recycleAdapter = new MoreFeedRecycleAdapter();
    }

    protected ApiRequest getApiRequest() {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/feed/featured-more");
        builderPath.param("start", 0);
        builderPath.param("size", 25);
        return builderPath.build();
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        List<Blog> list;
        View viewCreateView = createView(R.layout.feed_more_featured_layout, viewGroup, view);
        viewCreateView.findViewById(R.id.more_feature_label).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.featured.MoreFeaturedListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickBuilder(MoreFeaturedListAdapter.this, ActSemantic.listViewEnter).send();
                MoreFeaturedListAdapter.this.openFeatureCategoryList();
            }
        });
        String string = getContext().getString(R.string.more_featured_post);
        if (this.showStyle == 1) {
            string = getContext().getString(R.string.featured_posts);
        }
        ((TextView) viewCreateView.findViewById(R.id.more_feature_title)).setText(string);
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) viewCreateView.findViewById(R.id.more_feature_content);
        LogUtils.recyclerShownInAdapter(viewCreateView, this.ipc);
        if (horizontalRecyclerView.getAdapter() != null) {
            horizontalRecyclerView.getAdapter().notifyDataSetChanged();
        } else {
            horizontalRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            horizontalRecyclerView.addItemDecoration(new DividerItemDecoration(getContext().getResources().getDrawable(R.drawable.simple_divider)));
            horizontalRecyclerView.setAdapter(this.recycleAdapter);
        }
        if (this.styleChanged && (list = this.moreFeaturedList) != null && list.size() != 0) {
            horizontalRecyclerView.scrollToPosition(0);
            this.styleChanged = false;
        }
        return viewCreateView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        MoreFeedRecycleAdapter moreFeedRecycleAdapter = this.recycleAdapter;
        if (moreFeedRecycleAdapter != null) {
            moreFeedRecycleAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        RecyclerInListViewImpressionCollector<Feed> recyclerInListViewImpressionCollector = new RecyclerInListViewImpressionCollector<>(Feed.class, R.id.more_feature_content);
        this.ipc = recyclerInListViewImpressionCollector;
        addImpressionCollector(recyclerInListViewImpressionCollector);
        sendMoreFeaturedRequest();
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        notifyDataSetChanged();
        refreshMonitorStart(i10, callback);
        sendMoreFeaturedRequest();
        refreshMonitorEnd();
    }
}
