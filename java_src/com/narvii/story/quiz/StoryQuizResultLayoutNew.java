package com.narvii.story.quiz;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.quizzes.mode.QuizzesResultResponse;
import com.narvii.list.NVListViewWrapper;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.scene.SceneInteractLogView;
import com.narvii.scene.ScenePlayListener;
import com.narvii.scene.ScenePlayView;
import com.narvii.scene.quiz.QuizQuestionResult;
import com.narvii.share.ShareButtonSaveStory;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.story.StoryDownloadHelper;
import com.narvii.story.widgets.StoryReplayNextView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StoryUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public class StoryQuizResultLayoutNew extends NVListViewWrapper implements SceneInteractLogView, ScenePlayView {
    public static final String AREA_SCORE = "Score";
    private UploadAdapter adapter;
    private boolean hasNext;
    private View hoverView;
    private boolean isAutoStartCountdown;
    private QuizResultListener listener;
    private LocalBroadcastManager localBroadcastManager;
    private BroadcastReceiver receiver;
    private StoryReplayNextView replayNextView;
    private List<QuizQuestionResult> resultList;
    private String showId;
    private long startTime;
    private Blog story;
    private StoryDownloadHelper storyDownloadHelper;

    public interface QuizResultListener {
        void playNextStory(boolean z);

        void replayStory();
    }

    @Override // com.narvii.list.NVListViewWrapper
    protected int getLayoutId() {
        return R.layout.story_quiz_result_layout_new;
    }

    @Override // com.narvii.app.theme.view.NVThemeFrameLayout
    public boolean isDarkNvTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListViewWrapper
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.scene.ScenePlayView
    public void setStory(Blog blog, boolean z, ScenePlayListener scenePlayListener) {
    }

    public StoryQuizResultLayoutNew(Context context) {
        super(context);
        this.showId = UUID.randomUUID().toString();
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                StoryQuizResultLayoutNew.this.adapter.uploadQuizResult();
            }
        };
        init();
    }

    public StoryQuizResultLayoutNew(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.showId = UUID.randomUUID().toString();
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                StoryQuizResultLayoutNew.this.adapter.uploadQuizResult();
            }
        };
        init();
    }

    private void init() {
        this.localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
        this.storyDownloadHelper = new StoryDownloadHelper(this.nvContext);
    }

    @Override // com.narvii.list.NVListViewWrapper
    public void onViewCreated(View view) {
        super.onViewCreated(view);
        this.replayNextView = (StoryReplayNextView) view.findViewById(R.id.story_quiz_replay_next_view);
        this.replayNextView.setNextEnable(this.hasNext);
        this.replayNextView.setReplayNextClickListener(new StoryReplayNextView.IStoryReplayNextClickListener() { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.2
            @Override // com.narvii.story.widgets.StoryReplayNextView.IStoryReplayNextClickListener
            public void onReplay() {
                StoryQuizResultLayoutNew.this.sendScoreEndLog("replay");
                if (StoryQuizResultLayoutNew.this.listener != null) {
                    StoryQuizResultLayoutNew.this.listener.replayStory();
                }
            }

            @Override // com.narvii.story.widgets.StoryReplayNextView.IStoryReplayNextClickListener
            public void onNext(boolean z) {
                StoryQuizResultLayoutNew.this.sendScoreEndLog("next");
                if (StoryQuizResultLayoutNew.this.listener != null) {
                    StoryQuizResultLayoutNew.this.listener.playNextStory(z);
                }
            }
        });
        this.hoverView = view.findViewById(R.id.ranking_top_hover);
        if (this.adapter != null) {
            View viewFindViewById = this.hoverView.findViewById(R.id.title_hover);
            this.adapter.fitHoverTitleView(viewFindViewById);
            int iDpToPx = (int) Utils.dpToPx(getContext(), 8.0f);
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.rightMargin = iDpToPx;
                marginLayoutParams.leftMargin = iDpToPx;
                marginLayoutParams.topMargin = getHoverTitleTopPadding();
            }
        }
        view.findViewById(R.id.share).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                StoryQuizResultLayoutNew.this.getLogEventBuilder().area(StoryQuizResultLayoutNew.AREA_SCORE).actSemantic(ActSemantic.share).object(StoryQuizResultLayoutNew.this.story).send();
                ShareDialog.getShareDialogFromStory(((NVListViewWrapper) StoryQuizResultLayoutNew.this).nvContext, StoryQuizResultLayoutNew.this.story, new ShareButtonSaveStory(((NVListViewWrapper) StoryQuizResultLayoutNew.this).nvContext) { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.3.1
                    @Override // com.narvii.share.ShareButtonSaveStory
                    public void onClickWithPermissionGranted(SharePayload sharePayload) {
                        if (StoryQuizResultLayoutNew.this.storyDownloadHelper != null) {
                            StoryQuizResultLayoutNew.this.storyDownloadHelper.downloadStory(StoryQuizResultLayoutNew.this.story, -1);
                        }
                    }
                }).show();
            }
        });
    }

    @Override // com.narvii.list.NVListViewWrapper
    protected void onListViewCreated(final ListView listView) {
        super.onListViewCreated(listView);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 8.0f);
        listView.setPadding(iDpToPx, listView.getPaddingTop(), iDpToPx, listView.getPaddingBottom());
        listView.setVerticalScrollBarEnabled(false);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOverScrollMode(2);
        ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.4
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                View childAt = absListView.getChildAt(0);
                boolean z = listView.getFirstVisiblePosition() > 0 || childAt.getHeight() + childAt.getTop() < StoryQuizResultLayoutNew.this.getHoverTitleTopPadding();
                StoryQuizResultLayoutNew.this.hoverView.setVisibility(z ? 0 : 4);
                if (z) {
                    Rect rect = new Rect();
                    rect.top = StoryQuizResultLayoutNew.this.hoverView.getMeasuredHeight();
                    ((NVListView) StoryQuizResultLayoutNew.this.getListView()).setClipOffsetRect(rect);
                    return;
                }
                ((NVListView) StoryQuizResultLayoutNew.this.getListView()).setClipOffsetRect(null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getHoverTitleTopPadding() {
        return Utils.getActionBarHeight(getContext()) + Utils.getStatusBarHeight(getContext());
    }

    @Override // com.narvii.list.NVListViewWrapper
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListViewWrapper
    protected ListAdapter createAdapter() {
        this.adapter = new UploadAdapter(Utils.getNVContext(getContext()));
        this.adapter.setData(this.story);
        this.adapter.uploadQuizResult();
        return this.adapter;
    }

    public void setData(Blog blog, List<QuizQuestionResult> list, boolean z, boolean z2) {
        this.story = blog;
        this.resultList = list;
        this.hasNext = z;
        this.isAutoStartCountdown = z2;
    }

    public void setQuizResultListener(QuizResultListener quizResultListener) {
        this.listener = quizResultListener;
    }

    @Override // com.narvii.list.NVListViewWrapper, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        if (this.isAutoStartCountdown) {
            this.replayNextView.startCountDown();
        }
    }

    @Override // com.narvii.list.NVListViewWrapper, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.localBroadcastManager.unregisterReceiver(this.receiver);
        this.replayNextView.cancelCountDown();
    }

    @Override // com.narvii.scene.ScenePlayView
    public void onActiveChanged(boolean z) {
        if (z) {
            if (this.isAutoStartCountdown) {
                this.replayNextView.startCountDown();
                return;
            }
            return;
        }
        this.replayNextView.pauseCountDown();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.replayNextView.cancelCountDown();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.narvii.scene.SceneInteractLogView
    public void logStart() {
        this.startTime = SystemClock.elapsedRealtime();
        getLogEventBuilder().actSemantic(ActSemantic.scoreStart).area(AREA_SCORE).extraParam("scoreShowId", this.showId).send();
    }

    protected LogEvent.Builder getLogEventBuilder() {
        return StoryUtils.getLogEventClickBuilder(this, this.story, false, true);
    }

    @Override // com.narvii.scene.SceneInteractLogView
    public void logEnd() {
        sendScoreEndLog("skip");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendScoreEndLog(String str) {
        CurrentQuizzesResult quizzesResult;
        if (this.startTime == 0) {
            return;
        }
        LogEvent.Builder builderExtraParam = getLogEventBuilder().actSemantic(ActSemantic.scoreEnd).area(AREA_SCORE).extraParam("scoreShowId", this.showId).extraParam("endType", str).extraParam("pq_duration", Long.valueOf(SystemClock.elapsedRealtime() - this.startTime));
        UploadAdapter uploadAdapter = this.adapter;
        if (uploadAdapter != null && (quizzesResult = uploadAdapter.getQuizzesResult()) != null) {
            builderExtraParam.extraParam("score", Integer.valueOf(quizzesResult.latestScore));
        }
        builderExtraParam.send();
        this.startTime = 0L;
    }

    private class UploadAdapter extends StoryQuizResultAdapter {
        private String errorMessage;
        private boolean resultUploading;

        @Override // com.narvii.story.quiz.StoryQuizResultAdapter
        protected boolean needImpression() {
            return false;
        }

        public UploadAdapter(NVContext nVContext) {
            super(nVContext);
            this.errorMessage = null;
            this.resultUploading = false;
            setItemClickListener(new ObjectItemClickListener() { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.UploadAdapter.1
                @Override // com.narvii.list.ObjectItemClickListener
                public void onItemClick(NVObject nVObject) {
                    StoryQuizResultLayoutNew.this.getLogEventBuilder().actSemantic(ActSemantic.checkDetail).area(StoryQuizResultLayoutNew.AREA_SCORE).extraParam("scoreShowId", StoryQuizResultLayoutNew.this.showId).object(nVObject).send();
                }
            });
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

        @Override // com.narvii.story.quiz.StoryQuizResultAdapter
        protected void onClickLogin() {
            super.onClickLogin();
            StoryQuizResultLayoutNew.this.getLogEventBuilder().actSemantic(ActSemantic.pageEnter).area(StoryQuizResultLayoutNew.AREA_SCORE).extraParam("scoreShowId", StoryQuizResultLayoutNew.this.showId).send();
        }

        public void uploadQuizResult() {
            if (StoryQuizResultLayoutNew.this.story == null || StoryQuizResultLayoutNew.this.resultList == null) {
                Log.e("empty story or result");
                return;
            }
            if (this.accountService.hasAccount()) {
                this.resultUploading = true;
                ApiRequest apiRequestBuild = ApiRequest.builder().communityId(StoryQuizResultLayoutNew.this.story.ndcId).path("blog/" + StoryQuizResultLayoutNew.this.story.id() + "/quiz/result").post().tag(ApiService.ASYNC_CALL_TAG).param("mode", 0).param("quizAnswerList", JacksonUtils.DEFAULT_MAPPER.valueToTree(StoryQuizResultLayoutNew.this.resultList)).signature(1).build();
                ApiService apiService = (ApiService) getService("api");
                this.errorMessage = null;
                apiService.exec(apiRequestBuild, new ApiResponseListener<QuizzesResultResponse>(QuizzesResultResponse.class) { // from class: com.narvii.story.quiz.StoryQuizResultLayoutNew.UploadAdapter.2
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
