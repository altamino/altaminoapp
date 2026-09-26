package com.narvii.scene.quiz;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.paging.PageView;
import com.narvii.scene.ScenePlayBaseView;
import com.narvii.scene.ScenePlayListener;
import com.narvii.scene.ScenePlayRecord;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
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

/* JADX INFO: loaded from: classes4.dex */
public class SceneQuizView extends ScenePlayBaseView {
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

    public SceneQuizView(@NonNull Context context) {
        this(context, null);
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

    private boolean hasImage(View view) {
        if (view == null) {
            return false;
        }
        Object tag = view.getTag();
        return (tag instanceof QuizOption) && ((QuizOption) tag).getFirstMedia() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPlayed() {
        return this.scenePlayRecord != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        ScenePlayListener scenePlayListener;
        this.waitingNext = true;
        if (isAttached() && this.isActive && (scenePlayListener = this.scenePlayListener) != null) {
            scenePlayListener.onScenePlayEnd(this.sceneId);
        }
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.SceneInteractLogView
    public void logEnd() {
        if (this.startTime == 0) {
            return;
        }
        this.startTime = 0L;
    }

    public SceneQuizView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.answers = new ArrayList();
        this.answerList = new ArrayList<>();
        this.handler = new Handler(Looper.getMainLooper());
        this.remainingTime = 10000;
        this.maxTime = 10000;
        this.remainingSeconds = 3;
        this.alarmRunnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.1
            @Override // java.lang.Runnable
            public void run() {
                if (SceneQuizView.this.isAttached()) {
                    SceneQuizView.this.countDownTimer = new CountDownTimer(SceneQuizView.this.remainingTime, Math.max(ValueAnimator.getFrameDelay(), 10L)) { // from class: com.narvii.scene.quiz.SceneQuizView.1.1
                        @Override // android.os.CountDownTimer
                        public void onFinish() {
                            SceneQuizView sceneQuizView = SceneQuizView.this;
                            sceneQuizView.remainingTime = 0;
                            sceneQuizView.alarmTV.clearAnimation();
                            SceneQuizView.this.alarmTVAnim.clearAnimation();
                            SceneQuizView.this.startCountDownAnim(0);
                            SceneQuizView.this.progressBar.setProgress(0);
                            SceneQuizView.this.failVibrate();
                            SceneQuizView sceneQuizView2 = SceneQuizView.this;
                            sceneQuizView2.timeout = true;
                            sceneQuizView2.sendAnswerLog();
                            SceneQuizView.this.setAnswerUnClickable();
                            SceneQuizView sceneQuizView3 = SceneQuizView.this;
                            sceneQuizView3.handler.postDelayed(sceneQuizView3.showRightAnswerRunnable, 1000L);
                        }

                        @Override // android.os.CountDownTimer
                        public void onTick(long j6) {
                            if (SceneQuizView.this.isAttached()) {
                                SceneQuizView.this.alarmTV.setVisibility(0);
                                SceneQuizView.this.progressBar.setVisibility(0);
                                int i10 = (int) j6;
                                SceneQuizView.this.remainingTime = i10;
                                int iCeil = (int) Math.ceil(i10 / 1000.0f);
                                SceneQuizView sceneQuizView = SceneQuizView.this;
                                sceneQuizView.progressBar.setProgress(sceneQuizView.remainingTime);
                                SceneQuizView sceneQuizView2 = SceneQuizView.this;
                                if (sceneQuizView2.remainingTime > 3000) {
                                    sceneQuizView2.alarmTV.setText(String.valueOf(iCeil));
                                    return;
                                }
                                if (!sceneQuizView2.toThree) {
                                    SceneQuizView sceneQuizView3 = SceneQuizView.this;
                                    sceneQuizView3.redAlert = (GradientView) sceneQuizView3.findViewById(R.id.red_alert);
                                    SceneQuizView.this.redAlert.setColor(-33908, -54685);
                                    SceneQuizView sceneQuizView4 = SceneQuizView.this;
                                    sceneQuizView4.redAlert.setRadius(Utils.dpToPxInt(sceneQuizView4.getContext(), 20.0f));
                                    SceneQuizView.this.redAlert.setVisibility(0);
                                    SceneQuizView.this.toThree = true;
                                }
                                SceneQuizView.this.startCountDownAnim(iCeil);
                            }
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
        View.inflate(getContext(), R.layout.scene_quiz, this);
        this.sceneQuizAnswerParent = (SceneQuizAnswerParent) findViewById(R.id.scene_quiz_answer_parent);
        this.title = (TextView) findViewById(R.id.question);
        this.countDownLayout = findViewById(R.id.count_down_layout);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_corner_radius_fake);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_corner_radius);
        this.radius = dimensionPixelSize2;
        float f = dimensionPixelSize;
        this.fakeRadiusArray = new float[]{f, f, f, f, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2};
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.scene.quiz.SceneQuizView.6
            /* JADX WARN: Code duplicated, block: B:14:0x0054  */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z6;
                SceneQuizView sceneQuizView = SceneQuizView.this;
                sceneQuizView.answerSelected = true;
                sceneQuizView.setAnswerUnClickable();
                boolean zIsViewRightAnswer = SceneQuizView.this.isViewRightAnswer(view);
                if (zIsViewRightAnswer) {
                    try {
                        MediaPlayer mediaPlayerCreate = MediaPlayer.create(SceneQuizView.this.getContext(), R.raw.quiz_question_right_answer);
                        mediaPlayerCreate.setAudioStreamType(3);
                        mediaPlayerCreate.start();
                    } catch (Exception e) {
                        Log.e(e.getMessage());
                    }
                } else {
                    SceneQuizView.this.failVibrate();
                }
                Object tag = view.getTag();
                if (tag instanceof QuizOption) {
                    QuizOption quizOption = (QuizOption) tag;
                    SceneQuizView.this.answerList.clear();
                    SceneQuizView.this.answerList.add(quizOption.optId);
                    z6 = quizOption.getFirstMedia() != null;
                }
                SceneQuizView.this.sendAnswerLog();
                if (zIsViewRightAnswer) {
                    view.findViewById(R.id.item_bg).setBackgroundDrawable(SceneQuizView.this.getAnswerRightDrawable(z6));
                } else {
                    view.findViewById(R.id.item_bg).setBackgroundDrawable(SceneQuizView.this.getAnswerWrongDrawable(z6));
                }
                NVImageView nVImageView = (NVImageView) view.findViewById(R.id.shader);
                nVImageView.setImageResource(zIsViewRightAnswer ? R.drawable.ic_quiz_answer_shader_right : R.drawable.ic_quiz_answer_shader_wrong);
                nVImageView.setVisibility(0);
                SceneQuizView.this.stopCountDownAnimation();
                ((TextView) view.findViewById(R.id.answer_text)).setTextColor(-1);
                if (zIsViewRightAnswer) {
                    SceneQuizView sceneQuizView2 = SceneQuizView.this;
                    sceneQuizView2.handler.postDelayed(sceneQuizView2.dismissWrongAnswerRunnable, 1000L);
                } else {
                    SceneQuizView sceneQuizView3 = SceneQuizView.this;
                    sceneQuizView3.handler.postDelayed(sceneQuizView3.showRightAnswerRunnable, 1000L);
                }
            }
        };
        this.answers.add(findViewById(R.id.answer_1));
        this.answers.add(findViewById(R.id.answer_2));
        this.answers.add(findViewById(R.id.answer_3));
        this.answers.add(findViewById(R.id.answer_4));
        CircleProgressBar circleProgressBar = (CircleProgressBar) findViewById(R.id.progress);
        this.progressBar = circleProgressBar;
        circleProgressBar.setSwipeGradientColor(true, true, -13107279, -16728132);
        this.progressBar.setMax(this.maxTime);
        this.progressBar.setProgress(this.remainingTime);
        TextView textView = (TextView) findViewById(R.id.alarm);
        this.alarmTV = textView;
        textView.setText(String.valueOf((int) Math.ceil(this.remainingTime / 1000.0f)));
        this.alarmTVAnim = (TextView) findViewById(R.id.alarm_anim);
        for (int i10 = 0; i10 < this.answers.size(); i10++) {
            this.answers.get(i10).setVisibility(4);
            this.answers.get(i10).setOnClickListener(onClickListener);
        }
    }

    private void generatePlayRecord() {
        if (this.scenePlayListener != null) {
            ScenePlayRecord scenePlayRecord = new ScenePlayRecord(1);
            QuizQuestionResult quizQuestionResult = new QuizQuestionResult();
            quizQuestionResult.quizQuestionId = this.quizQuestion.quizQuestionId;
            ArrayList<String> arrayList = this.answerList;
            quizQuestionResult.optIdList = arrayList;
            quizQuestionResult.timeSpent = (this.maxTime - this.remainingTime) / 1000.0f;
            if (arrayList != null && !arrayList.isEmpty()) {
                if (this.quizQuestion.isOptionIdCorrect(quizQuestionResult.optIdList.get(0))) {
                    scenePlayRecord.isAnswerRight = true;
                }
            }
            scenePlayRecord.result = quizQuestionResult;
            this.scenePlayListener.onScenePlayRecordGenerated(this.sceneId, scenePlayRecord);
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
    public void startCountDownAnim(int i10) {
        if (this.showingTime != i10) {
            this.showingTime = i10;
            this.alarmTVAnim.setText(i10 + "");
            this.alarmTVAnim.setVisibility(0);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.scene_quiz_count_down_in);
            animationLoadAnimation.setFillAfter(true);
            this.alarmTVAnim.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.scene.quiz.SceneQuizView.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    SceneQuizView sceneQuizView = SceneQuizView.this;
                    sceneQuizView.alarmTV.setText(sceneQuizView.alarmTVAnim.getText());
                    SceneQuizView.this.alarmTV.setAlpha(1.0f);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(SceneQuizView.this.getContext(), R.anim.fade_out);
                    animationLoadAnimation2.setFillAfter(true);
                    animationLoadAnimation2.setDuration(250L);
                    SceneQuizView.this.alarmTV.startAnimation(animationLoadAnimation2);
                }
            });
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

    public Drawable getAnswerRightDrawable(boolean z6) {
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable(ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_start), ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_right_gradient_end));
        if (z6) {
            nVGradientDrawable.setRadius(this.fakeRadiusArray);
        } else {
            nVGradientDrawable.setRadius(this.radius);
        }
        return nVGradientDrawable;
    }

