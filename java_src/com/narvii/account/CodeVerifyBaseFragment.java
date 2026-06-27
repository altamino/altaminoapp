package com.narvii.account;

import android.animation.ValueAnimator;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.amino.mastes.R;
import com.narvii.logging.LogEvent;
import com.narvii.util.Utils;
import com.narvii.widget.CodeEditView;

/* loaded from: classes2.dex */
public abstract class CodeVerifyBaseFragment extends AccountBaseFragment implements View.OnClickListener, CodeEditView.CodeContentChangeListener {
    private static final int COLOR_DISABLE = -4868683;
    protected static final int COUNT_CODE_LIMIT = 6;
    private static final String KEY_REMAIN_TIME = "key_remain_time";
    private static final int TIMER_CIRCLE = 60000;
    private static final int TIMER_CIRCLE_DEBUG = 10000;
    private static final int TIMER_INTERVAL = 1000;
    protected TextView btnResend;
    protected CodeEditView codeEditView;
    protected TextView codeVerificationError;
    private CountDownTimer countDownTimer;
    long remainingTime;
    protected VerifyCodeSharedPrefsHelper verifyCodeHelper;

    @Override // com.narvii.account.AccountBaseFragment
    public boolean cancel() {
        return false;
    }

    protected abstract long getVerifyTime();

    public abstract int layoutId();

    public abstract void onCodeFinished(String str);

    public abstract void onCountDownTimeChange(int i);

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.account.AccountSignUpIndicatorView.IndicatorSuccessFinishedListener
    public void onTotallySuccess() {
    }

    protected void updateIndicatorStatus(int i) {
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.verifyCodeHelper = new VerifyCodeSharedPrefsHelper(getContext());
    }

    private CountDownTimer createCountDownTimer() {
        return new CountDownTimer(this.remainingTime, Math.max(ValueAnimator.getFrameDelay(), 50L)) { // from class: com.narvii.account.CodeVerifyBaseFragment.1
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                CodeVerifyBaseFragment codeVerifyBaseFragment = CodeVerifyBaseFragment.this;
                codeVerifyBaseFragment.remainingTime = (int) j;
                codeVerifyBaseFragment.onCountDownTimeChange((int) Math.ceil(j / 1000));
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                CodeVerifyBaseFragment.this.onCountDownTimeFinished();
            }
        };
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(layoutId(), viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.codeEditView = (CodeEditView) view.findViewById(R.id.code_edit);
        this.codeEditView.requestFocus();
        this.codeEditView.setOnCodeContentChangeListener(this);
        this.btnResend = (TextView) view.findViewById(R.id.resend);
        this.btnResend.setClickable(false);
        this.btnResend.setTextColor(COLOR_DISABLE);
        this.remainingTime = Math.max(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS - (System.currentTimeMillis() - getVerifyTime()), 0L);
        this.countDownTimer = createCountDownTimer();
        this.countDownTimer.start();
        this.codeVerificationError = (TextView) view.findViewById(R.id.code_verification_error);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onDestroyView();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_REMAIN_TIME, 60000);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        onItemClicked(view);
    }

    @Override // com.narvii.widget.CodeEditView.CodeContentChangeListener
    public void onCodeChanged(String str) {
        if (str.length() >= 6) {
            onCodeFinished(str);
        } else {
            updateCodeErrorMessage(false);
        }
    }

    public void onResendCodeClicked() {
        this.btnResend.setTextColor(COLOR_DISABLE);
        this.btnResend.setClickable(false);
    }

    public void onCountDownTimeFinished() {
        this.btnResend.setClickable(true);
        this.btnResend.setOnClickListener(this);
        this.btnResend.setTextColor(ContextCompat.getColor(getContext(), R.color.account_signup_clickable_text_gray));
    }

    protected void onItemClicked(View view) {
        if (view.getId() != R.id.resend) {
            return;
        }
        LogEvent.clickWildcardBuilder(this, "GetNewCode").send();
        onResendCodeClicked();
    }

    public void resetTimerCount() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            Utils.post(new Runnable() { // from class: com.narvii.account.-$$Lambda$CodeVerifyBaseFragment$J3B85TZP3RSjxkFEYaXG0X6vDxw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$resetTimerCount$0$CodeVerifyBaseFragment();
                }
            });
        }
    }

    public /* synthetic */ void lambda$resetTimerCount$0$CodeVerifyBaseFragment() {
        this.remainingTime = DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS;
        this.countDownTimer = createCountDownTimer();
        this.countDownTimer.start();
    }

    public void updateCodeErrorMessage(boolean z) {
        TextView textView = this.codeVerificationError;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }
}
