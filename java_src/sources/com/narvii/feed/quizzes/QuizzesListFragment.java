package com.narvii.feed.quizzes;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.feed.FeedListAdapter;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class QuizzesListFragment extends NVListFragment {
    private HotCategoriesAdapter hotCategoriesAdapter;
    private TrendingQuizzesListAdapter trendingQuizzesListAdapter;

    private class HotCategoriesAdapter extends AdriftAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public HotCategoriesAdapter() {
            super(QuizzesListFragment.this);
        }

        private void goToBestQuizzes() {
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(BestQuizzesListFragment.class));
        }

        private void goToPlayGroundQuizzes() {
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(PlaygroundQuizzesListFragment.class));
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View view, boolean z6) {
            if (view != null) {
                if (view.getId() == R.id.best_layout) {
                    goToBestQuizzes();
                } else if (view.getId() == R.id.playground_layout) {
                    goToPlayGroundQuizzes();
                }
            }
            return super.onSubviewClick(view, z6);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.quizzes_hot_categories_layout, viewGroup, view);
            viewCreateView.findViewById(R.id.playground_layout).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.best_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    private class TrendingQuizzesListAdapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean fromQuizFeedList() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends Feed>> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return i10 == 0;
        }

        public TrendingQuizzesListAdapter() {
            super(QuizzesListFragment.this);
            this.source = "Trending Quiz Feed";
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
            View viewCreateView = createView(R.layout.quiz_list_empty_view, viewGroup, view);
            viewCreateView.findViewById(R.id.empty_retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.quizzes.QuizzesListFragment.TrendingQuizzesListAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (QuizzesListFragment.this.trendingQuizzesListAdapter != null) {
                        QuizzesListFragment.this.trendingQuizzesListAdapter.refresh(2, null);
                    }
                }
            });
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/feed/quiz-trending").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean isEnd() {
            return super.isEnd();
        }
    }

    private class TrendingSectionHeaderAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public TrendingSectionHeaderAdapter() {
            super(QuizzesListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.feed_divider_item, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.divider_text)).setText(QuizzesListFragment.this.getString(R.string.trending_quizzes));
            return viewCreateView;
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.trendingQuizzesListAdapter = new TrendingQuizzesListAdapter();
        this.hotCategoriesAdapter = new HotCategoriesAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(this.hotCategoriesAdapter, true);
        mergeAdapter.addAdapter(new TrendingSectionHeaderAdapter());
        mergeAdapter.addAdapter(OptinAdsUtil.setupAdapter(this, this.trendingQuizzesListAdapter, getString(R.string.mopub_unitid_mrec_feed), true));
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.page_quizzes);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Quizzes Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Quizzes Page Opened Total");
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        TrendingQuizzesListAdapter trendingQuizzesListAdapter = this.trendingQuizzesListAdapter;
        if (trendingQuizzesListAdapter != null) {
            trendingQuizzesListAdapter.refresh(2, null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        TrendingQuizzesListAdapter trendingQuizzesListAdapter = this.trendingQuizzesListAdapter;
        if (trendingQuizzesListAdapter != null) {
            trendingQuizzesListAdapter.refresh(2, null);
        }
    }
}
