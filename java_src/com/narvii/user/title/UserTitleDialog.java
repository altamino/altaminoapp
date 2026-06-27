package com.narvii.user.title;

import android.content.Context;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVDialog;
import com.narvii.model.User;

/* loaded from: classes3.dex */
public class UserTitleDialog extends NVDialog implements View.OnClickListener {
    User user;

    public UserTitleDialog(Context context, User user) {
        super(context, R.style.CustomDialogWithAnimation);
        if (user == null) {
            return;
        }
        this.user = user;
        setContentView(R.layout.dialog_user_title);
        ((UserTitleFlowView) findViewById(R.id.user_title_flow)).setUser(user);
        findViewById(R.id.bg).setOnClickListener(this);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        if (this.user == null) {
            dismiss();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(200L);
        View viewFindViewById = findViewById(R.id.bg);
        if (viewFindViewById != null) {
            viewFindViewById.startAnimation(alphaAnimation);
        }
        View viewFindViewById2 = findViewById(R.id.main_layout);
        if (viewFindViewById2 != null) {
            viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.scale_in));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.bg) {
            return;
        }
        dismiss();
    }
}
