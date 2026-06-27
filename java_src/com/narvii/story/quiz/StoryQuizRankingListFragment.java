package com.narvii.story.quiz;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.feed.quizzes.QuizzesRankingListAdapter;
import com.narvii.feed.quizzes.mode.QuizzesResultResponse;
import com.narvii.model.Blog;
import com.narvii.monetization.avatarframe.SwipeableFragment;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class StoryQuizRankingListFragment extends SwipeableFragment {
    public static String TAG = "StoryQuizRankingListFragment";
    private StoryQuizzesRankingListAdapter rankingListAdapter;
    private Blog story;

    @Override // com.narvii.monetization.avatarframe.SwipeableFragment
    protected int getContentView() {
        return R.layout.story_quiz_ranking_list;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TopPlayers";
    }

    public static StoryQuizRankingListFragment show(NVActivity nVActivity, Blog blog) {
        SwipeableFragment.createDefaultContainer(nVActivity, R.id.swipe_container);
        Fragment fragmentShow = SwipeableFragment.show(nVActivity, R.id.swipe_container, TAG, (Class<? extends SwipeableFragment>) StoryQuizRankingListFragment.class);
        if (!(fragmentShow instanceof StoryQuizRankingListFragment)) {
            return null;
        }
        StoryQuizRankingListFragment storyQuizRankingListFragment = (StoryQuizRankingListFragment) fragmentShow;
        storyQuizRankingListFragment.story = blog;
        return storyQuizRankingListFragment;
    }

    public static boolean isFragmentShowing(NVActivity nVActivity) {
        Fragment fragmentFindFragmentByTag = nVActivity.getSupportFragmentManager().findFragmentByTag(TAG);
        return fragmentFindFragmentByTag != null && fragmentFindFragmentByTag.isVisible();
    }

    @Override // com.narvii.monetization.avatarframe.SwipeableFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVListFragment
    public void updateViews() {
        super.updateViews();
        View view = getView();
        if (view != null) {
            getListView().setVisibility(0);
            view.findViewById(android.R.id.empty).setVisibility(4);
            view.findViewById(android.R.id.progress).setVisibility(4);
            View view2 = this.errorView;
            if (view2 != null) {
                view2.setVisibility(4);
                return;
            }
            return;
        }
        if (this.rankingListAdapter == null || getListView() == null) {
            return;
        }
        if (this.rankingListAdapter.list() == null || this.rankingListAdapter.list().size() == 0) {
            getListView().setVisibility(4);
        } else {
            getListView().setVisibility(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.rankingListAdapter = new StoryQuizzesRankingListAdapter(this);
        return this.rankingListAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class StoryQuizzesRankingListAdapter extends QuizzesRankingListAdapter {
        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return i == 0;
        }

        public StoryQuizzesRankingListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.feed.quizzes.QuizzesRankingListAdapter
        protected Blog getBlog() {
            return StoryQuizRankingListFragment.this.story;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().communityId(StoryQuizRankingListFragment.this.story.ndcId).path("/blog/" + StoryQuizRankingListFragment.this.story.id() + "/quiz/result");
            builderPath.tag(z ? "start0" : null);
            return builderPath.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, QuizzesResultResponse quizzesResultResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) quizzesResultResponse, i);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            View viewCreateView = createView(R.layout.story_quiz_ranking_end_layout, viewGroup, view);
            viewCreateView.findViewById(R.id.refresh_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.quiz.-$$Lambda$StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter$35dlmUqVyXIlN8ffeTLAdFIju5I
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createListEndItem$0$StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter(view2);
                }
            });
            return viewCreateView;
        }

        public /* synthetic */ void lambda$createListEndItem$0$StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter(View view) {
            refresh(0, null);
        }
    }
}
