package com.narvii.feed.featured;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.BlogInCategoryListFragment;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.FeedToolbarLayout;
import com.narvii.feed.PopularFeedListItem;
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
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "MoreFeaturedList";
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
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

    public void setShowStyle(int i) {
        if (this.showStyle != i) {
            this.showStyle = i;
            this.styleChanged = true;
        } else {
            this.styleChanged = false;
        }
    }

    void sendMoreFeaturedRequest() {
        ((ApiService) getService("api")).exec(getApiRequest(), new ApiResponseListener<HistoryFeaturedFeedResponse>(HistoryFeaturedFeedResponse.class) { // from class: com.narvii.feed.featured.MoreFeaturedListAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                MoreFeaturedListAdapter.this.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, HistoryFeaturedFeedResponse historyFeaturedFeedResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) historyFeaturedFeedResponse);
                MoreFeaturedListAdapter moreFeaturedListAdapter = MoreFeaturedListAdapter.this;
                moreFeaturedListAdapter.moreFeaturedList = historyFeaturedFeedResponse.blogList;
                moreFeaturedListAdapter.featuredBlogCategory = historyFeaturedFeedResponse.featuredBlogCategory;
                moreFeaturedListAdapter.timeStamp = historyFeaturedFeedResponse.timestamp;
                moreFeaturedListAdapter.notifyDataSetChanged();
            }
        });
    }

    protected ApiRequest getApiRequest() {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/feed/featured-more");
        builderPath.param(TtmlNode.START, 0);
        builderPath.param("size", 25);
        return builderPath.build();
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        notifyDataSetChanged();
        refreshMonitorStart(i, callback);
        sendMoreFeaturedRequest();
        refreshMonitorEnd();
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        this.ipc = new RecyclerInListViewImpressionCollector<>(Feed.class, R.id.more_feature_content);
        addImpressionCollector(this.ipc);
        sendMoreFeaturedRequest();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        MoreFeedRecycleAdapter moreFeedRecycleAdapter = this.recycleAdapter;
        if (moreFeedRecycleAdapter != null) {
            moreFeedRecycleAdapter.notifyDataSetChanged();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<Blog> list = this.moreFeaturedList;
        return (list == null || list.size() < 3) ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
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

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        List<Blog> list;
        if (!(notification.obj instanceof FanClub) || (list = this.moreFeaturedList) == null) {
            return;
        }
        boolean z = false;
        for (Blog blog : list) {
            if (Utils.isEqualsNotNull(blog.uid(), ((FanClub) notification.obj).targetUid)) {
                blog.needHidden = !((FanClub) notification.obj).isActive();
                z = true;
            }
        }
        if (z) {
            notifyDataSetChanged();
        }
    }

    private class MoreFeedRecycleAdapter extends RecyclerView.Adapter {
        private static final int TYPE_MEDIA_BIG = 3;
        private static final int TYPE_MEDIA_SMALL = 0;
        private static final int TYPE_MORE_BIG = 5;
        private static final int TYPE_MORE_SMALL = 2;
        private static final int TYPE_TEXT_BIG = 4;
        private static final int TYPE_TEXT_SMALL = 1;

        private MoreFeedRecycleAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i >= 10 ? MoreFeaturedListAdapter.this.showStyle == 1 ? 5 : 2 : MoreFeaturedListAdapter.this.moreFeaturedList.get(i).firstMedia() != null ? MoreFeaturedListAdapter.this.showStyle == 1 ? 3 : 0 : MoreFeaturedListAdapter.this.showStyle == 1 ? 4 : 1;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
        @Override // android.support.v7.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.support.v7.widget.RecyclerView.ViewHolder onCreateViewHolder(android.view.ViewGroup r9, int r10) {
            /*
                r8 = this;
                r0 = 5
                r1 = 3
                r2 = 2
                r3 = 2131428661(0x7f0b0535, float:1.8478973E38)
                r4 = 4
                r5 = 1
                if (r10 == 0) goto L21
                if (r10 == r5) goto L1d
                if (r10 == r2) goto L19
                if (r10 == r1) goto L24
                if (r10 == r4) goto L15
                if (r10 == r0) goto L19
                goto L24
            L15:
                r3 = 2131428664(0x7f0b0538, float:1.8478979E38)
                goto L24
            L19:
                r3 = 2131428662(0x7f0b0536, float:1.8478975E38)
                goto L24
            L1d:
                r3 = 2131428665(0x7f0b0539, float:1.847898E38)
                goto L24
            L21:
                r3 = 2131428663(0x7f0b0537, float:1.8478977E38)
            L24:
                com.narvii.feed.featured.MoreFeaturedListAdapter r6 = com.narvii.feed.featured.MoreFeaturedListAdapter.this
                android.content.Context r6 = r6.getContext()
                android.view.LayoutInflater r6 = android.view.LayoutInflater.from(r6)
                r7 = 0
                android.view.View r9 = r6.inflate(r3, r9, r7)
                com.narvii.feed.featured.MoreFeaturedListAdapter r3 = com.narvii.feed.featured.MoreFeaturedListAdapter.this
                com.narvii.feed.featured.MoreFeaturedListAdapter.access$200(r3, r9)
                if (r10 == r5) goto L3c
                if (r10 != r4) goto L4e
            L3c:
                r3 = 2131297348(0x7f090444, float:1.8212638E38)
                android.view.View r3 = r9.findViewById(r3)
                com.narvii.feed.featured.MoreFeaturedListAdapter r6 = com.narvii.feed.featured.MoreFeaturedListAdapter.this
                com.narvii.feed.FeedHelper r6 = r6.feedHelper
                android.graphics.drawable.Drawable r6 = r6.getTextOnlyBackground()
                r3.setBackgroundDrawable(r6)
            L4e:
                if (r10 == r2) goto L66
                if (r10 != r0) goto L53
                goto L66
            L53:
                if (r10 == r1) goto L5e
                if (r10 == 0) goto L5e
                if (r10 == r4) goto L5e
                if (r10 != r5) goto L5c
                goto L5e
            L5c:
                r9 = 0
                return r9
            L5e:
                com.narvii.feed.featured.MoreFeaturedListAdapter$PopularFeedViewHolder r10 = new com.narvii.feed.featured.MoreFeaturedListAdapter$PopularFeedViewHolder
                com.narvii.feed.featured.MoreFeaturedListAdapter r0 = com.narvii.feed.featured.MoreFeaturedListAdapter.this
                r10.<init>(r9)
                return r10
            L66:
                com.narvii.feed.featured.MoreFeaturedListAdapter$MoreItemsViewHolder r10 = new com.narvii.feed.featured.MoreFeaturedListAdapter$MoreItemsViewHolder
                com.narvii.feed.featured.MoreFeaturedListAdapter r0 = com.narvii.feed.featured.MoreFeaturedListAdapter.this
                r10.<init>(r9)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.feed.featured.MoreFeaturedListAdapter.MoreFeedRecycleAdapter.onCreateViewHolder(android.view.ViewGroup, int):android.support.v7.widget.RecyclerView$ViewHolder");
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, int i) throws Resources.NotFoundException {
            if (viewHolder instanceof PopularFeedViewHolder) {
                PopularFeedViewHolder popularFeedViewHolder = (PopularFeedViewHolder) viewHolder;
                final Blog blog = MoreFeaturedListAdapter.this.moreFeaturedList.get(i);
                if (i == 0) {
                    int iDpToPx = (int) Utils.dpToPx(MoreFeaturedListAdapter.this.getContext(), 2.0f);
                    View view = viewHolder.itemView;
                    view.setPadding(iDpToPx, view.getPaddingTop(), viewHolder.itemView.getPaddingRight(), viewHolder.itemView.getPaddingBottom());
                } else {
                    View view2 = viewHolder.itemView;
                    view2.setPadding(0, view2.getPaddingTop(), viewHolder.itemView.getPaddingRight(), viewHolder.itemView.getPaddingBottom());
                }
                Feed realFeed = blog.getRealFeed();
                LogUtils.setAttachedObject(viewHolder.itemView, blog);
                PopularFeedListItem popularFeedListItem = popularFeedViewHolder.feedItem;
                if (popularFeedListItem != null) {
                    ThumbImageView thumbImageView = (ThumbImageView) popularFeedListItem.findViewById(R.id.image);
                    popularFeedViewHolder.feedItem.setFeed(((NVAdapter) MoreFeaturedListAdapter.this).context, realFeed, true, false, false, false, false, 1.0f, false, false, MoreFeaturedListAdapter.this.getContext().getResources().getDimensionPixelSize(R.dimen.feature_normal_feed_title_size), 3);
                    popularFeedViewHolder.feedItem.setDarkTheme(true);
                    viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.featured.MoreFeaturedListAdapter.MoreFeedRecycleAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            MoreFeaturedListAdapter.this.logClickEvent(blog, ActSemantic.checkDetail);
                            MoreFeaturedListAdapter moreFeaturedListAdapter = MoreFeaturedListAdapter.this;
                            moreFeaturedListAdapter.openFeedDetail(moreFeaturedListAdapter.moreFeaturedList.get(viewHolder.getAdapterPosition()), viewHolder.getAdapterPosition());
                        }
                    });
                    if (thumbImageView != null && MoreFeaturedListAdapter.this.moreFeaturedList.get(i).firstMedia() == null && Build.VERSION.SDK_INT < 21) {
                        Drawable drawable = MoreFeaturedListAdapter.this.getContext().getResources().getDrawable(R.drawable.button_round_white);
                        drawable.setColorFilter(TintButton.tintColorFilter(MoreFeaturedListAdapter.this.feedHelper.getHighLightColor()));
                        thumbImageView.setImageDrawable(drawable);
                        thumbImageView.setVisibility(0);
                    }
                }
                FeedToolbarLayout feedToolbarLayout = popularFeedViewHolder.feedToolbarLayout;
                if (feedToolbarLayout != null) {
                    feedToolbarLayout.setDarkTheme(true);
                    ((TextView) popularFeedViewHolder.feedToolbarLayout.findViewById(R.id.feed_toolbar_vote_count)).setText((realFeed == null || realFeed.getTotalVotesCount() <= 0) ? null : String.valueOf(realFeed.getTotalVotesCount()));
                    TintButton tintButton = (TintButton) popularFeedViewHolder.feedToolbarLayout.findViewById(R.id.feed_toolbar_vote_icon);
                    if (realFeed != null && blog.getVotedValue(MoreFeaturedListAdapter.this.isGlobalInteractionScope()) == 0) {
                        tintButton.setImageDrawable(ContextCompat.getDrawable(MoreFeaturedListAdapter.this.getContext(), R.drawable.ic_vote_heart));
                        tintButton.setTintColor(-1);
                        return;
                    } else {
                        popularFeedViewHolder.feedToolbarLayout.setFeed(realFeed);
                        return;
                    }
                }
                return;
            }
            if (viewHolder instanceof MoreItemsViewHolder) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 10; i2 < MoreFeaturedListAdapter.this.moreFeaturedList.size(); i2++) {
                    Feed realFeed2 = MoreFeaturedListAdapter.this.moreFeaturedList.get(i2).getRealFeed();
                    if (realFeed2.firstMedia() != null) {
                        boolean z = (realFeed2 instanceof Blog) && ((Blog) realFeed2).type == 7 && realFeed2.needHidden;
                        arrayList.add(realFeed2.firstMedia().url);
                        arrayList2.add(Boolean.valueOf(z));
                    }
                }
                MoreItemsViewHolder moreItemsViewHolder = (MoreItemsViewHolder) viewHolder;
                moreItemsViewHolder.moreThumbLayout.setNeedBlurImage(arrayList2);
                moreItemsViewHolder.moreThumbLayout.setThumbUrls(arrayList);
                viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.featured.MoreFeaturedListAdapter.MoreFeedRecycleAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        LogEvent.clickBuilder(MoreFeaturedListAdapter.this, ActSemantic.listViewEnter).subArea("MoreButton").send();
                        MoreFeaturedListAdapter.this.openFeatureCategoryList();
                    }
                });
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
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

    class MoreItemsViewHolder extends RecyclerView.ViewHolder {
        FeaturedMoreItemsLayout moreThumbLayout;

        public MoreItemsViewHolder(View view) {
            super(view);
            this.moreThumbLayout = (FeaturedMoreItemsLayout) view.findViewById(R.id.more_items);
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
        this.context.startActivity(intent);
    }

    public void openFeedDetail(Feed feed, int i) {
        Intent intent = FeedDetailFragment.intent(this.context, feed, this.moreFeaturedList, getApiRequest() != null ? getApiRequest().url() : null, this.timeStamp, i, null, 25);
        intent.putExtra("Source", this.detailOpenSource);
        intent.putExtra("moreFeaturedPost", true);
        this.context.startActivity(intent);
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
}
