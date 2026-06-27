package com.narvii.checkin;

import android.app.Activity;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class CheckInPopUpHelper {
    Activity activity;
    private Animation animFadeOut;
    private Animation animIn;
    private boolean centerInScreen;
    private ViewGroup decor;
    OnRPEarnedListener onRPEarnedListener;

    public interface OnRPEarnedListener {
        void onEarned(int i);
    }

    public void setCenterInScreen(boolean z) {
        this.centerInScreen = z;
    }

    public CheckInPopUpHelper(Activity activity) {
        this.activity = activity;
        if (activity == null) {
            return;
        }
        this.animIn = AnimationUtils.loadAnimation(activity, R.anim.check_in_popup_bounce);
        this.animFadeOut = AnimationUtils.loadAnimation(activity, R.anim.fade_out);
        this.decor = (ViewGroup) activity.getWindow().getDecorView();
    }

    public void showCheckInPopUp(CheckInResult checkInResult, OnRPEarnedListener onRPEarnedListener) {
        this.onRPEarnedListener = onRPEarnedListener;
        showFirstPopUp(checkInResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSecondPopUp(CheckInResult checkInResult) {
        final CheckInPopUp checkInPopUpAddCheckInPopUp = addCheckInPopUp();
        if (checkInPopUpAddCheckInPopUp == null) {
            return;
        }
        checkInPopUpAddCheckInPopUp.startAnimation(this.animIn);
        checkInPopUpAddCheckInPopUp.rpBG.setImageResource(R.drawable.rp_bonus_bg);
        checkInPopUpAddCheckInPopUp.rpView.setText("+" + checkInResult.additionalReputationPoint + " REP");
        checkInPopUpAddCheckInPopUp.text.setVisibility(8);
        checkInPopUpAddCheckInPopUp.title.setText(checkInResult.consecutiveCheckInDays + "x " + this.activity.getString(R.string.streak));
        OnRPEarnedListener onRPEarnedListener = this.onRPEarnedListener;
        if (onRPEarnedListener != null) {
            onRPEarnedListener.onEarned(checkInResult.additionalReputationPoint);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.CheckInPopUpHelper.1
            @Override // java.lang.Runnable
            public void run() {
                checkInPopUpAddCheckInPopUp.startAnimation(CheckInPopUpHelper.this.animFadeOut);
                CheckInPopUpHelper.this.decor.removeView(checkInPopUpAddCheckInPopUp);
            }
        }, 1500L);
    }

    private CheckInPopUp addCheckInPopUp() {
        Activity activity = this.activity;
        if (activity == null) {
            return null;
        }
        CheckInPopUp checkInPopUp = new CheckInPopUp(activity);
        if (this.decor.findViewById(R.id.check_in_pop_up) == null) {
            this.decor.addView(checkInPopUp);
            if (this.centerInScreen) {
                checkInPopUp.setCenterInScreen(true);
            }
        }
        return checkInPopUp;
    }

    private void showFirstPopUp(final CheckInResult checkInResult) {
        final CheckInPopUp checkInPopUpAddCheckInPopUp = addCheckInPopUp();
        if (checkInPopUpAddCheckInPopUp == null) {
            return;
        }
        checkInPopUpAddCheckInPopUp.startAnimation(this.animIn);
        checkInPopUpAddCheckInPopUp.rpBG.setImageResource(R.drawable.ic_reputation_gained);
        if (checkInResult.earnedReputationPoint <= 0) {
            checkInPopUpAddCheckInPopUp.checkStorke.setVisibility(0);
        } else {
            checkInPopUpAddCheckInPopUp.rpView.setText("+" + checkInResult.earnedReputationPoint + " REP");
        }
        checkInPopUpAddCheckInPopUp.text.setVisibility(0);
        checkInPopUpAddCheckInPopUp.text.setText(this.activity.getString(R.string.first_check_in_message) + "✌");
        OnRPEarnedListener onRPEarnedListener = this.onRPEarnedListener;
        if (onRPEarnedListener != null) {
            onRPEarnedListener.onEarned(checkInResult.earnedReputationPoint);
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.CheckInPopUpHelper.2
            @Override // java.lang.Runnable
            public void run() {
                checkInPopUpAddCheckInPopUp.startAnimation(CheckInPopUpHelper.this.animFadeOut);
                CheckInPopUpHelper.this.decor.removeView(checkInPopUpAddCheckInPopUp);
                CheckInPopUpHelper.this.animFadeOut.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.checkin.CheckInPopUpHelper.2.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        CheckInResult checkInResult2 = checkInResult;
                        if (checkInResult2.additionalReputationPoint > 0) {
                            CheckInPopUpHelper.this.showSecondPopUp(checkInResult2);
                            CheckInPopUpHelper.this.animFadeOut.setAnimationListener(null);
                        }
                    }
                });
            }
        }, 2000L);
    }
}
