package com.narvii.feed.quizzes;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes2.dex */
public class BestQuizzesListFragment extends SubQuizzesListFragment {
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
        ((ImageView) this.header.findViewById(R.id.info_icon)).setImageDrawable(getResources().getDrawable(R.drawable.ic_start_best_quizzes));
        ((TextView) this.header.findViewById(R.id.info_title)).setText(getString(R.string.best_quizzes));
        ((TextView) this.header.findViewById(R.id.info_hint)).setText(getString(R.string.best_quizzes_info));
    }

    private class Adapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean fromQuizFeedList() {
            return true;
        }

        public Adapter() {
            super(BestQuizzesListFragment.this);
            this.source = "Best Quizzes Feed";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/feed/quiz-best-quizzes").build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends Feed> listResponse, int i) {
            super.onPageResponse(apiRequest, listResponse, i);
            BestQuizzesListFragment.this.updateHeader();
        }
    }

    private void showHelpInfo() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.addItem(R.string.add_best_quizzes, 0);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.quizzes.BestQuizzesListFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    AlertDialog alertDialog = new AlertDialog(BestQuizzesListFragment.this.getContext());
                    alertDialog.setMessage(R.string.add_best_quizzes_info);
                    alertDialog.addButton(R.string.got_it, 4, (View.OnClickListener) null);
                    alertDialog.show();
                }
            }
        });
        actionSheetDialog.show();
    }
}
