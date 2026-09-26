package com.narvii.quiz;

import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.QuizQuestion;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.cofetti.CofettiView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
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
            super.onFinish(apiRequest, quizzesResultResponse);
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
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            if (QuizMileStoneFragment.this.getActivity() == null) {
                return;
            }
            if (i10 == 230) {
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

    public abstract class CenterLinearSmoothScroller extends LinearSmoothScroller {
        public static final int SNAP_TO_CENTER = 10;
        private static final float SPEED = 250.0f;

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDtToFit(int i10, int i11, int i12, int i13, int i14) {
            return ((i12 + i13) / 2) - ((i10 + i11) / 2);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getHorizontalSnapPreference() {
            return 10;
        }

        public CenterLinearSmoothScroller(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return SPEED / displayMetrics.densityDpi;
        }
    }

    class EdgePlaceholderViewHolder extends RecyclerView.ViewHolder {
        public EdgePlaceholderViewHolder(View view) {
            super(view);
        }
    }

    class MileStoneAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public static final int EDGE_PLACEHOLDER = 0;
        public static final int NORMAL_MILESTONE = 1;

        /* JADX INFO: renamed from: com.narvii.quiz.QuizMileStoneFragment$MileStoneAdapter$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ MilestoneViewHolder val$milestoneViewHolder;

            AnonymousClass1(MilestoneViewHolder milestoneViewHolder) {
                this.val$milestoneViewHolder = milestoneViewHolder;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void makeRecyclerViewScrollable() {
                MileStoneAdapter.this.notifyDataSetChanged();
                QuizMileStoneFragment.this.recyclerView.disableTouch = false;
                if (QuizMileStoneFragment.this.milestoneAvatarView != null) {
                    QuizMileStoneFragment.this.milestoneAvatarView.setVisibility(8);
                }
            }

            @Override // java.lang.Runnable
            public void run() {
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
                            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                                if (i10 == 0) {
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
        }

        private boolean atEdge(int i10) {
            return i10 == 0 || i10 == getItemCount() - 1;
        }

        private boolean showLeftBar(int i10) {
            return i10 != 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 0) {
                View view = new View(QuizMileStoneFragment.this.getContext());
                view.setLayoutParams(new ViewGroup.LayoutParams(QuizMileStoneFragment.this.placeholderWidth, 0));
                return QuizMileStoneFragment.this.new EdgePlaceholderViewHolder(view);
            }
            if (i10 != 1) {
                return null;
            }
            return QuizMileStoneFragment.this.new MilestoneViewHolder(LayoutInflater.from(QuizMileStoneFragment.this.getContext()).inflate(R.layout.quiz_milestone_item, viewGroup, false));
        }

        MileStoneAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return QuizMileStoneFragment.this.questionListSize + 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            int i11;
            if (viewHolder instanceof MilestoneViewHolder) {
                MilestoneViewHolder milestoneViewHolder = (MilestoneViewHolder) viewHolder;
                boolean z6 = i10 > QuizMileStoneFragment.this.currentQuestion + 1 || (QuizMileStoneFragment.this.currentQuestion + 1 == i10 && !QuizMileStoneFragment.this.finished);
                milestoneViewHolder.number.setVisibility(z6 ? 0 : 8);
                milestoneViewHolder.number.setText(String.valueOf(i10));
                int i12 = QuizMileStoneFragment.this.backgroundColor;
                if (i12 == 0) {
                    i12 = -15198184;
                }
                milestoneViewHolder.number.setTextColor(i12);
                milestoneViewHolder.result.setVisibility(!z6 ? 0 : 8);
                milestoneViewHolder.result.setBackgroundResource(i10 == QuizMileStoneFragment.this.currentQuestion + 1 && QuizMileStoneFragment.this.failed ? R.drawable.ic_question_wrong : R.drawable.ic_question_right);
                int intParam = QuizMileStoneFragment.this.getIntParam("currentQuestion");
                milestoneViewHolder.result.clearAnimation();
                QuizMilestoneAvatarView quizMilestoneAvatarView = milestoneViewHolder.milestoneAvatar;
                if (i10 == QuizMileStoneFragment.this.currentQuestion + 1) {
                    i11 = QuizMileStoneFragment.this.recyclerView.disableTouch ? 4 : 0;
                } else {
                    i11 = 8;
                }
                quizMilestoneAvatarView.setVisibility(i11);
                milestoneViewHolder.milestoneAvatar.setMileStoneColor(QuizMileStoneFragment.this.milestoneColor);
                milestoneViewHolder.milestoneAvatar.setUser(((AccountService) QuizMileStoneFragment.this.getService("account")).getUserProfile());
                milestoneViewHolder.result.setTag(null);
                if (i10 == intParam + 1 && !QuizMileStoneFragment.this.answerAnimated) {
                    milestoneViewHolder.result.setVisibility(8);
                    QuizMileStoneFragment.this.answerAnimated = true;
                    milestoneViewHolder.result.setTag(1);
                    Utils.postDelayed(new AnonymousClass1(milestoneViewHolder), 300L);
                }
                milestoneViewHolder.whiteBarLeft.setVisibility(showLeftBar(i10) ? 0 : 4);
                milestoneViewHolder.whiteBarRight.setVisibility(showRightBar(i10) ? 0 : 4);
                ViewGroup.LayoutParams layoutParams = milestoneViewHolder.itemView.getLayoutParams();
                layoutParams.width = QuizMileStoneFragment.this.milestoneItemWidth;
                milestoneViewHolder.itemView.setLayoutParams(layoutParams);
                int unused = QuizMileStoneFragment.this.currentQuestion;
            }
        }

        private boolean showRightBar(int i10) {
            if (i10 != getItemCount() - 2) {
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (atEdge(i10)) {
                return 0;
            }
            return 1;
        }
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

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
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

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoCommunityDetail(Community community) {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", community.id);
        intent.putExtra("icon", community.icon);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    private void resetActionText() {
        TextView textView = this.actionTextView;
        if (textView != null) {
            textView.setText(this.finished ? R.string.see_results : R.string.next);
        }
    }

    private void resetQuestionNumberView() {
        this.qustionNumber.setVisibility(this.finished ? 8 : 0);
        this.qustionNumber.setText(getString(R.string.quiz_number_of, Integer.valueOf(this.currentQuestion + 1), Integer.valueOf(this.questionListSize)));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        Runnable runnable = this.nextCountDownRunnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoQuizResultPage() {
        if (getActivity() != null) {
            Intent intent = FragmentWrapperActivity.intent(QuizzesResultRankingListFragment.class);
            intent.putExtra(QuizzesResultRankingListFragment.KEY_CURRENT_QUIZ, getStringParam("quiz"));
            intent.putExtra(QuizzesResultRankingListFragment.KEY_CURRENT_QUESTION, this.currentQuestion);
            addQuizListExtra(intent);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            if (LiveLayerUtils.isStatusOk(this.quiz)) {
                LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
                this.liveLayerTarget = this.quiz.objectTypeName() + c.FORWARD_SLASH_STRING + this.quiz.id();
                this.actions.add(LiveLayerService.ACTION_PLAYING);
                this.params.put("blogType", Integer.valueOf(this.quiz.type));
                liveLayerService.reportInactive(this.actions, this.liveLayerTarget, this.params);
            }
            finish();
            ((StatisticsService) getService("statistics")).event("Quiz Results").userPropInc("Quiz Results Total");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showJoinCommunityDialog() {
        if (isInVisitorMode()) {
            JoinCommunityDialog.showInnerJoinDialog(this);
        } else {
            final Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(getIntParam("__communityId"));
            JoinCommunityDialog.join(getContext(), community, new Callback<Boolean>() { // from class: com.narvii.quiz.QuizMileStoneFragment.5
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent.putExtra("id", QuizMileStoneFragment.this.getIntParam("__communityId"));
                        intent.putExtra("icon", community.icon);
                        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(QuizMileStoneFragment.this, intent);
                    }
                }
            }).show();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.action) {
            if (id == R.id.replay) {
                FeedHelper feedHelper = new FeedHelper(this);
                feedHelper.loggingSource = LoggingSource.Replay;
                feedHelper.startLocalQuiz(this.quiz, getActivity().getIntent(), getBooleanParam("hellMode"));
                finish();
                ((StatisticsService) getService("statistics")).event("Replay Quiz").source("Quiz Ended View").userPropInc("Replay Quiz Total");
                return;
            }
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
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            this.progressDialog = progressDialog;
            progressDialog.show();
            if (!this.resultUploading) {
                uploadQuizResult(this.apiResponseListener);
                return;
            }
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(QuizQuestionFragment.class);
        intent.putExtra("currentQuestion", this.currentQuestion);
        intent.putExtra("quiz", getStringParam("quiz"));
        intent.putExtra("hellMode", getBooleanParam("hellMode"));
        intent.putExtra("resultList", getStringParam("resultList"));
        addQuizListExtra(intent);
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1);
        getActivity().overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
        finish();
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        int i10;
        int backgroundColor;
        super.onCreate(bundle);
        this.questionListSize = CollectionUtils.getSize(this.quiz.quizQuestionList);
        int i11 = getContext().getResources().getDisplayMetrics().widthPixels;
        this.recyclerWidth = i11;
        int i12 = (int) (i11 / 3.0f);
        this.milestoneItemWidth = i12;
        this.placeholderWidth = (i11 - i12) / 2;
        if (getBooleanParam("hellMode")) {
            i10 = 3;
        } else {
            i10 = 5;
        }
        this.remainingSeconds = i10;
        if (bundle != null) {
            this.remainingSeconds = bundle.getInt("remainingSeconds");
        }
        int intParam = getIntParam("currentQuestion");
        this.currentQuestion = intParam;
        QuizQuestion quizQuestion = this.quiz.quizQuestionList.get(intParam);
        if (quizQuestion == null) {
            backgroundColor = 0;
        } else {
            backgroundColor = quizQuestion.getBackgroundColor();
        }
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_quiz_milestone, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.finished) {
            Utils.handler.post(this.nextCountDownRunnable);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("remainingSeconds", this.remainingSeconds);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        View viewFindViewById;
        TextView textView;
        Object[] objArr;
        String strIcon;
        int iLightColor;
        int i10;
        TextView textView2;
        super.onViewCreated(view, bundle);
        Blog blog = this.quiz;
        if (blog == null) {
            return;
        }
        int i11 = 8;
        int i12 = 0;
        Object[] objArr2 = 0;
        if (blog.firstMedia() == null) {
            viewFindViewById = view.findViewById(R.id.author_cover_layout);
            viewFindViewById.setVisibility(0);
            view.findViewById(R.id.author_layout).setVisibility(8);
            textView = (TextView) view.findViewById(R.id.cover_title);
            textView.setVisibility(0);
            view.findViewById(R.id.title).setVisibility(8);
            objArr = true;
        } else {
            viewFindViewById = view.findViewById(R.id.author_layout);
            viewFindViewById.setVisibility(0);
            view.findViewById(R.id.author_cover_layout).setVisibility(8);
            TextView textView3 = (TextView) view.findViewById(R.id.title);
            textView3.setVisibility(0);
            view.findViewById(R.id.cover_title).setVisibility(8);
            textView = textView3;
            objArr = false;
        }
        if (this.quiz.author != null) {
            ((UserAvatarLayout) viewFindViewById.findViewById(R.id.user_avatar_layout)).setUser(this.quiz.author);
            if (objArr != false) {
                textView2 = (TextView) viewFindViewById.findViewById(R.id.author_cover_nickname);
            } else {
                textView2 = (TextView) viewFindViewById.findViewById(R.id.author_nickname);
            }
            textView2.setText(this.quiz.author.nickname());
        }
        ((NVImageView) view.findViewById(R.id.cover)).setImageMedia(this.quiz.firstMedia());
        textView.setText(this.quiz.title);
        if (this.failed) {
            QuizQuestion quizQuestion = this.quiz.quizQuestionList.get(this.currentQuestion);
            if (!TextUtils.isEmpty(quizQuestion.quizAnswerExplanation())) {
                TextView textView4 = (TextView) view.findViewById(R.id.quiz_explanation);
                textView4.setVisibility(0);
                textView4.setText(quizQuestion.quizAnswerExplanation());
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
                int i13 = quizMileStoneFragment2.remainingSeconds - 1;
                quizMileStoneFragment2.remainingSeconds = i13;
                if (i13 >= 0) {
                    Utils.postDelayed(this, 1000L);
                } else {
                    quizMileStoneFragment2.actionTextView.performClick();
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
        TextView textView5 = (TextView) view.findViewById(R.id.replay);
        this.replayView = textView5;
        if (this.finished && this.failed) {
            i11 = 0;
        }
        textView5.setVisibility(i11);
        this.replayView.setBackgroundResource(R.drawable.quiz_milestone_replay);
        this.replayView.setOnClickListener(this);
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        if (userProfile == null) {
            strIcon = null;
        } else {
            strIcon = userProfile.icon();
        }
        this.userIcon = strIcon;
        QuizMilestoneAvatarView quizMilestoneAvatarView = (QuizMilestoneAvatarView) view.findViewById(R.id.quiz_milestone_avatar);
        this.milestoneAvatarView = quizMilestoneAvatarView;
        quizMilestoneAvatarView.setUser(userProfile);
        int i13 = this.backgroundColor;
        if (i13 != 0) {
            iLightColor = Utils.lightColor(i13);
        } else {
            iLightColor = -12171706;
        }
        this.milestoneColor = iLightColor;
        this.milestoneAvatarView.setMileStoneColor(iLightColor);
        this.recyclerView = (HorizontalRecyclerView) view.findViewById(R.id.milestone_recycler);
        MileStoneAdapter mileStoneAdapter = new MileStoneAdapter();
        this.adapter = mileStoneAdapter;
        this.recyclerView.setAdapter(mileStoneAdapter);
        HorizontalRecyclerView horizontalRecyclerView = this.recyclerView;
        horizontalRecyclerView.disableTouch = true;
        this.linearSmoothScroller = new CenterLinearSmoothScroller(horizontalRecyclerView.getContext()) { // from class: com.narvii.quiz.QuizMileStoneFragment.2
            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public PointF computeScrollVectorForPosition(int i14) {
                return QuizMileStoneFragment.this.linearLayoutManager.computeScrollVectorForPosition(i14);
            }
        };
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), i12, objArr2 == true ? 1 : 0) { // from class: com.narvii.quiz.QuizMileStoneFragment.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i14) {
                QuizMileStoneFragment.this.linearSmoothScroller.setTargetPosition(i14);
                startSmoothScroll(QuizMileStoneFragment.this.linearSmoothScroller);
            }
        };
        this.linearLayoutManager = linearLayoutManager;
        this.recyclerView.setLayoutManager(linearLayoutManager);
        LinearLayoutManager linearLayoutManager2 = this.linearLayoutManager;
        if (this.finished) {
            i10 = this.currentQuestion + 1;
        } else {
            i10 = this.currentQuestion;
        }
        linearLayoutManager2.scrollToPositionWithOffset(i10, (this.recyclerWidth - this.milestoneItemWidth) / 2);
        this.cofettiView = (CofettiView) view.findViewById(R.id.cofetti);
    }
}
