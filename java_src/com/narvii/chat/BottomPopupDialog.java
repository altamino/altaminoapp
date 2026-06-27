package com.narvii.chat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.monetization.store.view.TippingDialogFrameLayout;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BottomPopupDialog.kt */
/* loaded from: classes2.dex */
public abstract class BottomPopupDialog extends NVDialog {
    private View container;
    private final NVContext ctx;
    private boolean isAnimating;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomPopupDialog(NVContext ctx) {
        super(ctx, R.style.CustomDialogWithAnimation);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
    }

    protected final View setupView(int i) {
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        TippingDialogFrameLayout tippingDialogFrameLayout = new TippingDialogFrameLayout(context);
        tippingDialogFrameLayout.setBackgroundColor(backgroundColor());
        tippingDialogFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        View view = new View(this.ctx.getContext());
        view.setId(R.id.click_remove_mask);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.BottomPopupDialog.setupView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws Resources.NotFoundException {
                BottomPopupDialog.this.dismiss();
            }
        });
        tippingDialogFrameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        View viewInflate = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) tippingDialogFrameLayout, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(cont…flate(layoutId, v, false)");
        this.container = viewInflate;
        View view2 = this.container;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("container");
            throw null;
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.BottomPopupDialog.setupView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
            }
        });
        View view3 = this.container;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("container");
            throw null;
        }
        tippingDialogFrameLayout.addView(view3);
        setContentView(tippingDialogFrameLayout);
        View view4 = this.container;
        if (view4 != null) {
            return view4;
        }
        Intrinsics.throwUninitializedPropertyAccessException("container");
        throw null;
    }

    public int backgroundColor() {
        return Color.parseColor("#66000000");
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() throws Resources.NotFoundException {
        super.show();
        this.isAnimating = false;
        View view = this.container;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("container");
            throw null;
        }
        view.setVisibility(0);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom);
        View view2 = this.container;
        if (view2 != null) {
            view2.startAnimation(animationLoadAnimation);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("container");
            throw null;
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() throws Resources.NotFoundException {
        View view = this.container;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("container");
            throw null;
        }
        if (view.getVisibility() != 0) {
            super.dismiss();
            return;
        }
        if (this.isAnimating) {
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_bottom);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.chat.BottomPopupDialog.dismiss.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
                BottomPopupDialog.super.dismiss();
            }
        });
        View view2 = this.container;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("container");
            throw null;
        }
        view2.startAnimation(animationLoadAnimation);
        this.isAnimating = true;
    }
}
