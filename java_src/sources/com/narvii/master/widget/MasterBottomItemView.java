package com.narvii.master.widget;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.util.ScaleBounceHelper;
import com.narvii.util.kotlin.NVExtensionKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.z;

/* JADX INFO: loaded from: classes7.dex */
public final class MasterBottomItemView extends LinearLayout {
    public static final int TEXT_COLOR_DISABLED = -13421773;
    public static final int TEXT_COLOR_SELECTED = -1;
    public static final int TEXT_COLOR_UNSELECTED = -6710887;

    @NotNull
    private final m badge$delegate;

    @NotNull
    private final m icon$delegate;

    @NotNull
    private final m iconSelected$delegate;

    @NotNull
    private final m tvTitle$delegate;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final float[] scaleArray = {0.8f, 1.1f, 0.95f, 1.03f, 1.0f};

    @NotNull
    private static final int[] timeArray = {0, 100, 185, 250, 280};

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final float[] getScaleArray() {
            return MasterBottomItemView.scaleArray;
        }

        @NotNull
        public final int[] getTimeArray() {
            return MasterBottomItemView.timeArray;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MasterBottomItemView(@NotNull Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        t.j(context, "context");
    }

    private final void iconFadeIn(View view) {
        iconFadeIn(view, 100);
    }

    private final void iconFadeOut(View view) {
        iconFadeOut(view, 100);
    }

    public final void configTabItem(@NotNull z<Integer, Integer, Integer> conf) {
        t.j(conf, "conf");
        configTabItem(conf.d().intValue(), conf.e().intValue(), conf.f().intValue());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MasterBottomItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.iconSelected$delegate = NVExtensionKt.bind(this, R.id.tab_icon_selected);
        this.icon$delegate = NVExtensionKt.bind(this, R.id.tab_icon);
        this.badge$delegate = NVExtensionKt.bind(this, R.id.badge);
        this.tvTitle$delegate = NVExtensionKt.bind(this, R.id.tab_title);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void animateTextColor$lambda$0(TextView tv, ValueAnimator animation) {
        t.j(tv, "$tv");
        t.j(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        tv.setTextColor(((Integer) animatedValue).intValue());
    }

    private final void cancelTabIconAnimation(View view) {
        if (view == null) {
            return;
        }
        Object tag = view.getTag(R.id.vp_animator);
        ViewPropertyAnimator viewPropertyAnimator = tag instanceof ViewPropertyAnimator ? (ViewPropertyAnimator) tag : null;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        view.setTag(R.id.vp_animator, null);
        Object tag2 = view.getTag(R.id.animator);
        Animator animator = tag2 instanceof Animator ? (Animator) tag2 : null;
        if (animator != null && animator.isStarted()) {
            animator.end();
        }
        view.setTag(R.id.animator, null);
        Object tag3 = view.getTag(R.id.scale_bounce);
        ScaleBounceHelper scaleBounceHelper = tag3 instanceof ScaleBounceHelper ? (ScaleBounceHelper) tag3 : null;
        if (scaleBounceHelper != null) {
            scaleBounceHelper.cancel();
        }
        view.setTag(R.id.scale_bounce, null);
        view.clearAnimation();
    }

    private final void iconFadeIn(View view, int i10) {
        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(getContext(), R.animator.mater_tab_icon_anim_in);
        animatorLoadAnimator.setDuration(i10);
        animatorLoadAnimator.setTarget(view);
        view.setTag(R.id.animator, animatorLoadAnimator);
        animatorLoadAnimator.start();
    }

    private final void iconFadeOut(final View view, int i10) {
        cancelTabIconAnimation(view);
        final Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(getContext(), R.animator.mater_tab_icon_anim_out);
        animatorLoadAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.widget.MasterBottomItemView.iconFadeOut.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                t.j(animation, "animation");
                super.onAnimationEnd(animation);
                animatorLoadAnimator.removeListener(this);
                view.setAlpha(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setVisibility(8);
            }
        });
        animatorLoadAnimator.setDuration(i10);
        animatorLoadAnimator.setTarget(view);
        view.setTag(R.id.animator, animatorLoadAnimator);
        animatorLoadAnimator.start();
    }

    public final void animateTextColor(@NotNull final TextView tv, int i10, int i11) {
        t.j(tv, "tv");
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i10), Integer.valueOf(i11));
        valueAnimatorOfObject.setDuration(250L);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.widget.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MasterBottomItemView.animateTextColor$lambda$0(tv, valueAnimator);
            }
        });
        valueAnimatorOfObject.start();
    }

    public final void configTabItem(@DrawableRes int i10, @DrawableRes int i11, @StringRes int i12) {
        getIcon().setImageDrawable(ContextCompat.getDrawable(getContext(), i10));
        getIconSelected().setImageDrawable(ContextCompat.getDrawable(getContext(), i11));
        getTvTitle().setText(getContext().getString(i12));
    }

    @NotNull
    public final ImageView getBadge() {
        return (ImageView) this.badge$delegate.getValue();
    }

    @NotNull
    public final ImageView getIcon() {
        return (ImageView) this.icon$delegate.getValue();
    }

    @NotNull
    public final ImageView getIconSelected() {
        return (ImageView) this.iconSelected$delegate.getValue();
    }

    @NotNull
    public final TextView getTvTitle() {
        return (TextView) this.tvTitle$delegate.getValue();
    }

    public final void animationItemSelected() {
        cancelTabIconAnimation(getIconSelected());
        getIconSelected().setVisibility(0);
        ScaleBounceHelper scaleBounceHelper = new ScaleBounceHelper(getContext(), getIconSelected(), scaleArray, timeArray);
        scaleBounceHelper.playSeq();
        getIconSelected().setTag(R.id.scale_bounce, scaleBounceHelper);
        iconFadeOut(getIcon());
        getTvTitle().setTypeface(Typeface.DEFAULT, 1);
        animateTextColor(getTvTitle(), TEXT_COLOR_UNSELECTED, -1);
    }

    public final void animationItemUnSelected() {
        cancelTabIconAnimation(getIcon());
        getIcon().setVisibility(0);
        iconFadeIn(getIcon());
        iconFadeOut(getIconSelected());
        getTvTitle().setTypeface(Typeface.DEFAULT, 0);
        animateTextColor(getTvTitle(), -1, TEXT_COLOR_UNSELECTED);
    }

    public final void setEnabled(boolean z6, @DrawableRes int i10) {
        int i11;
        setEnabled(z6);
        getIcon().setImageDrawable(ContextCompat.getDrawable(getContext(), i10));
        TextView tvTitle = getTvTitle();
        if (z6) {
            i11 = TEXT_COLOR_UNSELECTED;
        } else {
            i11 = TEXT_COLOR_DISABLED;
        }
        tvTitle.setTextColor(i11);
    }

    public final void setItemSelected() {
        getIconSelected().setVisibility(0);
        getIcon().setVisibility(8);
        getTvTitle().setTypeface(Typeface.DEFAULT, 1);
        getTvTitle().setTextColor(-1);
    }

    public /* synthetic */ MasterBottomItemView(Context context, AttributeSet attributeSet, int i10, k kVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
