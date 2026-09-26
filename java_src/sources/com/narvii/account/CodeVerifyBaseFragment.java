package com.narvii.account;

import android.animation.ValueAnimator;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.master.R;
import com.narvii.logging.LogEvent;
import com.narvii.util.Utils;
import com.narvii.widget.CodeEditView;

/* JADX INFO: loaded from: classes10.dex */
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

    public abstract void onCountDownTimeChange(int i10);

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.account.AccountSignUpIndicatorView.IndicatorSuccessFinishedListener
    public void onTotallySuccess() {
    }

    protected void updateIndicatorStatus(int i10) {
    }

    @NonNull
    private CountDownTimer createCountDownTimer() {
        return new CountDownTimer(this.remainingTime, Math.max(ValueAnimator.getFrameDelay(), 50L)) { // from class: com.narvii.account.CodeVerifyBaseFragment.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                CodeVerifyBaseFragment.this.onCountDownTimeFinished();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j6) {
                CodeVerifyBaseFragment codeVerifyBaseFragment = CodeVerifyBaseFragment.this;
                codeVerifyBaseFragment.remainingTime = (int) j6;
                codeVerifyBaseFragment.onCountDownTimeChange((int) Math.ceil(j6 / 1000));
            }
        };
    }

    public void onCountDownTimeFinished() {
        this.btnResend.setClickable(true);
        this.btnResend.setOnClickListener(this);
        this.btnResend.setTextColor(ContextCompat.getColor(getContext(), R.color.account_signup_clickable_text_gray));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onDestroyView();
    }

    public void onResendCodeClicked() {
        this.btnResend.setTextColor(COLOR_DISABLE);
        this.btnResend.setClickable(false);
    }

    public void resetTimerCount() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            Utils.post(new Runnable() { // from class: com.narvii.account.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1705a.lambda$resetTimerCount$0();
                }
            });
        }
    }

    public void updateCodeErrorMessage(boolean z6) {
        TextView textView = this.codeVerificationError;
        if (textView != null) {
            textView.setVisibility(z6 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetTimerCount$0() {
        this.remainingTime = 60000L;
        CountDownTimer countDownTimerCreateCountDownTimer = createCountDownTimer();
        this.countDownTimer = countDownTimerCreateCountDownTimer;
        countDownTimerCreateCountDownTimer.start();
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

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.verifyCodeHelper = new VerifyCodeSharedPrefsHelper(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(layoutId(), viewGroup, false);
    }

    protected void onItemClicked(View view) {
        if (view.getId() == R.id.resend) {
            LogEvent.clickWildcardBuilder(this, "GetNewCode").send();
            onResendCodeClicked();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_REMAIN_TIME, 60000);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        CodeEditView codeEditView = (CodeEditView) view.findViewById(R.id.code_edit);
        this.codeEditView = codeEditView;
        codeEditView.requestFocus();
        this.codeEditView.setOnCodeContentChangeListener(this);
        TextView textView = (TextView) view.findViewById(R.id.resend);
        this.btnResend = textView;
        textView.setClickable(false);
        this.btnResend.setTextColor(COLOR_DISABLE);
        this.remainingTime = Math.max(60000 - (System.currentTimeMillis() - getVerifyTime()), 0L);
        CountDownTimer countDownTimerCreateCountDownTimer = createCountDownTimer();
        this.countDownTimer = countDownTimerCreateCountDownTimer;
        countDownTimerCreateCountDownTimer.start();
        this.codeVerificationError = (TextView) view.findViewById(R.id.code_verification_error);
    }
}
