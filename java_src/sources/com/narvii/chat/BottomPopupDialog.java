package com.narvii.chat;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.monetization.store.view.TippingDialogFrameLayout;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BottomPopupDialog extends NVDialog {
    private View container;

    @NotNull
    private final NVContext ctx;
    private boolean isAnimating;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupView$lambda$1(View view) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomPopupDialog(@NotNull NVContext ctx) {
        super(ctx, R.style.CustomDialogWithAnimation);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.ctx = ctx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupView$lambda$0(BottomPopupDialog this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.dismiss();
    }

    public int backgroundColor() {
        return Color.parseColor("#66000000");
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        View view = this.container;
        View view2 = null;
        if (view == null) {
            kotlin.jvm.internal.t.B("container");
            view = null;
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
            public void onAnimationRepeat(@NotNull Animation animation) {
                kotlin.jvm.internal.t.j(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(@NotNull Animation animation) {
                kotlin.jvm.internal.t.j(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(@NotNull Animation animation) {
                kotlin.jvm.internal.t.j(animation, "animation");
                BottomPopupDialog.super.dismiss();
            }
        });
        View view3 = this.container;
        if (view3 == null) {
            kotlin.jvm.internal.t.B("container");
        } else {
            view2 = view3;
        }
        view2.startAnimation(animationLoadAnimation);
        this.isAnimating = true;
    }

    @NotNull
    protected final View setupView(int i10) {
        Context context = this.ctx.getContext();
        kotlin.jvm.internal.t.i(context, "getContext(...)");
        TippingDialogFrameLayout tippingDialogFrameLayout = new TippingDialogFrameLayout(context);
        tippingDialogFrameLayout.setBackgroundColor(backgroundColor());
        tippingDialogFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        View view = new View(this.ctx.getContext());
        view.setId(R.id.click_remove_mask);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BottomPopupDialog.setupView$lambda$0(this.f1856a, view2);
            }
        });
        tippingDialogFrameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        View viewInflate = LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) tippingDialogFrameLayout, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        this.container = viewInflate;
        if (viewInflate == null) {
            kotlin.jvm.internal.t.B("container");
            viewInflate = null;
        }
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BottomPopupDialog.setupView$lambda$1(view2);
            }
        });
        View view2 = this.container;
        if (view2 == null) {
            kotlin.jvm.internal.t.B("container");
            view2 = null;
        }
        tippingDialogFrameLayout.addView(view2);
        setContentView(tippingDialogFrameLayout);
        View view3 = this.container;
        if (view3 != null) {
            return view3;
        }
        kotlin.jvm.internal.t.B("container");
        return null;
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        this.isAnimating = false;
        View view = this.container;
        View view2 = null;
        if (view == null) {
            kotlin.jvm.internal.t.B("container");
            view = null;
        }
        view.setVisibility(0);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom);
        View view3 = this.container;
        if (view3 == null) {
            kotlin.jvm.internal.t.B("container");
        } else {
            view2 = view3;
        }
        view2.startAnimation(animationLoadAnimation);
    }
}
