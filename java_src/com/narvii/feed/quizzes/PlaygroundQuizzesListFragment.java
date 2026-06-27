package com.narvii.feed.quizzes;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.feed.FeedListAdapter;
import com.narvii.feed.SubTypeFeedListFragment;
import com.narvii.list.NVAdapter;
import com.narvii.model.api.BlogListResponse;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes2.dex */
public class PlaygroundQuizzesListFragment extends SubQuizzesListFragment {
    @Override // com.narvii.feed.quizzes.SubQuizzesListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.feed.quizzes.SubQuizzesListFragment
    protected NVAdapter mainAdapter() {
        return new Adapter();
    }

    @Override // com.narvii.feed.quizzes.SubQuizzesListFragment
    protected void updateHeader() {
        super.updateHeader();
        this.header.findViewById(R.id.overlay_info_layout).setBackgroundColor(-6421001);
        ((ImageView) this.header.findViewById(R.id.info_icon)).setImageDrawable(getResources().getDrawable(R.drawable.ic_ball_playground_quizzes));
        ((TextView) this.header.findViewById(R.id.info_title)).setText(getString(R.string.playground_quizzes));
        ((TextView) this.header.findViewById(R.id.info_hint)).setText(getString(R.string.playground_quizzes_info));
    }

    private class Adapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean fromQuizFeedList() {
            return true;
        }

        public Adapter() {
            super(PlaygroundQuizzesListFragment.this);
            this.source = "Quiz Playground Feed";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("type", SubTypeFeedListFragment.TYPE_QUIZZES_RECENT);
            return builderPath.build();
        }
    }
}
