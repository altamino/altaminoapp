package com.narvii.story.quiz;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.quizzes.mode.QuizzesResultResponse;
import com.narvii.list.NVListFragment;
import com.narvii.model.Blog;
import com.narvii.model.api.ApiResponse;
import com.narvii.scene.quiz.QuizQuestionResult;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryQuizResultFragment extends NVListFragment implements View.OnClickListener {
    private UploadAdapter adapter;
    private boolean haxNext;
    private QuizResultListener listener;
    private LocalBroadcastManager localBroadcastManager;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.story.quiz.StoryQuizResultFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StoryQuizResultFragment.this.adapter.uploadQuizResult();
        }
    };
    private List<QuizQuestionResult> resultList;
    private Blog story;

    public interface QuizResultListener {
        void playNextStory();

        void replayStory();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.localBroadcastManager.unregisterReceiver(this.receiver);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.story = (Blog) JacksonUtils.readAs(getStringParam("story"), Blog.class);
        this.resultList = JacksonUtils.readListAs(getStringParam("resultList"), QuizQuestionResult.class);
        this.haxNext = getBooleanParam("hasNext", false);
        this.adapter = new UploadAdapter(this);
        this.adapter.setData(this.story);
        this.adapter.uploadQuizResult();
        return this.adapter;
    }

    public void setQuizResultListener(QuizResultListener quizResultListener) {
        this.listener = quizResultListener;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return Utils.isAndroidVersion8() ? 2131755020 : 2131755023;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        QuizResultListener quizResultListener;
        int id = view.getId();
        if (id != R.id.next) {
            if (id == R.id.replay && (quizResultListener = this.listener) != null) {
                quizResultListener.replayStory();
                return;
            }
            return;
        }
        QuizResultListener quizResultListener2 = this.listener;
        if (quizResultListener2 != null) {
            quizResultListener2.playNextStory();
        }
    }

    private class UploadAdapter extends StoryQuizResultAdapter {
        private String errorMessage;
        private boolean resultUploading;

        public UploadAdapter(NVContext nVContext) {
            super(nVContext);
            this.errorMessage = null;
            this.resultUploading = false;
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return !this.resultUploading && super.isListShown();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            String str = this.errorMessage;
            return str != null ? str : super.errorMessage();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            if (this.errorMessage != null) {
                uploadQuizResult();
            } else {
                super.onErrorRetry();
            }
        }

        public void uploadQuizResult() {
            if (StoryQuizResultFragment.this.story == null || StoryQuizResultFragment.this.resultList == null) {
                Log.e("empty story or result");
                return;
            }
            if (this.accountService.hasAccount()) {
                this.resultUploading = true;
                ApiRequest apiRequestBuild = ApiRequest.builder().communityId(StoryQuizResultFragment.this.story.ndcId).path("blog/" + StoryQuizResultFragment.this.story.id() + "/quiz/result").post().tag(ApiService.ASYNC_CALL_TAG).param("mode", 0).param("quizAnswerList", JacksonUtils.DEFAULT_MAPPER.valueToTree(StoryQuizResultFragment.this.resultList)).signature(1).build();
                ApiService apiService = (ApiService) getService("api");
                this.errorMessage = null;
                apiService.exec(apiRequestBuild, new ApiResponseListener<QuizzesResultResponse>(QuizzesResultResponse.class) { // from class: com.narvii.story.quiz.StoryQuizResultFragment.UploadAdapter.1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, QuizzesResultResponse quizzesResultResponse) throws Exception {
                        UploadAdapter.this.resultUploading = false;
                        UploadAdapter.this.refresh(0, null);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        UploadAdapter.this.errorMessage = str + "";
                        UploadAdapter.this.resultUploading = false;
                        UploadAdapter.this.notifyDataSetChanged();
                    }
                });
            }
        }
    }
}
