package com.narvii.quiz;

import android.animation.ValueAnimator;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Vibrator;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.google.firebase.sessions.settings.c;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.quiz.theme.QuizBaseFragment;
import com.narvii.scene.quiz.QuizQuestionResult;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.CheckWindowChangeView;
import com.narvii.widget.EqualGridLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PushButton;
import com.narvii.widget.SpinningView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class QuizQuestionFragment extends QuizBaseFragment implements FragmentWillFinishListener {
    public static final int ANIM_ANSWER_DELAY_TIME = 1000;
    public static final int DEFAULT_REMAINING_TIME = 10000;
    public static final int DISMISS_DELAY_TIME = 1000;
    public static final int FAIL_VIBRATION_TIME = 300;
    public static final int HELL_MODE_REMAINING_TIME = 5000;
    public static final int SHOW_ANSWER_DELAY = 800;
    public static final int SHOW_ANSWER_INTERVAL = 125;
    public static final Handler handler = new Handler(Looper.getMainLooper());
    private View alarmBG;
    private Runnable alarmRunnable;
    TextView alarmTV;
    private boolean answerRight;
    private AlphaAnimation breathAnimation;
    private CheckWindowChangeView checkWindowChangeView;
    private CountDownTimer countDownTimer;
    private Runnable dismissRunnable;
    private Runnable dismissWrongAnswerRunnable;
    protected Media firstMedia;
    private boolean flagMode;
    private FlagReportOptionDialog flagReportOptionDialog;
    private EqualGridLayout gridLayout;
    private boolean hellMode;
    protected String liveLayerTarget;
    private boolean mediaAimationEnd;
    private boolean mediaLoaded;
    private boolean preview;
    private ProgressBar progressBar;
    private boolean questionShown;
    TextView questionTV;
    private Runnable showRightAnswerRunnable;
    private boolean toThree;
    private boolean waitingShowMilestone;
    PushButton[] answerViews = new PushButton[4];
    int remainingTime = 10000;
    int maxTime = 10000;
    ArrayList<String> answerList = new ArrayList<>();
    public final List<String> actions = new ArrayList();
    public final HashMap<String, Object> params = new HashMap<>();
    View.OnClickListener answerClickListener = new View.OnClickListener() { // from class: com.narvii.quiz.QuizQuestionFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QuizQuestionFragment.this.setAnswerUnClickable();
            if (view instanceof PushButton) {
                ((TextView) view.findViewById(R.id.title)).setTextColor(-1);
            }
            if (QuizQuestionFragment.this.breathAnimation != null) {
                QuizQuestionFragment.this.breathAnimation.cancel();
            }
            QuizQuestionFragment quizQuestionFragment = QuizQuestionFragment.this;
            quizQuestionFragment.answerRight = quizQuestionFragment.isViewRightAnswer(view);
            if (QuizQuestionFragment.this.answerRight) {
                try {
                    MediaPlayer mediaPlayerCreate = MediaPlayer.create(QuizQuestionFragment.this.getContext(), R.raw.quiz_question_right_answer);
                    mediaPlayerCreate.setAudioStreamType(3);
                    mediaPlayerCreate.start();
                } catch (Exception e) {
                    Log.e(e.getMessage());
                }
            } else {
                QuizQuestionFragment.this.failVibrate();
            }
            Object tag = view.getTag();
            if (tag instanceof QuizOption) {
                QuizQuestionFragment.this.answerList.clear();
                QuizQuestionFragment.this.answerList.add(((QuizOption) tag).optId);
            }
            if (view instanceof PushButton) {
                if (QuizQuestionFragment.this.answerRight) {
                    ((PushButton) view).setColor(ContextCompat.getColor(QuizQuestionFragment.this.getContext(), R.color.quiz_answer_color_right_normal), ContextCompat.getColor(QuizQuestionFragment.this.getContext(), R.color.quiz_answer_color_right_pressed));
                } else {
                    ((PushButton) view).setColor(ContextCompat.getColor(QuizQuestionFragment.this.getContext(), R.color.quiz_answer_color_wrong_normal), ContextCompat.getColor(QuizQuestionFragment.this.getContext(), R.color.quiz_answer_color_wrong_pressed));
                }
            }
            QuizQuestionFragment.this.stopCountDownAnimation();
            if (QuizQuestionFragment.this.answerRight) {
                QuizQuestionFragment.handler.postDelayed(QuizQuestionFragment.this.dismissWrongAnswerRunnable, 1000L);
            } else {
                QuizQuestionFragment.handler.postDelayed(QuizQuestionFragment.this.showRightAnswerRunnable, 1000L);
            }
        }
    };
    private int startDealy = 500;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showQuizMileStone, reason: merged with bridge method [inline-methods] */
    public void lambda$onViewCreated$0() {
        this.waitingShowMilestone = true;
        if (this.checkWindowChangeView.hasWindowFocus() && getActivity() != null) {
            Intent intent = FragmentWrapperActivity.intent(QuizMileStoneFragment.class);
            intent.putExtra("quiz", getStringParam("quiz"));
            intent.putExtra("hellMode", getBooleanParam("hellMode"));
            intent.putExtra("currentQuestion", getIntParam("currentQuestion"));
            intent.putExtra("answerRight", this.answerRight);
            addQuizListExtra(intent);
            ArrayList listAs = JacksonUtils.readListAs(getStringParam("resultList"), QuizQuestionResult.class);
            if (listAs == null) {
                listAs = new ArrayList();
            }
            QuizQuestionResult quizQuestionResult = new QuizQuestionResult();
            quizQuestionResult.quizQuestionId = this.quizQuestion.quizQuestionId;
            quizQuestionResult.optIdList = this.answerList;
            quizQuestionResult.timeSpent = (this.maxTime - this.remainingTime) / 1000.0f;
            listAs.add(quizQuestionResult);
            intent.putExtra("resultList", JacksonUtils.writeAsString(listAs));
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            getActivity().overridePendingTransition(R.anim.quiz_fade_in, R.anim.quiz_fade_out);
            getActivity().finish();
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(boolean z6) {
        if (z6 && this.waitingShowMilestone) {
            handler.postDelayed(new Runnable() { // from class: com.narvii.quiz.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2659a.lambda$onViewCreated$0();
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnswerUnClickable() {
        PushButton[] pushButtonArr = this.answerViews;
        if (pushButtonArr != null) {
            for (PushButton pushButton : pushButtonArr) {
                pushButton.setClickable(false);
            }
        }
    }

    private void showFlagDialog() {
        if (this.quizQuestion != null) {
            FlagReportOptionDialog.FlagPreview flagPreview = new FlagReportOptionDialog.FlagPreview();
            flagPreview.media = this.quiz.firstMedia();
            Blog blog = this.quiz;
            flagPreview.title = blog.title;
            flagPreview.subTitle = blog.content();
            FlagReportOptionDialog flagReportOptionDialogBuild = new FlagReportOptionDialog.Builder(this).flagPreview(flagPreview).nvObject(this.quizQuestion).showBlockUser(false).build();
            this.flagReportOptionDialog = flagReportOptionDialogBuild;
            flagReportOptionDialogBuild.setFullScreen(true);
            this.flagReportOptionDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRightAnswer() {
        PushButton[] pushButtonArr = this.answerViews;
        if (pushButtonArr == null) {
            return;
        }
        for (PushButton pushButton : pushButtonArr) {
            if (isViewRightAnswer(pushButton)) {
                pushButton.setColor(ContextCompat.getColor(getContext(), R.color.quiz_answer_color_right_normal), ContextCompat.getColor(getContext(), R.color.quiz_answer_color_right_pressed));
                ((TextView) pushButton.findViewById(R.id.title)).setTextColor(-1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopCountDownAnimation() {
        handler.removeCallbacks(this.alarmRunnable);
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment
    protected boolean allowQuit() {
        if (this.preview || this.flagMode) {
            return true;
        }
        return super.allowQuit();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Media media = this.firstMedia;
        return (media == null || media.url == null) ? layoutInflater.inflate(R.layout.fragment_quiz_question, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_quiz_question_media, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        handler.removeCallbacks(null, null);
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onDestroy();
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        handler.removeCallbacks(null, null);
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failVibrate() {
        try {
            ((Vibrator) getContext().getSystemService("vibrator")).vibrate(300L);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isViewRightAnswer(View view) {
        Object tag = view.getTag();
        if (tag instanceof QuizOption) {
            return ((QuizOption) tag).isCorrect(this.quizQuestion.id());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAnswer() {
        PushButton[] pushButtonArr;
        QuizOption quizOption;
        int i10;
        int i11;
        long j6;
        if (getActivity() == null) {
            return;
        }
        int size = CollectionUtils.getSize(this.quizQuestion.quizOptions());
        int i12 = 0;
        while (true) {
            pushButtonArr = this.answerViews;
            if (i12 >= pushButtonArr.length) {
                break;
            }
            if (i12 < size && (quizOption = this.quizQuestion.quizOptions().get(i12)) != null) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
                if (this.firstMedia != null) {
                    i10 = R.layout.quiz_question_media_answer_item;
                } else {
                    i10 = R.layout.quiz_question_answer_item;
                }
                final View viewInflate = layoutInflaterFrom.inflate(i10, (ViewGroup) this.gridLayout, false);
                TextView textView = (TextView) viewInflate.findViewById(R.id.title);
                this.answerViews[i12] = (PushButton) viewInflate.findViewById(R.id.push_btn);
                if (this.hellMode) {
                    textView.setScaleY(-1.0f);
                    textView.setTextColor(-1);
                    this.answerViews[i12].setColor(ViewCompat.MEASURED_STATE_MASK, -13619152);
                }
                textView.setText(quizOption.title);
                if (!this.flagMode) {
                    this.answerViews[i12].setOnClickListener(this.answerClickListener);
                } else {
                    this.answerViews[i12].setClickable(false);
                }
                this.answerViews[i12].setTag(quizOption);
                Handler handler2 = handler;
                Runnable runnable = new Runnable() { // from class: com.narvii.quiz.QuizQuestionFragment.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (QuizQuestionFragment.this.getActivity() == null) {
                            return;
                        }
                        QuizQuestionFragment.this.gridLayout.addView(viewInflate);
                        if (QuizQuestionFragment.this.flagMode) {
                            return;
                        }
                        viewInflate.startAnimation(AnimationUtils.loadAnimation(QuizQuestionFragment.this.getContext(), R.anim.fade_in));
                    }
                };
                if (this.flagMode) {
                    j6 = 0;
                } else {
                    if (this.preview) {
                        i11 = 0;
                    } else {
                        i11 = 800;
                    }
                    j6 = i11 + (i12 * 125);
                }
                handler2.postDelayed(runnable, j6);
            }
            i12++;
        }
        if (!this.preview && !this.flagMode) {
            handler.postDelayed(this.alarmRunnable, ((pushButtonArr.length - 1) * 125) + 1200);
        }
        ArrayList<String> arrayList = this.answerList;
        if (arrayList != null && !arrayList.isEmpty()) {
            setAnswerUnClickable();
            stopCountDownAnimation();
            handler.postDelayed(this.showRightAnswerRunnable, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showQuestion() {
        long j6;
        if (getActivity() == null) {
            return;
        }
        this.questionShown = true;
        this.questionTV.setVisibility(8);
        this.questionTV.setText(this.quizQuestion.title);
        this.questionTV.setVisibility(0);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
        if (this.flagMode) {
            j6 = 0;
        } else {
            j6 = 300;
        }
        animationLoadAnimation.setDuration(j6);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.quiz.QuizQuestionFragment.10
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                QuizQuestionFragment.this.showAnswer();
                if (QuizQuestionFragment.this.flagMode) {
                    QuizQuestionFragment.this.showRightAnswer();
                }
            }
        });
        this.questionTV.startAnimation(animationLoadAnimation);
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.preview = getBooleanParam("preview");
        this.flagMode = getBooleanParam("flagMode");
        boolean booleanParam = getBooleanParam("hellMode");
        this.hellMode = booleanParam;
        if (booleanParam) {
            this.remainingTime = 5000;
            this.maxTime = 5000;
        }
        List<Media> list = this.quizQuestion.mediaList;
        if (list != null && !list.isEmpty()) {
            this.firstMedia = this.quizQuestion.mediaList.get(0);
        }
        if (!this.preview && !this.flagMode && getIntParam("currentQuestion", -1) == 0 && LiveLayerUtils.isStatusOk(this.quiz)) {
            LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
            this.liveLayerTarget = this.quiz.objectTypeName() + c.FORWARD_SLASH_STRING + this.quiz.id();
            this.actions.add(LiveLayerService.ACTION_PLAYING);
            this.params.put("blogType", Integer.valueOf(this.quiz.type));
            liveLayerService.reportActive(this.actions, this.liveLayerTarget, this.params);
        }
        if (bundle != null) {
            this.remainingTime = bundle.getInt("remainingTime", 10000);
            this.answerList = bundle.getStringArrayList("answerList");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (!this.preview && !this.flagMode) {
            menu.add(0, R.string.flag_for_review, 1, R.string.flag_for_review).setShowAsAction(0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.flag_for_review) {
            showFlagDialog();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("remainingTime", this.remainingTime);
        bundle.putStringArrayList("answerList", this.answerList);
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        int i10;
        int i11;
        super.onViewCreated(view, bundle);
        CheckWindowChangeView checkWindowChangeView = (CheckWindowChangeView) view.findViewById(R.id.check_window_change);
        this.checkWindowChangeView = checkWindowChangeView;
        if (checkWindowChangeView != null) {
            checkWindowChangeView.setOnWindowFocusChangedListener(new CheckWindowChangeView.OnWindowFocusChangedListener() { // from class: com.narvii.quiz.a
                @Override // com.narvii.widget.CheckWindowChangeView.OnWindowFocusChangedListener
                public final void onChanged(boolean z6) {
                    this.f2658a.lambda$onViewCreated$1(z6);
                }
            });
        }
        this.questionTV = (TextView) view.findViewById(R.id.question);
        this.gridLayout = (EqualGridLayout) view.findViewById(R.id.answer_layout);
        final NVImageView nVImageView = (NVImageView) view.findViewById(R.id.media);
        int i12 = 0;
        if (this.flagMode) {
            this.startDealy = 0;
        }
        if (nVImageView != null) {
            final SpinningView spinningView = (SpinningView) view.findViewById(R.id.media_loading);
            final View viewFindViewById = view.findViewById(R.id.media_error);
            ((TextView) viewFindViewById.findViewById(R.id.text)).setText(getString(R.string.normal_error_offline1) + "\n" + getString(R.string.normal_error_offline2));
            nVImageView.setVisibility(8);
            spinningView.setVisibility(8);
            viewFindViewById.setVisibility(8);
            nVImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.quiz.QuizQuestionFragment.2
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public void onImageChanged(NVImageView nVImageView2, int i13, Media media) {
                    if (i13 != 4) {
                        if (i13 == 2) {
                            spinningView.setVisibility(8);
                            viewFindViewById.setVisibility(0);
                            viewFindViewById.findViewById(R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.quiz.QuizQuestionFragment.2.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view2) {
                                    nVImageView.setImageMedia(null);
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    nVImageView.setImageMedia(QuizQuestionFragment.this.firstMedia);
                                    spinningView.setVisibility(0);
                                    viewFindViewById.setVisibility(8);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    spinningView.setVisibility(8);
                    QuizQuestionFragment.this.mediaLoaded = true;
                    if (!QuizQuestionFragment.this.mediaAimationEnd || QuizQuestionFragment.this.questionShown) {
                        return;
                    }
                    QuizQuestionFragment.this.showQuestion();
                }
            });
            nVImageView.setImageMedia(this.firstMedia);
            handler.postDelayed(new Runnable() { // from class: com.narvii.quiz.QuizQuestionFragment.3
                @Override // java.lang.Runnable
                public void run() {
                    nVImageView.setVisibility(0);
                    if (!QuizQuestionFragment.this.mediaLoaded) {
                        spinningView.setVisibility(0);
                    }
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(QuizQuestionFragment.this.getContext(), R.anim.quiz_question_fade_in);
                    animationLoadAnimation.setDuration(QuizQuestionFragment.this.flagMode ? 0L : 600L);
                    animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.quiz.QuizQuestionFragment.3.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            QuizQuestionFragment.this.mediaAimationEnd = true;
                            if (QuizQuestionFragment.this.mediaLoaded) {
                                QuizQuestionFragment.this.showQuestion();
                            }
                        }
                    });
                    nVImageView.startAnimation(animationLoadAnimation);
                }
            }, this.startDealy);
        } else {
            handler.postDelayed(new Runnable() { // from class: com.narvii.quiz.QuizQuestionFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    QuizQuestionFragment.this.showQuestion();
                }
            }, this.startDealy);
        }
        this.alarmTV = (TextView) view.findViewById(R.id.alarm);
        if (this.hellMode) {
            if (Utils.isRtl()) {
                this.alarmTV.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.ic_question_alarm_hell_mode, 0);
            } else {
                this.alarmTV.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_question_alarm_hell_mode, 0, 0, 0);
            }
        }
        this.alarmBG = view.findViewById(R.id.alarm_bg);
        this.progressBar = (ProgressBar) view.findViewById(R.id.progress_bar);
        TextView textView = this.alarmTV;
        if (this.flagMode) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        textView.setVisibility(i10);
        View view2 = this.alarmBG;
        if (this.flagMode) {
            i11 = 8;
        } else {
            i11 = 0;
        }
        view2.setVisibility(i11);
        ProgressBar progressBar = this.progressBar;
        if (this.flagMode) {
            i12 = 8;
        }
        progressBar.setVisibility(i12);
        this.progressBar.setMax(this.maxTime);
        ProgressBar progressBar2 = this.progressBar;
        progressBar2.setProgress(progressBar2.getMax());
        this.alarmTV.setText(String.valueOf((int) Math.ceil(this.remainingTime / 1000.0f)));
        this.alarmRunnable = new Runnable() { // from class: com.narvii.quiz.QuizQuestionFragment.5
            @Override // java.lang.Runnable
            public void run() {
                if (QuizQuestionFragment.this.getActivity() == null) {
                    return;
                }
                QuizQuestionFragment.this.alarmTV.setVisibility(0);
                QuizQuestionFragment.this.progressBar.setVisibility(0);
                final Animation animationLoadAnimation = AnimationUtils.loadAnimation(QuizQuestionFragment.this.getContext(), R.anim.bounce1);
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.quiz.QuizQuestionFragment.5.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        QuizQuestionFragment.this.alarmTV.startAnimation(AnimationUtils.loadAnimation(QuizQuestionFragment.this.getContext(), R.anim.bounce2));
                    }
                });
                QuizQuestionFragment.this.countDownTimer = new CountDownTimer(QuizQuestionFragment.this.remainingTime, Math.max(ValueAnimator.getFrameDelay(), 10L)) { // from class: com.narvii.quiz.QuizQuestionFragment.5.2
                    @Override // android.os.CountDownTimer
                    public void onFinish() {
                        QuizQuestionFragment quizQuestionFragment = QuizQuestionFragment.this;
                        quizQuestionFragment.remainingTime = 0;
                        quizQuestionFragment.alarmTV.setText(String.valueOf(0));
                        QuizQuestionFragment.this.progressBar.setProgress(0);
                        QuizQuestionFragment.this.failVibrate();
                        QuizQuestionFragment.this.setAnswerUnClickable();
                        QuizQuestionFragment.handler.postDelayed(QuizQuestionFragment.this.showRightAnswerRunnable, 1000L);
                    }

                    @Override // android.os.CountDownTimer
                    public void onTick(long j6) {
                        if (QuizQuestionFragment.this.getActivity() == null) {
                            return;
                        }
                        int i13 = (int) j6;
                        QuizQuestionFragment.this.remainingTime = i13;
                        int iCeil = (int) Math.ceil(i13 / 1000.0f);
                        if (iCeil >= 0) {
                            QuizQuestionFragment.this.alarmTV.setText(String.valueOf(iCeil));
                        }
                        QuizQuestionFragment.this.progressBar.setProgress(QuizQuestionFragment.this.remainingTime);
                        QuizQuestionFragment quizQuestionFragment = QuizQuestionFragment.this;
                        if (quizQuestionFragment.remainingTime <= 3000) {
                            if (!quizQuestionFragment.toThree) {
                                QuizQuestionFragment.this.alarmTV.startAnimation(animationLoadAnimation);
                                QuizQuestionFragment.this.alarmBG.setBackgroundResource(R.drawable.quiz_question_alarm_red_alert);
                                QuizQuestionFragment.this.breathAnimation = new AlphaAnimation(1.0f, 0.7f);
                                QuizQuestionFragment.this.breathAnimation.setDuration(800L);
                                QuizQuestionFragment.this.breathAnimation.setFillAfter(true);
                                QuizQuestionFragment.this.breathAnimation.setRepeatCount(3);
                                QuizQuestionFragment.this.breathAnimation.setRepeatMode(2);
                                QuizQuestionFragment.this.alarmBG.startAnimation(QuizQuestionFragment.this.breathAnimation);
                                QuizQuestionFragment.this.toThree = true;
                            }
                            QuizQuestionFragment.this.progressBar.setProgressDrawable(ContextCompat.getDrawable(QuizQuestionFragment.this.getContext(), R.drawable.quiz_question_progress_drawable_alert));
                        }
                    }
                };
                QuizQuestionFragment.this.countDownTimer.start();
            }
        };
        this.dismissRunnable = new Runnable() { // from class: com.narvii.quiz.QuizQuestionFragment.6
            @Override // java.lang.Runnable
            public void run() {
                QuizQuestionFragment.this.lambda$onViewCreated$0();
            }
        };
        this.dismissWrongAnswerRunnable = new Runnable() { // from class: com.narvii.quiz.QuizQuestionFragment.7
            @Override // java.lang.Runnable
            public void run() {
                if (QuizQuestionFragment.this.getActivity() == null) {
                    return;
                }
                for (PushButton pushButton : QuizQuestionFragment.this.answerViews) {
                    if (!QuizQuestionFragment.this.isViewRightAnswer(pushButton)) {
                        pushButton.setVisibility(4);
                        pushButton.startAnimation(AnimationUtils.loadAnimation(QuizQuestionFragment.this.getContext(), R.anim.fade_out));
                    }
                }
                if (QuizQuestionFragment.this.flagMode || QuizQuestionFragment.this.preview) {
                    return;
                }
                QuizQuestionFragment.handler.postDelayed(QuizQuestionFragment.this.dismissRunnable, 1000L);
            }
        };
        this.showRightAnswerRunnable = new Runnable() { // from class: com.narvii.quiz.QuizQuestionFragment.8
            @Override // java.lang.Runnable
            public void run() {
                QuizQuestionFragment.this.showRightAnswer();
                QuizQuestionFragment.handler.postDelayed(QuizQuestionFragment.this.dismissWrongAnswerRunnable, 0L);
            }
        };
    }
}
