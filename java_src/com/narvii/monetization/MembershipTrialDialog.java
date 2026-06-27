package com.narvii.monetization;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVDialog;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.wallet.MembershipMainRecyclerFragment;

/* loaded from: classes3.dex */
public class MembershipTrialDialog extends NVDialog implements View.OnClickListener {
    public MembershipTrialDialog(Context context) {
        super(context, R.style.CustomDialogWithAnimation);
        StatusBarUtils.addTranslucentFlags(getWindow());
        setContentView(R.layout.dialog_membership_trial_layout);
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.try_free_btn_bg).setOnClickListener(this);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() throws Resources.NotFoundException {
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

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        super.cancel();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            cancel();
            return;
        }
        if (id != R.id.try_free_btn_bg) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
        intent.putExtra("Source", "Try Amino+ Dialog");
        intent.putExtra("subscribe", true);
        getContext().startActivity(intent);
        dismiss();
    }
}
