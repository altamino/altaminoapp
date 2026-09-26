package com.narvii.feed.quizzes;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes5.dex */
public class TrendingQuizListFragment extends NVListFragment {

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

        public TrendingQuizzesListAdapter() {
            super(TrendingQuizListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/feed/quiz-trending").build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new TrendingQuizzesListAdapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.trending_quizzes);
    }
}
