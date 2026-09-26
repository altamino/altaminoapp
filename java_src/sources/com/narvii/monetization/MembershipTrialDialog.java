package com.narvii.monetization;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.annotation.NonNull;
import com.narvii.amino.master.R;
import com.narvii.app.NVDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.util.Utils;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.wallet.membership.MembershipActivity;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class MembershipTrialDialog extends NVDialog implements View.OnClickListener {
    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public MembershipTrialDialog(@NonNull Context context) {
        super(context, R.style.CustomDialogWithAnimation);
        StatusBarUtils.addTranslucentFlags(getWindow());
        setContentView(R.layout.dialog_membership_trial_layout);
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.try_free_btn_bg).setOnClickListener(this);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        super.cancel();
        ((StatisticsService) Utils.getNVContext(getContext()).getService("statistics")).event("Amino+ Trial Prompt").param("Event", "Dismissed").userPropInc("Amino+ Trial Prompt Dismissed Total");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.close) {
            if (id == R.id.try_free_btn_bg) {
                Intent intentCreateMembershipIntent = MembershipActivity.createMembershipIntent();
                intentCreateMembershipIntent.putExtra(ExternalPostPreviewFragment.SOURCE, "Try Amino+ Dialog");
                intentCreateMembershipIntent.putExtra("subscribe", true);
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intentCreateMembershipIntent);
                dismiss();
                ((StatisticsService) Utils.getNVContext(getContext()).getService("statistics")).event("Amino+ Trial Prompt").param("Event", "Try Button").userPropInc("Amino+ Trial Prompt Try Button Total");
                return;
            }
            return;
        }
        cancel();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(400L);
        View viewFindViewById = findViewById(R.id.bg);
        if (viewFindViewById != null) {
            viewFindViewById.startAnimation(alphaAnimation);
        }
        final View viewFindViewById2 = findViewById(R.id.main_layout);
        if (viewFindViewById2 != null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.dialog_in_popup_bounce);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.monetization.MembershipTrialDialog.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(MembershipTrialDialog.this.getContext(), R.anim.dialog_in_popup_bounce_2));
                }
            });
            viewFindViewById2.startAnimation(animationLoadAnimation);
        }
    }
}
