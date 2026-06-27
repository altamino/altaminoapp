package com.narvii.quiz;

import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.model.Blog;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.quiz.theme.QuizBaseFragment;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* loaded from: classes3.dex */
public class QuizWelcomeFragment extends QuizBaseFragment implements FragmentWillFinishListener {
    public static final int DEFAULT_REMAINING_TIME = 3000;
    private static boolean SHOW_ADS;
    private TextView countDown;
    private TextView countDownAnim;
    CountDownTimer countDownTimer;
    int remainingTime = 3000;
    private int showremainingTime;

    @Override // com.narvii.quiz.theme.QuizBaseFragment
    protected boolean allowQuit() {
        return true;
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        shuffleQuiz(this.quiz);
        getActivity().getActionBar().hide();
        if (bundle != null) {
            this.remainingTime = bundle.getInt("remainingTime");
        }
    }

    private void shuffleQuiz(Blog blog) {
        if (blog == null || CollectionUtils.isEmpty(blog.quizQuestionList)) {
            return;
        }
        for (QuizQuestion quizQuestion : blog.quizQuestionList) {
            if (quizQuestion != null) {
                List<QuizOption> listQuizOptions = quizQuestion.quizOptions();
                Collections.shuffle(listQuizOptions, new Random(System.currentTimeMillis()));
                quizQuestion.setQuizOptions(listQuizOptions);
            }
        }
        Collections.shuffle(blog.quizQuestionList, new Random(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoFirstQuestion() {
        if (getActivity() != null) {
            Intent intent = FragmentWrapperActivity.intent(QuizQuestionFragment.class);
            intent.putExtra(EntryManager.ENTRY_QUIZZES, JacksonUtils.writeAsString(this.quiz));
            intent.putExtra("hellMode", getBooleanParam("hellMode"));
            intent.putExtra("currentQuestion", 0);
            addQuizListExtra(intent);
            startActivity(intent);
            getActivity().overridePendingTransition(R.anim.activity_scale_in, R.anim.fade_out);
            getActivity().finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_quiz_welcome, viewGroup, false);
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.countDown = (TextView) view.findViewById(R.id.count_down);
        this.countDownAnim = (TextView) view.findViewById(R.id.count_down_anim);
        this.countDown.setLayerType(1, null);
        this.countDownAnim.setLayerType(1, null);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.countDownTimer = new CountDownTimer(this.remainingTime, Math.max(ValueAnimator.getFrameDelay(), 10L)) { // from class: com.narvii.quiz.QuizWelcomeFragment.1
            @Override // android.os.CountDownTimer
            public void onTick(long j) throws Resources.NotFoundException {
                QuizWelcomeFragment.this.remainingTime = (int) j;
                int iCeil = (int) Math.ceil(r0.remainingTime / 1000.0f);
                if (QuizWelcomeFragment.this.showremainingTime == iCeil || iCeil <= 0) {
                    return;
                }
                QuizWelcomeFragment.this.showremainingTime = iCeil;
                QuizWelcomeFragment.this.countDownAnim.setText(QuizWelcomeFragment.this.showremainingTime + "");
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(QuizWelcomeFragment.this.getContext(), R.anim.quiz_welcome_count_down_in);
                animationLoadAnimation.setFillAfter(true);
                QuizWelcomeFragment.this.countDownAnim.startAnimation(animationLoadAnimation);
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.quiz.QuizWelcomeFragment.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) throws Resources.NotFoundException {
                        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(QuizWelcomeFragment.this.getContext(), R.anim.fade_out);
                        animationLoadAnimation2.setFillAfter(true);
                        animationLoadAnimation2.setDuration(250L);
                        QuizWelcomeFragment.this.countDown.startAnimation(animationLoadAnimation2);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        QuizWelcomeFragment.this.countDown.setText(QuizWelcomeFragment.this.countDownAnim.getText());
                        QuizWelcomeFragment.this.countDown.setAlpha(1.0f);
                    }
                });
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                QuizWelcomeFragment.this.gotoFirstQuestion();
            }
        };
        Utils.postDelayed(new Runnable() { // from class: com.narvii.quiz.QuizWelcomeFragment.2
            @Override // java.lang.Runnable
            public void run() {
                if (QuizWelcomeFragment.this.isResumed()) {
                    QuizWelcomeFragment.this.countDownTimer.start();
                }
            }
        }, 200L);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("remainingTime", this.remainingTime);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }
}
