package com.narvii.quiz;

import android.animation.ValueAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.model.Blog;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.quiz.theme.QuizBaseFragment;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public class QuizWelcomeFragment extends QuizBaseFragment implements FragmentWillFinishListener {
    public static final int DEFAULT_REMAINING_TIME = 3000;
    private TextView countDown;
    private TextView countDownAnim;
    CountDownTimer countDownTimer;
    int remainingTime = 3000;
    private int showremainingTime;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment
    protected boolean allowQuit() {
        return true;
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

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoFirstQuestion() {
        if (getActivity() != null) {
            Intent intent = FragmentWrapperActivity.intent(QuizQuestionFragment.class);
            intent.putExtra("quiz", JacksonUtils.writeAsString(this.quiz));
            intent.putExtra("hellMode", getBooleanParam("hellMode"));
            intent.putExtra("currentQuestion", 0);
            addQuizListExtra(intent);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            getActivity().overridePendingTransition(R.anim.activity_scale_in, R.anim.fade_out);
            getActivity().finish();
        }
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        shuffleQuiz(this.quiz);
        getActivity().getActionBar().hide();
        if (bundle != null) {
            this.remainingTime = bundle.getInt("remainingTime");
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_quiz_welcome, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.countDownTimer = new CountDownTimer(this.remainingTime, Math.max(ValueAnimator.getFrameDelay(), 10L)) { // from class: com.narvii.quiz.QuizWelcomeFragment.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                QuizWelcomeFragment.this.gotoFirstQuestion();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j6) {
                int i10 = (int) j6;
                QuizWelcomeFragment.this.remainingTime = i10;
                int iCeil = (int) Math.ceil(i10 / 1000.0f);
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
                    public void onAnimationEnd(Animation animation) {
                        QuizWelcomeFragment.this.countDown.setText(QuizWelcomeFragment.this.countDownAnim.getText());
                        QuizWelcomeFragment.this.countDown.setAlpha(1.0f);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(QuizWelcomeFragment.this.getContext(), R.anim.fade_out);
                        animationLoadAnimation2.setFillAfter(true);
                        animationLoadAnimation2.setDuration(250L);
                        QuizWelcomeFragment.this.countDown.startAnimation(animationLoadAnimation2);
                    }
                });
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("remainingTime", this.remainingTime);
    }

    @Override // com.narvii.quiz.theme.QuizBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.countDown = (TextView) view.findViewById(R.id.count_down);
        this.countDownAnim = (TextView) view.findViewById(R.id.count_down_anim);
        this.countDown.setLayerType(1, null);
        this.countDownAnim.setLayerType(1, null);
    }
}