    public Drawable getAnswerWrongDrawable(boolean z6) {
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable(ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_wrong_gradient_start), ContextCompat.getColor(getContext(), R.color.scene_quiz_answer_wrong_gradient_end));
        if (z6) {
            nVGradientDrawable.setRadius(this.fakeRadiusArray);
        } else {
            nVGradientDrawable.setRadius(this.radius);
        }
        return nVGradientDrawable;
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

    public void playQuizQuestion(final String str, QuizQuestion quizQuestion, ScenePlayRecord scenePlayRecord) {
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
                TextView textView = (TextView) findViewById(R.id.skip_hint);
                this.skipText = textView;
                textView.setVisibility(0);
                this.skipText.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.scene.quiz.SceneQuizView.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (((ScenePlayBaseView) SceneQuizView.this).scenePlayListener != null) {
                            ((ScenePlayBaseView) SceneQuizView.this).scenePlayListener.onScenePlayEnd(str);
                        }
                    }
                });
                Runnable runnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.8
                    @Override // java.lang.Runnable
                    public void run() {
                        SceneQuizView sceneQuizView = SceneQuizView.this;
                        if (sceneQuizView.remainingSeconds > 0) {
                            sceneQuizView.skipText.setText(sceneQuizView.getResources().getString(R.string.skip_n_second, Integer.valueOf(SceneQuizView.this.remainingSeconds)));
                        }
                        SceneQuizView sceneQuizView2 = SceneQuizView.this;
                        int i10 = sceneQuizView2.remainingSeconds - 1;
                        sceneQuizView2.remainingSeconds = i10;
                        if (i10 >= 0) {
                            Utils.postDelayed(this, 1000L);
                        } else {
                            sceneQuizView2.skipText.performClick();
                        }
                    }
                };
                this.skipCountDownRunnable = runnable;
                Utils.post(runnable);
            }
        }
    }

    public void setQuizAnswerParentForceCenter() {
        SceneQuizAnswerParent sceneQuizAnswerParent = this.sceneQuizAnswerParent;
        if (sceneQuizAnswerParent != null) {
            sceneQuizAnswerParent.setForceCenter(true);
        }
    }

    private void fadeInCountDown() {
        if (!isAttached()) {
            return;
        }
        this.countDownLayout.setVisibility(0);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
        animationLoadAnimation.setDuration(300L);
        this.countDownLayout.startAnimation(animationLoadAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void failVibrate() {
        try {
            ((Vibrator) getContext().getSystemService("vibrator")).vibrate(300L);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAttached() {
        return ViewCompat.W(this);
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
    public void sendAnswerLog() {
        generatePlayRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAnswer() {
        QuizOption quizOption;
        boolean z6;
        int i10;
        int i11;
        int i12;
        long j6;
        if (!isAttached()) {
            return;
        }
        if (shaderList == null) {
            ArrayList arrayList = new ArrayList();
            shaderList = arrayList;
            arrayList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_1));
            shaderList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_2));
            shaderList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_3));
            shaderList.add(Integer.valueOf(R.drawable.ic_quiz_answer_shader_4));
        }
        Collections.shuffle(shaderList);
        int size = CollectionUtils.getSize(this.quizQuestion.quizOptions());
        for (final int i13 = 0; i13 < this.answers.size(); i13++) {
            if (i13 < size && (quizOption = this.quizQuestion.quizOptions().get(i13)) != null) {
                final View view = this.answers.get(i13);
                NVImageView nVImageView = (NVImageView) view.findViewById(R.id.answer_image);
                Media firstMedia = quizOption.getFirstMedia();
                if (firstMedia != null) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                nVImageView.setImageMedia(firstMedia);
                int i14 = 8;
                if (!z6) {
                    i10 = 8;
                } else {
                    i10 = 0;
                }
                nVImageView.setVisibility(i10);
                TextView textView = (TextView) view.findViewById(R.id.answer_text);
                if (firstMedia == null) {
                    i11 = 6;
                } else {
                    i11 = 3;
                }
                textView.setMaxLines(i11);
                textView.setText(quizOption.title);
                NVImageView nVImageView2 = (NVImageView) view.findViewById(R.id.shader);
                if (i13 < shaderList.size()) {
                    nVImageView2.setImageResource(shaderList.get(i13).intValue());
                }
                if (!z6) {
                    i14 = 0;
                }
                nVImageView2.setVisibility(i14);
                view.setTag(quizOption);
                if (isPlayed()) {
                    view.setClickable(false);
                    nVImageView.setShowPressedMask(false);
                }
                Drawable background = this.answers.get(i13).findViewById(R.id.item_bg).getBackground();
                if (background instanceof GradientDrawable) {
                    background.mutate();
                    if (z6) {
                        ((GradientDrawable) background).setCornerRadii(this.fakeRadiusArray);
                    } else {
                        ((GradientDrawable) background).setCornerRadius(this.radius);
                    }
                }
                Handler handler = this.handler;
                Runnable runnable = new Runnable() { // from class: com.narvii.scene.quiz.SceneQuizView.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SceneQuizView.this.isAttached()) {
                            if (!SceneQuizView.this.isPlayed()) {
                                ScaleBounceAnimator scaleBounceAnimator = new ScaleBounceAnimator(SceneQuizView.this.getContext(), view, SceneQuizView.scaleArray, SceneQuizView.timeArray);
                                int i15 = i13;
                                if (i15 == 0) {
                                    view.setPivotX(Utils.isRtl() ? 0.0f : view.getWidth());
                                    View view2 = view;
                                    view2.setPivotY(view2.getHeight());
                                } else if (i15 == 1) {
                                    view.setPivotX(Utils.isRtl() ? view.getWidth() : 0.0f);
                                    View view3 = view;
                                    view3.setPivotY(view3.getHeight());
                                } else if (i15 == 2) {
                                    view.setPivotX(Utils.isRtl() ? 0.0f : view.getWidth());
                                    view.setPivotY(0.0f);
                                } else if (i15 == 3) {
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
                                        AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                        if (i13 == SceneQuizView.this.answers.size() - 1) {
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
                };
                if (isPlayed()) {
                    j6 = 0;
                } else {
                    if (this.isPreview) {
                        i12 = 0;
                    } else {
                        i12 = 800;
                    }
                    j6 = i12 + (i13 * 125);
                }
                handler.postDelayed(runnable, j6);
            }
        }
    }

    private void showQuestion() {
        long j6;
        if (!isAttached()) {
            return;
        }
        this.title.setText(this.quizQuestion.title);
        this.title.setVisibility(0);
        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(getContext(), R.animator.fade_in);
        if (isPlayed()) {
            j6 = 0;
        } else {
            j6 = 300;
        }
        animatorLoadAnimator.setDuration(j6);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void startBounceAnimation(final View view) {
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

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.SceneInteractLogView
    public void logStart() {
        super.logStart();
    }

    @Override // com.narvii.scene.ScenePlayBaseView, com.narvii.scene.ScenePlayView
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
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
}
