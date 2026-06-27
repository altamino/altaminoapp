package com.narvii.quiz;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.community.CommunityService;
import com.narvii.community.JoinCommunityDialog;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.quizzes.QuizzesResultRankingListFragment;
import com.narvii.feed.quizzes.mode.QuizzesResultResponse;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.model.QuizQuestion;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.quiz.theme.QuizBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.cofetti.CofettiView;
import java.util.List;

/* loaded from: classes3.dex */
public class QuizMileStoneFragment extends QuizBaseFragment implements View.OnClickListener, FragmentWillFinishListener {
    public static final int ANSWER_QUESTION_REQUEST = 1;
    public static final int HELL_MODE_NEXT_DEFAULT_REMAINING_SECONDS = 3;
    public static final float MILESTONE_ITEM_RATIO = 3.0f;
    public static final int NEXT_DEFAULT_REMAINING_SECONDS = 5;
    private TextView actionTextView;
    private MileStoneAdapter adapter;
    private boolean answerAnimated;
    ApiResponseListener apiResponseListener = new ApiResponseListener<QuizzesResultResponse>(QuizzesResultResponse.class) { // from class: com.narvii.quiz.QuizMileStoneFragment.6
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, QuizzesResultResponse quizzesResultResponse) throws Exception {
            super.onFinish(apiRequest, (ApiRequest) quizzesResultResponse);
            if (QuizMileStoneFragment.this.getActivity() == null) {
                return;
            }
            ((QuizBaseFragment) QuizMileStoneFragment.this).resultUploaded = true;
            ((QuizBaseFragment) QuizMileStoneFragment.this).resultUploading = false;
            if (QuizMileStoneFragment.this.waitingUploadResult) {
                if (QuizMileStoneFragment.this.progressDialog != null && QuizMileStoneFragment.this.progressDialog.isShowing()) {
                    QuizMileStoneFragment.this.progressDialog.dismiss();
                }
                QuizMileStoneFragment.this.gotoQuizResultPage();
                QuizMileStoneFragment.this.waitingUploadResult = false;
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            if (QuizMileStoneFragment.this.getActivity() == null) {
                return;
            }
            if (i == 230) {
                QuizMileStoneFragment.this.showJoinCommunityDialog();
            } else {
                NVToast.makeText(QuizMileStoneFragment.this.getContext(), str, 1).show();
            }
            ((QuizBaseFragment) QuizMileStoneFragment.this).resultUploading = false;
            if (QuizMileStoneFragment.this.waitingUploadResult) {
                if (QuizMileStoneFragment.this.progressDialog != null && QuizMileStoneFragment.this.progressDialog.isShowing()) {
                    QuizMileStoneFragment.this.progressDialog.dismiss();
                }
                QuizMileStoneFragment.this.waitingUploadResult = false;
            }
        }
    };
    int backgroundColor;
    private CofettiView cofettiView;
    private int currentQuestion;
    private boolean failed;
    private boolean finished;
    private LinearLayoutManager linearLayoutManager;
    private CenterLinearSmoothScroller linearSmoothScroller;
    private QuizMilestoneAvatarView milestoneAvatarView;
    private int milestoneColor;
    private int milestoneItemWidth;
    private Runnable nextCountDownRunnable;
    private int placeholderWidth;
    private ProgressDialog progressDialog;
    private int questionListSize;
    private TextView qustionNumber;
    private HorizontalRecyclerView recyclerView;
    private int recyclerWidth;
    int remainingSeconds;
    private TextView replayView;
    private String userIcon;
    private boolean waitingUploadResult;

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.questionListSize = CollectionUtils.getSize(this.quiz.quizQuestionList);
        this.recyclerWidth = getContext().getResources().getDisplayMetrics().widthPixels;
        int i = this.recyclerWidth;
        this.milestoneItemWidth = (int) (i / 3.0f);
        this.placeholderWidth = (i - this.milestoneItemWidth) / 2;
        this.remainingSeconds = getBooleanParam("hellMode") ? 3 : 5;
        if (bundle != null) {
            this.remainingSeconds = bundle.getInt("remainingSeconds");
        }
        this.currentQuestion = getIntParam("currentQuestion");
        QuizQuestion quizQuestion = this.quiz.quizQuestionList.get(this.currentQuestion);
        int backgroundColor = quizQuestion == null ? 0 : quizQuestion.getBackgroundColor();
        if (backgroundColor != 0) {
            this.backgroundColor = backgroundColor;
        } else {
            this.backgroundColor = this.quiz.getBackgroundColor();
        }
        if (getBooleanParam("answerRight")) {
            if (this.currentQuestion + 1 < CollectionUtils.getSize(this.quiz.quizQuestionList)) {
                this.currentQuestion++;
                return;
            } else {
                setSuccessful();
                return;
            }
        }
        setFailed();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_quiz_milestone, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        View viewFindViewById;
        TextView textView;
        super.onViewCreated(view, bundle);
        if (this.quiz == null) {
            return;
        }
        int i = 8;
        int i2 = 0;
        Object[] objArr = 0;
        if (this.quiz.firstMedia() == null) {
            viewFindViewById = view.findViewById(R.id.author_cover_layout);
            viewFindViewById.setVisibility(0);
            view.findViewById(R.id.author_layout).setVisibility(8);
            textView = (TextView) view.findViewById(R.id.cover_title);
            textView.setVisibility(0);
            view.findViewById(R.id.title).setVisibility(8);
        } else {
            viewFindViewById = view.findViewById(R.id.author_layout);
            viewFindViewById.setVisibility(0);
            view.findViewById(R.id.author_cover_layout).setVisibility(8);
            TextView textView2 = (TextView) view.findViewById(R.id.title);
            textView2.setVisibility(0);
            view.findViewById(R.id.cover_title).setVisibility(8);
            textView = textView2;
        }
        if (this.quiz.author != null && viewFindViewById != null) {
            ((UserAvatarLayout) viewFindViewById.findViewById(R.id.user_avatar_layout)).setUser(this.quiz.author);
            ((TextView) viewFindViewById.findViewById(R.id.nickname)).setText(this.quiz.author.nickname());
        }
        ((NVImageView) view.findViewById(R.id.cover)).setImageMedia(this.quiz.firstMedia());
        if (textView != null) {
            textView.setText(this.quiz.title);
        }
        if (this.failed) {
            QuizQuestion quizQuestion = this.quiz.quizQuestionList.get(this.currentQuestion);
            if (!TextUtils.isEmpty(quizQuestion.quizAnswerExplanation())) {
                TextView textView3 = (TextView) view.findViewById(R.id.quiz_explanation);
                textView3.setVisibility(0);
                textView3.setText(quizQuestion.quizAnswerExplanation());
            }
        }
        this.qustionNumber = (TextView) view.findViewById(R.id.question_number);
        resetQuestionNumberView();
        this.actionTextView = (TextView) view.findViewById(R.id.action);
        resetActionText();
        this.nextCountDownRunnable = new Runnable() { // from class: com.narvii.quiz.QuizMileStoneFragment.1
            @Override // java.lang.Runnable
            public void run() {
                QuizMileStoneFragment quizMileStoneFragment = QuizMileStoneFragment.this;
                if (quizMileStoneFragment.remainingSeconds > 0) {
                    quizMileStoneFragment.actionTextView.setText(QuizMileStoneFragment.this.getString(R.string.next) + " (" + String.valueOf(QuizMileStoneFragment.this.remainingSeconds) + ")");
                }
                QuizMileStoneFragment quizMileStoneFragment2 = QuizMileStoneFragment.this;
                quizMileStoneFragment2.remainingSeconds--;
                if (quizMileStoneFragment2.remainingSeconds < 0) {
                    quizMileStoneFragment2.actionTextView.performClick();
                } else {
                    Utils.postDelayed(this, 1000L);
                }
            }
        };
        this.actionTextView.setOnClickListener(this);
        if (this.finished && !this.failed) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.quiz_action_bounce);
            animationLoadAnimation.setFillAfter(true);
            animationLoadAnimation.setRepeatCount(-1);
            animationLoadAnimation.setRepeatMode(2);
            this.actionTextView.startAnimation(animationLoadAnimation);
        }
        this.replayView = (TextView) view.findViewById(R.id.replay);
        TextView textView4 = this.replayView;
        if (this.finished && this.failed) {
            i = 0;
        }
        textView4.setVisibility(i);
        this.replayView.setBackgroundResource(R.drawable.quiz_milestone_replay);
        this.replayView.setOnClickListener(this);
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        this.userIcon = userProfile == null ? null : userProfile.icon();
        this.milestoneAvatarView = (QuizMilestoneAvatarView) view.findViewById(R.id.quiz_milestone_avatar);
        this.milestoneAvatarView.setUser(userProfile);
        int i3 = this.backgroundColor;
        this.milestoneColor = i3 != 0 ? Utils.lightColor(i3) : -12171706;
        this.milestoneAvatarView.setMileStoneColor(this.milestoneColor);
        this.recyclerView = (HorizontalRecyclerView) view.findViewById(R.id.milestone_recycler);
        this.adapter = new MileStoneAdapter();
        this.recyclerView.setAdapter(this.adapter);
        HorizontalRecyclerView horizontalRecyclerView = this.recyclerView;
        horizontalRecyclerView.disableTouch = true;
        this.linearSmoothScroller = new CenterLinearSmoothScroller(horizontalRecyclerView.getContext()) { // from class: com.narvii.quiz.QuizMileStoneFragment.2
            @Override // android.support.v7.widget.LinearSmoothScroller
            public PointF computeScrollVectorForPosition(int i4) {
                return QuizMileStoneFragment.this.linearLayoutManager.computeScrollVectorForPosition(i4);
            }
        };
        this.linearLayoutManager = new LinearLayoutManager(getContext(), i2, objArr == true ? 1 : 0) { // from class: com.narvii.quiz.QuizMileStoneFragment.3
            @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i4) {
                QuizMileStoneFragment.this.linearSmoothScroller.setTargetPosition(i4);
                startSmoothScroll(QuizMileStoneFragment.this.linearSmoothScroller);
            }
        };
        this.recyclerView.setLayoutManager(this.linearLayoutManager);
        this.linearLayoutManager.scrollToPositionWithOffset(this.finished ? this.currentQuestion + 1 : this.currentQuestion, (this.recyclerWidth - this.milestoneItemWidth) / 2);
        this.cofettiView = (CofettiView) view.findViewById(R.id.cofetti);
    }

    private void resetQuestionNumberView() {
        this.qustionNumber.setVisibility(this.finished ? 8 : 0);
        this.qustionNumber.setText(getString(R.string.quiz_number_of, Integer.valueOf(this.currentQuestion + 1), Integer.valueOf(this.questionListSize)));
    }

    private void resetActionText() {
        TextView textView = this.actionTextView;
        if (textView != null) {
            textView.setText(this.finished ? R.string.see_results : R.string.next);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("remainingSeconds", this.remainingSeconds);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoCommunityDetail(Community community) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", community.id);
        intent.putExtra("icon", community.icon);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        startActivity(intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.action) {
            if (id != R.id.replay) {
                return;
            }
            FeedHelper feedHelper = new FeedHelper(this);
            feedHelper.loggingSource = LoggingSource.Replay;
            feedHelper.startLocalQuiz(this.quiz, getActivity().getIntent(), getBooleanParam("hellMode"));
            finish();
            return;
        }
        if (this.finished) {
            if (!isJoinedThisCommunity()) {
                if (isInVisitorMode()) {
                    JoinCommunityDialog.showInnerJoinDialog(this);
                    return;
                }
                final Community community = new Community();
                community.id = ((ConfigService) getService("config")).getCommunityId();
                JoinCommunityDialog.join(getContext(), community, new Callback<Boolean>() { // from class: com.narvii.quiz.QuizMileStoneFragment.4
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            QuizMileStoneFragment.this.gotoCommunityDetail(community);
                        }
                    }
                });
                return;
            }
            if (this.resultUploaded) {
                gotoQuizResultPage();
                return;
            }
            this.waitingUploadResult = true;
            this.progressDialog = new ProgressDialog(getContext());
            this.progressDialog.show();
            if (this.resultUploading) {
                return;
            }
            uploadQuizResult(this.apiResponseListener);
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(QuizQuestionFragment.class);
        intent.putExtra("currentQuestion", this.currentQuestion);
        intent.putExtra(EntryManager.ENTRY_QUIZZES, getStringParam(EntryManager.ENTRY_QUIZZES));
        intent.putExtra("hellMode", getBooleanParam("hellMode"));
        intent.putExtra("resultList", getStringParam("resultList"));
        addQuizListExtra(intent);
        startActivityForResult(intent, 1);
        getActivity().overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showJoinCommunityDialog() {
        if (isInVisitorMode()) {
            JoinCommunityDialog.showInnerJoinDialog(this);
        } else {
            final Community community = ((CommunityService) getService("community")).getCommunity(getIntParam("__communityId"));
            JoinCommunityDialog.join(getContext(), community, new Callback<Boolean>() { // from class: com.narvii.quiz.QuizMileStoneFragment.5
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent.putExtra("id", QuizMileStoneFragment.this.getIntParam("__communityId"));
                        intent.putExtra("icon", community.icon);
                        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                        QuizMileStoneFragment.this.startActivity(intent);
                    }
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoQuizResultPage() {
        if (getActivity() != null) {
            Intent intent = FragmentWrapperActivity.intent(QuizzesResultRankingListFragment.class);
            intent.putExtra(QuizzesResultRankingListFragment.KEY_CURRENT_QUIZ, getStringParam(EntryManager.ENTRY_QUIZZES));
            intent.putExtra(QuizzesResultRankingListFragment.KEY_CURRENT_QUESTION, this.currentQuestion);
            addQuizListExtra(intent);
            startActivity(intent);
            if (LiveLayerUtils.isStatusOk(this.quiz)) {
                LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
                this.liveLayerTarget = this.quiz.objectTypeName() + "/" + this.quiz.id();
                this.actions.add(LiveLayerService.ACTION_PLAYING);
                this.params.put("blogType", Integer.valueOf(this.quiz.type));
                liveLayerService.reportInactive(this.actions, this.liveLayerTarget, this.params);
            }
            finish();
        }
    }

    private void setFailed() {
        this.finished = true;
        this.failed = true;
        uploadQuizResult(this.apiResponseListener);
    }

    private void setSuccessful() {
        this.finished = true;
        uploadQuizResult(this.apiResponseListener);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.quiz.QuizMileStoneFragment.7
            @Override // java.lang.Runnable
            public void run() {
                QuizMileStoneFragment.this.cofettiView.fire();
            }
        }, 600L);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.finished) {
            return;
        }
        Utils.handler.post(this.nextCountDownRunnable);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        Utils.handler.removeCallbacks(this.nextCountDownRunnable);
        super.onPause();
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        Runnable runnable = this.nextCountDownRunnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
    }

    class MileStoneAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public static final int EDGE_PLACEHOLDER = 0;
        public static final int NORMAL_MILESTONE = 1;

        private boolean showLeftBar(int i) {
            return i != 1;
        }

        MileStoneAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                View view = new View(QuizMileStoneFragment.this.getContext());
                view.setLayoutParams(new ViewGroup.LayoutParams(QuizMileStoneFragment.this.placeholderWidth, 0));
                return QuizMileStoneFragment.this.new EdgePlaceholderViewHolder(view);
            }
            if (i != 1) {
                return null;
            }
            return QuizMileStoneFragment.this.new MilestoneViewHolder(LayoutInflater.from(QuizMileStoneFragment.this.getContext()).inflate(R.layout.quiz_milestone_item, viewGroup, false));
        }

        private boolean showRightBar(int i) {
            return i != getItemCount() + (-2);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            if (viewHolder instanceof MilestoneViewHolder) {
                MilestoneViewHolder milestoneViewHolder = (MilestoneViewHolder) viewHolder;
                boolean z = i > QuizMileStoneFragment.this.currentQuestion + 1 || (QuizMileStoneFragment.this.currentQuestion + 1 == i && !QuizMileStoneFragment.this.finished);
                milestoneViewHolder.number.setVisibility(z ? 0 : 8);
                milestoneViewHolder.number.setText(String.valueOf(i));
                int i3 = QuizMileStoneFragment.this.backgroundColor;
                if (i3 == 0) {
                    i3 = -15198184;
                }
                milestoneViewHolder.number.setTextColor(i3);
                milestoneViewHolder.result.setVisibility(!z ? 0 : 8);
                milestoneViewHolder.result.setBackgroundResource(i == QuizMileStoneFragment.this.currentQuestion + 1 && QuizMileStoneFragment.this.failed ? R.drawable.ic_question_wrong : R.drawable.ic_question_right);
                int intParam = QuizMileStoneFragment.this.getIntParam("currentQuestion");
                milestoneViewHolder.result.clearAnimation();
                QuizMilestoneAvatarView quizMilestoneAvatarView = milestoneViewHolder.milestoneAvatar;
                if (i == QuizMileStoneFragment.this.currentQuestion + 1) {
                    i2 = QuizMileStoneFragment.this.recyclerView.disableTouch ? 4 : 0;
                } else {
                    i2 = 8;
                }
                quizMilestoneAvatarView.setVisibility(i2);
                milestoneViewHolder.milestoneAvatar.setMileStoneColor(QuizMileStoneFragment.this.milestoneColor);
                milestoneViewHolder.milestoneAvatar.setUser(((AccountService) QuizMileStoneFragment.this.getService("account")).getUserProfile());
                milestoneViewHolder.result.setTag(null);
                if (i == intParam + 1 && !QuizMileStoneFragment.this.answerAnimated) {
                    milestoneViewHolder.result.setVisibility(8);
                    QuizMileStoneFragment.this.answerAnimated = true;
                    milestoneViewHolder.result.setTag(1);
                    Utils.postDelayed(new AnonymousClass1(milestoneViewHolder), 300L);
                }
                milestoneViewHolder.whiteBarLeft.setVisibility(showLeftBar(i) ? 0 : 4);
                milestoneViewHolder.whiteBarRight.setVisibility(showRightBar(i) ? 0 : 4);
                ViewGroup.LayoutParams layoutParams = milestoneViewHolder.itemView.getLayoutParams();
                layoutParams.width = QuizMileStoneFragment.this.milestoneItemWidth;
                milestoneViewHolder.itemView.setLayoutParams(layoutParams);
                if (i == QuizMileStoneFragment.this.currentQuestion + 1) {
                }
            }
        }

        /* renamed from: com.narvii.quiz.QuizMileStoneFragment$MileStoneAdapter$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ MilestoneViewHolder val$milestoneViewHolder;

            AnonymousClass1(MilestoneViewHolder milestoneViewHolder) {
                this.val$milestoneViewHolder = milestoneViewHolder;
            }

            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                if (QuizMileStoneFragment.this.getActivity() == null || this.val$milestoneViewHolder.result.getTag() == null) {
                    return;
                }
                this.val$milestoneViewHolder.result.setVisibility(0);
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(QuizMileStoneFragment.this.getContext(), R.anim.fade_in);
                this.val$milestoneViewHolder.result.startAnimation(animationLoadAnimation);
                animationLoadAnimation.setDuration(200L);
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.quiz.QuizMileStoneFragment.MileStoneAdapter.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        QuizMileStoneFragment.this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.quiz.QuizMileStoneFragment.MileStoneAdapter.1.1.1
                            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                                if (i == 0) {
                                    AnonymousClass1.this.makeRecyclerViewScrollable();
                                    QuizMileStoneFragment.this.recyclerView.removeOnScrollListener(this);
                                }
                            }
                        });
                        QuizMileStoneFragment.this.recyclerView.smoothScrollToPosition(QuizMileStoneFragment.this.currentQuestion + 1);
                        if (QuizMileStoneFragment.this.getIntParam("currentQuestion") == QuizMileStoneFragment.this.currentQuestion) {
                            AnonymousClass1.this.makeRecyclerViewScrollable();
                        }
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void makeRecyclerViewScrollable() {
                MileStoneAdapter.this.notifyDataSetChanged();
                QuizMileStoneFragment.this.recyclerView.disableTouch = false;
                if (QuizMileStoneFragment.this.milestoneAvatarView != null) {
                    QuizMileStoneFragment.this.milestoneAvatarView.setVisibility(8);
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return atEdge(i) ? 0 : 1;
        }

        private boolean atEdge(int i) {
            return i == 0 || i == getItemCount() - 1;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return QuizMileStoneFragment.this.questionListSize + 2;
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        Runnable runnable = this.nextCountDownRunnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        super.onDestroy();
    }

    class MilestoneViewHolder extends RecyclerView.ViewHolder {
        QuizMilestoneAvatarView milestoneAvatar;
        TextView number;
        View result;
        View whiteBarLeft;
        View whiteBarRight;

        public MilestoneViewHolder(View view) {
            super(view);
            this.number = (TextView) view.findViewById(R.id.number);
            this.result = view.findViewById(R.id.result);
            this.whiteBarLeft = view.findViewById(R.id.white_bar_left);
            this.whiteBarRight = view.findViewById(R.id.white_bar_right);
            this.milestoneAvatar = (QuizMilestoneAvatarView) view.findViewById(R.id.quiz_milestone_avatar);
        }
    }

    class EdgePlaceholderViewHolder extends RecyclerView.ViewHolder {
        public EdgePlaceholderViewHolder(View view) {
            super(view);
        }
    }

    public abstract class CenterLinearSmoothScroller extends LinearSmoothScroller {
        public static final int SNAP_TO_CENTER = 10;
        private static final float SPEED = 250.0f;

        @Override // android.support.v7.widget.LinearSmoothScroller
        protected int getHorizontalSnapPreference() {
            return 10;
        }

        public CenterLinearSmoothScroller(Context context) {
            super(context);
        }

        @Override // android.support.v7.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return SPEED / displayMetrics.densityDpi;
        }

        @Override // android.support.v7.widget.LinearSmoothScroller
        public int calculateDtToFit(int i, int i2, int i3, int i4, int i5) {
            return ((i3 + i4) / 2) - ((i + i2) / 2);
        }
    }
}
