package com.narvii.feed.quizzes;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.SubTypeFeedListFragment;
import com.narvii.list.NVAdapter;
import com.narvii.model.api.BlogListResponse;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes5.dex */
public class PlaygroundQuizzesListFragment extends SubQuizzesListFragment {

    private class Adapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean fromQuizFeedList() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public Adapter() {
            super(PlaygroundQuizzesListFragment.this);
            this.source = "Quiz Playground Feed";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("type", SubTypeFeedListFragment.TYPE_QUIZZES_RECENT);
            return builderPath.build();
        }
    }

    @Override // com.narvii.feed.quizzes.SubQuizzesListFragment
    protected NVAdapter mainAdapter() {
        return new Adapter();
    }

    @Override // com.narvii.feed.quizzes.SubQuizzesListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.feed.quizzes.SubQuizzesListFragment
    protected void updateHeader() {
        super.updateHeader();
        this.header.findViewById(R.id.overlay_info_layout).setBackgroundColor(-6421001);
        ((ImageView) this.header.findViewById(R.id.info_icon)).setImageDrawable(getResources().getDrawable(R.drawable.ic_ball_playground_quizzes));
        ((TextView) this.header.findViewById(R.id.info_title)).setText(getString(R.string.playground_quizzes));
        ((TextView) this.header.findViewById(R.id.info_hint)).setText(getString(R.string.playground_quizzes_info));
    }
}
