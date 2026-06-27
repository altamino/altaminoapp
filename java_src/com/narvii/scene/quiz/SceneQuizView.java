package com.narvii.scene.quiz;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Vibrator;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.logging.ActSemantic;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.paging.PageView;
import com.narvii.scene.SceneInteractLogView;
import com.narvii.scene.ScenePlayBaseView;
import com.narvii.scene.ScenePlayListener;
import com.narvii.scene.ScenePlayRecord;
import com.narvii.scene.ScenePlayView;
import com.narvii.util.CollectionUtils;
import com.narvii.util.ScaleBounceAnimator;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.GradientView;
import com.narvii.widget.NVGradientDrawable;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class SceneQuizView extends ScenePlayBaseView implements ScenePlayView, SceneInteractLogView {
    public static final int ANIM_ANSWER_DELAY_TIME = 1000;
    public static final String AREA_QUIZ = "Quiz";
    public static final int DEFAULT_REMAINING_TIME = 10000;
    public static final int DISMISS_DELAY_TIME = 1000;
    public static final int FAIL_VIBRATION_TIME = 300;
    public static final int SHOW_ANSWER_DELAY = 800;
    public static final int SHOW_ANSWER_INTERVAL = 125;
    static List<Integer> shaderList;
    Runnable alarmRunnable;
    TextView alarmTV;
    TextView alarmTVAnim;
    ArrayList<String> answerList;
    boolean answerSelected;
    List<View> answers;
    View countDownLayout;
    CountDownTimer countDownTimer;
    Runnable dismissRunnable;
    Runnable dismissWrongAnswerRunnable;
    float[] fakeRadiusArray;
    Handler handler;
    int maxTime;
    CircleProgressBar progressBar;
    QuizQuestion quizQuestion;
    private int radius;
    GradientView redAlert;
    int remainingSeconds;
    int remainingTime;
    String sceneId;
    ScenePlayRecord scenePlayRecord;
    private SceneQuizAnswerParent sceneQuizAnswerParent;
    Runnable showRightAnswerRunnable;
    int showingTime;
    Runnable skipCountDownRunnable;
    TextView skipText;
    boolean timeout;
    TextView title;
    private boolean toThree;
    boolean waitingNext;
    public static final float[] scaleArray = {0.0f, 1.14f, 0.98f, 1.01f, 1.0f};
    public static final int[] timeArray = {0, 114, 583, 792, 1167};

    /* JADX INFO: Access modifiers changed from: private */
    public void startCountDownAnim(int i) throws Resources.NotFoundException {
        if (this.showingTime != i) {
            this.showingTime = i;
            this.alarmTVAnim.setText(i + "");
            this.alarmTVAnim.setVisibility(0);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.scene_quiz_count_down_in);
            animationLoadAnimation.setFillAfter(true);
            this.alarmTVAnim.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.scene.quiz.SceneQuizView.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) throws Resources.NotFoundException {
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(SceneQuizView.this.getContext(), R.anim.fade_out);
                    animationLoadAnimation2.setFillAfter(true);
                    animationLoadAnimation2.setDuration(250L);
                    SceneQuizView.this.alarmTV.startAnimation(animationLoadAnimation2);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    SceneQuizView sceneQuizView = SceneQuizView.this;
                    sceneQuizView.alarmTV.setText(sceneQuizView.alarmTVAnim.getText());
                    SceneQuizView.this.alarmTV.setAlpha(1.0f);
                }
            });
        }
    }

    public SceneQuizView(Context context) {
        this(context, null);
    }

    public SceneQuizView(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.answers = new ArrayList();
        this.answerList = new ArrayList<>();
        this.handler = new Handler(Looper.getMainLooper());
        this.remainingTime = 10000;
        this.maxTime = 10000;
        this.remainingSeconds = 3;
        this.alarmRunnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.1
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                if (SceneQuizView.this.isAttached()) {
                    SceneQuizView.this.countDownTimer = new CountDownTimer(r0.remainingTime, Math.max(ValueAnimator.getFrameDelay(), 10L)) { // from class: com.narvii.scene.quiz.SceneQuizView.1.1
                        @Override // android.os.CountDownTimer
                        public void onTick(long j) throws Resources.NotFoundException {
                            if (SceneQuizView.this.isAttached()) {
                                SceneQuizView.this.alarmTV.setVisibility(0);
                                SceneQuizView.this.progressBar.setVisibility(0);
                                SceneQuizView.this.remainingTime = (int) j;
                                int iCeil = (int) Math.ceil(r0.remainingTime / 1000.0f);
                                SceneQuizView sceneQuizView = SceneQuizView.this;
                                sceneQuizView.progressBar.setProgress(sceneQuizView.remainingTime);
                                SceneQuizView sceneQuizView2 = SceneQuizView.this;
                                if (sceneQuizView2.remainingTime <= 3000) {
                                    if (!sceneQuizView2.toThree) {
                                        SceneQuizView sceneQuizView3 = SceneQuizView.this;
                                        sceneQuizView3.redAlert = (GradientView) sceneQuizView3.findViewById(R.id.red_alert);
                                        SceneQuizView.this.redAlert.setColor(-33908, -54685);
                                        SceneQuizView.this.redAlert.setRadius(Utils.dpToPxInt(r5.getContext(), 20.0f));
                                        SceneQuizView.this.redAlert.setVisibility(0);
                                        SceneQuizView.this.toThree = true;
                                    }
                                    SceneQuizView.this.startCountDownAnim(iCeil);
                                    return;
                                }
                                sceneQuizView2.alarmTV.setText(String.valueOf(iCeil));
                            }
                        }

                        @Override // android.os.CountDownTimer
                        public void onFinish() throws Resources.NotFoundException {
                            SceneQuizView sceneQuizView = SceneQuizView.this;
                            sceneQuizView.remainingTime = 0;
                            sceneQuizView.alarmTV.clearAnimation();
                            SceneQuizView.this.alarmTVAnim.clearAnimation();
                            SceneQuizView.this.startCountDownAnim(0);
                            SceneQuizView.this.progressBar.setProgress(0);
                            SceneQuizView.this.failVibrate();
                            SceneQuizView sceneQuizView2 = SceneQuizView.this;
                            sceneQuizView2.timeout = true;
                            sceneQuizView2.sendAnswerLog(null);
                            SceneQuizView.this.setAnswerUnClickable();
                            SceneQuizView sceneQuizView3 = SceneQuizView.this;
                            sceneQuizView3.handler.postDelayed(sceneQuizView3.showRightAnswerRunnable, 1000L);
                        }
                    };
                    SceneQuizView sceneQuizView = SceneQuizView.this;
                    sceneQuizView.startBounceAnimation(sceneQuizView.countDownLayout);
                    SceneQuizView.this.countDownTimer.start();
                }
            }
        };
        this.dismissRunnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.3
            @Override // java.lang.Runnable
            public void run() {
                SceneQuizView.this.next();
            }
        };
        this.dismissWrongAnswerRunnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.4
            @Override // java.lang.Runnable
            public void run() {
                if (SceneQuizView.this.isAttached()) {
                    for (View view : SceneQuizView.this.answers) {
                        if (!SceneQuizView.this.isViewRightAnswer(view)) {
                            view.setVisibility(4);
                            view.startAnimation(AnimationUtils.loadAnimation(SceneQuizView.this.getContext(), R.anim.fade_out));
                        }
                    }
                    SceneQuizView sceneQuizView = SceneQuizView.this;
                    sceneQuizView.handler.postDelayed(sceneQuizView.dismissRunnable, 1000L);
                }
            }
        };
        this.showRightAnswerRunnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.5
            @Override // java.lang.Runnable
            public void run() {
                SceneQuizView.this.showRightAnswer();
                SceneQuizView sceneQuizView = SceneQuizView.this;
                sceneQuizView.handler.postDelayed(sceneQuizView.dismissWrongAnswerRunnable, 0L);
            }
        };
        FrameLayout.inflate(getContext(), R.layout.scene_quiz, this);
        this.sceneQuizAnswerParent = (SceneQuizAnswerParent) findViewById(R.id.scene_quiz_answer_parent);
        this.title = (TextView) findViewById(R.id.question);
        this.countDownLayout = findViewById(R.id.count_down_layout);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_corner_radius_fake);
        this.radius = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_corner_radius);
        float f = dimensionPixelSize;
        int i = this.radius;
        this.fakeRadiusArray = new float[]{f, f, f, f, i, i, i, i};
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.scene.quiz.SceneQuizView.6
            /* JADX WARN: Removed duplicated region for block: B:14:0x0057 A[PHI: r2
  0x0057: PHI (r2v6 java.lang.String) = (r2v5 java.lang.String), (r2v19 java.lang.String) binds: [B:10:0x003a, B:12:0x0054] A[DONT_GENERATE, DONT_INLINE]] */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onClick(android.view.View r7) throws java.lang.IllegalStateException {
                /*
                    r6 = this;
                    com.narvii.scene.quiz.SceneQuizView r0 = com.narvii.scene.quiz.SceneQuizView.this
                    r1 = 1
                    r0.answerSelected = r1
                    com.narvii.scene.quiz.SceneQuizView.access$500(r0)
                    com.narvii.scene.quiz.SceneQuizView r0 = com.narvii.scene.quiz.SceneQuizView.this
                    boolean r0 = com.narvii.scene.quiz.SceneQuizView.access$800(r0, r7)
                    if (r0 != 0) goto L16
                    com.narvii.scene.quiz.SceneQuizView r2 = com.narvii.scene.quiz.SceneQuizView.this
                    com.narvii.scene.quiz.SceneQuizView.access$300(r2)
                    goto L32
                L16:
                    com.narvii.scene.quiz.SceneQuizView r2 = com.narvii.scene.quiz.SceneQuizView.this     // Catch: java.lang.Exception -> L2a
                    android.content.Context r2 = r2.getContext()     // Catch: java.lang.Exception -> L2a
                    int r3 = com.narvii.mediaeditor.R.raw.quiz_question_right_answer     // Catch: java.lang.Exception -> L2a
                    android.media.MediaPlayer r2 = android.media.MediaPlayer.create(r2, r3)     // Catch: java.lang.Exception -> L2a
                    r3 = 3
                    r2.setAudioStreamType(r3)     // Catch: java.lang.Exception -> L2a
                    r2.start()     // Catch: java.lang.Exception -> L2a
                    goto L32
                L2a:
                    r2 = move-exception
                    java.lang.String r2 = r2.getMessage()
                    com.narvii.util.Log.e(r2)
                L32:
                    r2 = 0
                    java.lang.Object r3 = r7.getTag()
                    boolean r4 = r3 instanceof com.narvii.model.QuizOption
                    r5 = 0
                    if (r4 == 0) goto L57
                    com.narvii.model.QuizOption r3 = (com.narvii.model.QuizOption) r3
                    com.narvii.scene.quiz.SceneQuizView r2 = com.narvii.scene.quiz.SceneQuizView.this
                    java.util.ArrayList<java.lang.String> r2 = r2.answerList
                    r2.clear()
                    com.narvii.scene.quiz.SceneQuizView r2 = com.narvii.scene.quiz.SceneQuizView.this
                    java.util.ArrayList<java.lang.String> r2 = r2.answerList
                    java.lang.String r4 = r3.optId
                    r2.add(r4)
                    java.lang.String r2 = r3.optId
                    com.narvii.model.Media r3 = r3.getFirstMedia()
                    if (r3 == 0) goto L57
                    goto L58
                L57:
                    r1 = 0
                L58:
                    com.narvii.scene.quiz.SceneQuizView r3 = com.narvii.scene.quiz.SceneQuizView.this
                    com.narvii.scene.quiz.SceneQuizView.access$400(r3, r2)
                    if (r0 == 0) goto L6f
                    int r2 = com.narvii.mediaeditor.R.id.item_bg
                    android.view.View r2 = r7.findViewById(r2)
                    com.narvii.scene.quiz.SceneQuizView r3 = com.narvii.scene.quiz.SceneQuizView.this
                    android.graphics.drawable.Drawable r1 = r3.getAnswerRightDrawable(r1)
                    r2.setBackgroundDrawable(r1)
                    goto L7e
                L6f:
                    int r2 = com.narvii.mediaeditor.R.id.item_bg
                    android.view.View r2 = r7.findViewById(r2)
                    com.narvii.scene.quiz.SceneQuizView r3 = com.narvii.scene.quiz.SceneQuizView.this
                    android.graphics.drawable.Drawable r1 = r3.getAnswerWrongDrawable(r1)
                    r2.setBackgroundDrawable(r1)
                L7e:
                    int r1 = com.narvii.mediaeditor.R.id.shader
                    android.view.View r1 = r7.findViewById(r1)
                    com.narvii.widget.NVImageView r1 = (com.narvii.widget.NVImageView) r1
                    if (r0 == 0) goto L8b
                    int r2 = com.narvii.mediaeditor.R.drawable.ic_quiz_answer_shader_right
                    goto L8d
                L8b:
                    int r2 = com.narvii.mediaeditor.R.drawable.ic_quiz_answer_shader_wrong
                L8d:
                    r1.setImageResource(r2)
                    r1.setVisibility(r5)
                    com.narvii.scene.quiz.SceneQuizView r1 = com.narvii.scene.quiz.SceneQuizView.this
                    com.narvii.scene.quiz.SceneQuizView.access$1000(r1)
                    int r1 = com.narvii.mediaeditor.R.id.answer_text
                    android.view.View r7 = r7.findViewById(r1)
                    android.widget.TextView r7 = (android.widget.TextView) r7
                    r1 = -1
                    r7.setTextColor(r1)
                    r1 = 1000(0x3e8, double:4.94E-321)
                    if (r0 == 0) goto Lb2
                    com.narvii.scene.quiz.SceneQuizView r7 = com.narvii.scene.quiz.SceneQuizView.this
                    android.os.Handler r0 = r7.handler
                    java.lang.Runnable r7 = r7.dismissWrongAnswerRunnable
                    r0.postDelayed(r7, r1)
                    goto Lbb
                Lb2:
                    com.narvii.scene.quiz.SceneQuizView r7 = com.narvii.scene.quiz.SceneQuizView.this
                    android.os.Handler r0 = r7.handler
                    java.lang.Runnable r7 = r7.showRightAnswerRunnable
                    r0.postDelayed(r7, r1)
                Lbb:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.quiz.SceneQuizView.AnonymousClass6.onClick(android.view.View):void");
            }
        };
        this.answers.add(findViewById(R.id.answer_1));
        this.answers.add(findViewById(R.id.answer_2));
        this.answers.add(findViewById(R.id.answer_3));
        this.answers.add(findViewById(R.id.answer_4));
        this.progressBar = (CircleProgressBar) findViewById(R.id.progress);
        this.progressBar.setSwipeGradientColor(true, true, -13107279, -16728132);
        this.progressBar.setMax(this.maxTime);
        this.progressBar.setProgress(this.remainingTime);
        this.alarmTV = (TextView) findViewById(R.id.alarm);
        this.alarmTV.setText(String.valueOf((int) Math.ceil(this.remainingTime / 1000.0f)));
        this.alarmTVAnim = (TextView) findViewById(R.id.alarm_anim);
        for (int i2 = 0; i2 < this.answers.size(); i2++) {
            this.answers.get(i2).setVisibility(4);
            this.answers.get(i2).setOnClickListener(onClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAnswerLog(String str) {
        QuizOption correctAnswer;
        QuizQuestion quizQuestion = this.quizQuestion;
        getLogEventBuilder().actSemantic(ActSemantic.answer).area(AREA_QUIZ).extraParam("questionShowId", this.showId).extraParam("questionId", this.quizQuestion.quizQuestionId).extraParam("correctAnswerId", (quizQuestion == null || (correctAnswer = quizQuestion.getCorrectAnswer()) == null) ? null : correctAnswer.optId).extraParam("answerId", str).send();
        generatePlayRecord();
    }

    public void setQuizAnswerParentForceCenter() {
        SceneQuizAnswerParent sceneQuizAnswerParent = this.sceneQuizAnswerParent;
        if (sceneQuizAnswerParent != null) {
            sceneQuizAnswerParent.setForceCenter(true);
        }
    }

    public void playQuizQuestion(final String str, QuizQuestion quizQuestion, ScenePlayRecord scenePlayRecord) throws Resources.NotFoundException {
        this.sceneId = str;
        this.quizQuestion = quizQuestion;
        this.scenePlayRecord = scenePlayRecord;
        if (quizQuestion != null) {
            logStart();
            if (isPlayed()) {
                setQuizAnswerParentForceCenter();
            }
            this.alarmTV.setVisibility(isPlayed() ? 8 : 0);
            this.progressBar.setVisibility(isPlayed() ? 8 : 0);
            showQuestion();
            if (!isPlayed()) {
                fadeInCountDown();
            }
            if (isPlayed()) {
                this.skipText = (TextView) findViewById(R.id.skip_hint);
                this.skipText.setVisibility(0);
                this.skipText.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.quiz.SceneQuizView.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (((ScenePlayBaseView) SceneQuizView.this).scenePlayListener != null) {
                            ((ScenePlayBaseView) SceneQuizView.this).scenePlayListener.onScenePlayEnd(str);
                        }
                    }
                });
                this.skipCountDownRunnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.8
                    @Override // java.lang.Runnable
                    public void run() {
                        SceneQuizView sceneQuizView = SceneQuizView.this;
                        if (sceneQuizView.remainingSeconds > 0) {
                            sceneQuizView.skipText.setText(sceneQuizView.getResources().getString(R.string.skip_n_second, Integer.valueOf(SceneQuizView.this.remainingSeconds)));
                        }
                        SceneQuizView sceneQuizView2 = SceneQuizView.this;
                        sceneQuizView2.remainingSeconds--;
                        if (sceneQuizView2.remainingSeconds >= 0) {
                            Utils.postDelayed(this, 1000L);
                        } else {
                            sceneQuizView2.skipText.performClick();
                        }
                    }
                };
                Utils.post(this.skipCountDownRunnable);
            }
        }
    }

    private void fadeInCountDown() throws Resources.NotFoundException {
        if (isAttached()) {
            this.countDownLayout.setVisibility(0);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
            animationLoadAnimation.setDuration(300L);
            this.countDownLayout.startAnimation(animationLoadAnimation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAttached() {
        return ViewCompat.isAttachedToWindow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPlayed() {
        return this.scenePlayRecord != null;
    }

    private void showQuestion() throws Resources.NotFoundException {
        if (isAttached()) {
            this.title.setText(this.quizQuestion.title);
            this.title.setVisibility(0);
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(getContext(), R.animator.fade_in);
            animatorLoadAnimator.setDuration(isPlayed() ? 0L : 300L);
            animatorLoadAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.scene.quiz.SceneQuizView.9
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SceneQuizView.this.showAnswer();
                    if (SceneQuizView.this.isPlayed()) {
                        SceneQuizView.this.showRightAnswer();
                        SceneQuizView.this.showPlayedWrongAnswer();
                    }
                }
            });
            animatorLoadAnimator.setTarget(this.title);
            animatorLoadAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPlayedWrongAnswer() {
        QuizQuestionResult quizQuestionResult;
        List<String> list;
        ScenePlayRecord scenePlayRecord = this.scenePlayRecord;
        if (scenePlayRecord != null) {
            Object obj = scenePlayRecord.result;
            if (!(obj instanceof QuizQuestionResult) || (list = (quizQuestionResult = (QuizQuestionResult) obj).optIdList) == null || list.isEmpty()) {
                return;
            }
            String str = quizQuestionResult.optIdList.get(0);
            QuizQuestion quizQuestion = this.quizQuestion;
            if (quizQuestion == null || str == null || quizQuestion.isOptionIdCorrect(str)) {
                return;
            }
            for (View view : this.answers) {
                Object tag = view.getTag();
                if (tag instanceof QuizOption) {
                    QuizOption quizOption = (QuizOption) tag;
                    if (Utils.isEqualsNotNull(quizOption.optId, str)) {
                        view.findViewById(R.id.item_bg).setBackgroundDrawable(getAnswerWrongDrawable(quizOption.getFirstMedia() != null));
                        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.shader);
                        nVImageView.setImageResource(R.drawable.ic_quiz_answer_shader_right);
                        nVImageView.setVisibility(0);
                        ((TextView) view.findViewById(R.id.answer_text)).setTextColor(-1);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAnswer() {
        QuizOption quizOption;
        if (isAttached()) {
            if (shaderList == null) {
                shaderList = new ArrayList();
                shaderList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_1));
                shaderList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_2));
                shaderList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_3));
                shaderList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_4));
            }
            Collections.shuffle(shaderList);
            int size = CollectionUtils.getSize(this.quizQuestion.quizOptions());
            for (final int i = 0; i < this.answers.size(); i++) {
                if (i < size && (quizOption = this.quizQuestion.quizOptions().get(i)) != null) {
                    final View view = this.answers.get(i);
                    NVImageView nVImageView = (NVImageView) view.findViewById(R.id.answer_image);
                    Media firstMedia = quizOption.getFirstMedia();
                    boolean z = firstMedia != null;
                    nVImageView.setImageMedia(firstMedia);
                    nVImageView.setVisibility(!z ? 8 : 0);
                    TextView textView = (TextView) view.findViewById(R.id.answer_text);
                    textView.setMaxLines(firstMedia == null ? 6 : 3);
                    textView.setText(quizOption.title);
                    NVImageView nVImageView2 = (NVImageView) view.findViewById(R.id.shader);
                    if (i < shaderList.size()) {
                        nVImageView2.setImageResource(shaderList.get(i).intValue());
                    }
                    nVImageView2.setVisibility(z ? 8 : 0);
                    view.setTag(quizOption);
                    if (isPlayed()) {
                        view.setClickable(false);
                        nVImageView.setShowPressedMask(false);
                    }
                    Drawable background = this.answers.get(i).findViewById(R.id.item_bg).getBackground();
                    if (background instanceof GradientDrawable) {
                        background.mutate();
                        if (z) {
                            ((GradientDrawable) background).setCornerRadii(this.fakeRadiusArray);
                        } else {
                            ((GradientDrawable) background).setCornerRadius(this.radius);
                        }
                    }
                    this.handler.postDelayed(new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.10
                        @Override // java.lang.Runnable
                        public void run() throws Resources.NotFoundException {
                            if (SceneQuizView.this.isAttached()) {
                                if (!SceneQuizView.this.isPlayed()) {
                                    ScaleBounceAnimator scaleBounceAnimator = new ScaleBounceAnimator(SceneQuizView.this.getContext(), view, SceneQuizView.scaleArray, SceneQuizView.timeArray);
                                    int i2 = i;
                                    if (i2 == 0) {
                                        view.setPivotX(Utils.isRtl() ? 0.0f : view.getWidth());
                                        view.setPivotY(r1.getHeight());
                                    } else if (i2 == 1) {
                                        view.setPivotX(Utils.isRtl() ? view.getWidth() : 0.0f);
                                        view.setPivotY(r1.getHeight());
                                    } else if (i2 == 2) {
                                        view.setPivotX(Utils.isRtl() ? 0.0f : view.getWidth());
                                        view.setPivotY(0.0f);
                                    } else if (i2 == 3) {
                                        view.setPivotX(Utils.isRtl() ? view.getWidth() : 0.0f);
                                        view.setPivotY(0.0f);
                                    }
                                    scaleBounceAnimator.playSeq(new Animator.AnimatorListener() { // from class: com.narvii.scene.quiz.SceneQuizView.10.1
                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationCancel(Animator animator) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationRepeat(Animator animator) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationStart(Animator animator) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public void onAnimationEnd(Animator animator) {
                                            if (i == SceneQuizView.this.answers.size() - 1) {
                                                SceneQuizView sceneQuizView = SceneQuizView.this;
                                                if (sceneQuizView.answerSelected) {
                                                    return;
                                                }
                                                sceneQuizView.alarmRunnable.run();
                                            }
                                        }
                                    });
                                    ViewUtils.fadeIn(view, 208);
                                }
                                view.setVisibility(0);
                            }
                        }
                    }, isPlayed() ? 0L : (this.isPreview ? 0 : 800) + (i * 125));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBounceAnimation(final View view) throws Resources.NotFoundException {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.bounce1);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.scene.quiz.SceneQuizView.11
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.startAnimation(AnimationUtils.loadAnimation(SceneQuizView.this.getContext(), R.anim.bounce2));
            }
        });
        view.startAnimation(animationLoadAnimation);
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.ScenePlayView
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (this.isActive && this.waitingNext) {
            this.handler.postDelayed(new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.12
                @Override // java.lang.Runnable
                public void run() {
                    SceneQuizView.this.next();
                }
            }, 200L);
        }
        if (isPlayed()) {
            if (this.isActive) {
                Runnable runnable = this.skipCountDownRunnable;
                if (runnable != null) {
                    Utils.post(runnable);
                    return;
                }
                return;
            }
            Runnable runnable2 = this.skipCountDownRunnable;
            if (runnable2 != null) {
                Utils.handler.removeCallbacks(runnable2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnswerUnClickable() {
        List<View> list = this.answers;
        if (list != null) {
            for (View view : list) {
                view.setClickable(false);
                NVImageView nVImageView = (NVImageView) view.findViewById(R.id.answer_image);
                if (nVImageView != null) {
                    nVImageView.setShowPressedMask(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopCountDownAnimation() {
        this.handler.removeCallbacks(this.alarmRunnable);
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        ScenePlayListener scenePlayListener;
        this.waitingNext = true;
        if (isAttached() && this.isActive && (scenePlayListener = this.scenePlayListener) != null) {
            scenePlayListener.onScenePlayEnd(this.sceneId);
        }
    }

    public static PageView getPageViewParent(View view) {
        if (view == null) {
            return null;
        }
        while (view != null) {
            if (view instanceof PageView) {
                return (PageView) view;
            }
            view = view.getParent() instanceof View ? (View) view.getParent() : null;
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.handler.removeCallbacks(null, null);
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        Runnable runnable = this.skipCountDownRunnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        super.onDetachedFromWindow();
    }

    private boolean hasImage(View view) {
        if (view == null) {
            return false;
        }
        Object tag = view.getTag();
        return (tag instanceof QuizOption) && ((QuizOption) tag).getFirstMedia() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRightAnswer() {
        for (View view : this.answers) {
            if (isViewRightAnswer(view)) {
                view.findViewById(R.id.item_bg).setBackgroundDrawable(getAnswerRightDrawable(hasImage(view)));
                ((TextView) view.findViewById(R.id.answer_text)).setTextColor(-1);
                NVImageView nVImageView = (NVImageView) view.findViewById(R.id.shader);
                nVImageView.setImageResource(R.drawable.ic_quiz_answer_shader_right);
                nVImageView.setVisibility(0);
            }
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
    @SuppressLint({"MissingPermission"})
    public void failVibrate() {
        try {
            ((Vibrator) getContext().getSystemService("vibrator")).vibrate(300L);
        } catch (Exception unused) {
        }
    }

    public Drawable getAnswerRightDrawable(boolean z) {
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable(ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_start), ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_end));
        if (z) {
            nVGradientDrawable.setRadius(this.fakeRadiusArray);
        } else {
            nVGradientDrawable.setRadius(this.radius);
        }
        return nVGradientDrawable;
    }

    public Drawable getAnswerWrongDrawable(boolean z) {
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable(ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_wrong_gradient_start), ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_wrong_gradient_end));
        if (z) {
            nVGradientDrawable.setRadius(this.fakeRadiusArray);
        } else {
            nVGradientDrawable.setRadius(this.radius);
        }
        return nVGradientDrawable;
    }

    private void generatePlayRecord() {
        if (this.scenePlayListener != null) {
            ScenePlayRecord scenePlayRecord = new ScenePlayRecord(1);
            QuizQuestionResult quizQuestionResult = new QuizQuestionResult();
            quizQuestionResult.quizQuestionId = this.quizQuestion.quizQuestionId;
            quizQuestionResult.optIdList = this.answerList;
            quizQuestionResult.timeSpent = (this.maxTime - this.remainingTime) / 1000.0f;
            List<String> list = quizQuestionResult.optIdList;
            if (list != null && !list.isEmpty()) {
                if (this.quizQuestion.isOptionIdCorrect(quizQuestionResult.optIdList.get(0))) {
                    scenePlayRecord.isAnswerRight = true;
                }
            }
            scenePlayRecord.result = quizQuestionResult;
            this.scenePlayListener.onScenePlayRecordGenerated(this.sceneId, scenePlayRecord);
        }
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.SceneInteractLogView
    public void logStart() {
        super.logStart();
        getLogEventBuilder().actSemantic(ActSemantic.quizStart).area(AREA_QUIZ).extraParam("questionShowId", this.showId).extraParam("questionId", this.quizQuestion.quizQuestionId).send();
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.SceneInteractLogView
    public void logEnd() {
        if (this.startTime == 0) {
            return;
        }
        getLogEventBuilder().actSemantic(ActSemantic.quizEnd).area(AREA_QUIZ).extraParam("questionShowId", this.showId).extraParam("questionId", this.quizQuestion.quizQuestionId).extraParam("endType", (!this.answerList.isEmpty() || this.timeout) ? "answer" : "skip").extraParam("pq_duration", Long.valueOf(SystemClock.elapsedRealtime() - this.startTime)).send();
        this.startTime = 0L;
    }
}
