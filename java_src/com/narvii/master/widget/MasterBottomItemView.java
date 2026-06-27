package com.narvii.master.widget;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.ScaleBounceHelper;
import com.narvii.util.kotlin.NVExtensionKt;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MasterBottomItemView.kt */
/* loaded from: classes3.dex */
public final class MasterBottomItemView extends LinearLayout {
    public static final int TEXT_COLOR_SELECTED = -1;
    public static final int TEXT_COLOR_UNSELECTED = -6710887;
    private HashMap _$_findViewCache;
    private final Lazy badge$delegate;
    private final Lazy icon$delegate;
    private final Lazy iconSelected$delegate;
    private final Lazy tvTitle$delegate;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomItemView.class), "iconSelected", "getIconSelected()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomItemView.class), "icon", "getIcon()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomItemView.class), "badge", "getBadge()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MasterBottomItemView.class), "tvTitle", "getTvTitle()Landroid/widget/TextView;"))};
    public static final Companion Companion = new Companion(null);
    private static final float[] scaleArray = {0.8f, 1.1f, 0.95f, 1.03f, 1.0f};
    private static final int[] timeArray = {0, 100, 185, 250, 280};

    /* JADX WARN: Multi-variable type inference failed */
    public MasterBottomItemView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final ImageView getBadge() {
        Lazy lazy = this.badge$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ImageView) lazy.getValue();
    }

    public final ImageView getIcon() {
        Lazy lazy = this.icon$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ImageView) lazy.getValue();
    }

    public final ImageView getIconSelected() {
        Lazy lazy = this.iconSelected$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ImageView) lazy.getValue();
    }

    public final TextView getTvTitle() {
        Lazy lazy = this.tvTitle$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MasterBottomItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.iconSelected$delegate = NVExtensionKt.bind(this, R.id.tab_icon_selected);
        this.icon$delegate = NVExtensionKt.bind(this, R.id.tab_icon);
        this.badge$delegate = NVExtensionKt.bind(this, R.id.badge);
        this.tvTitle$delegate = NVExtensionKt.bind(this, R.id.tab_title);
    }

    public /* synthetic */ MasterBottomItemView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* compiled from: MasterBottomItemView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float[] getScaleArray() {
            return MasterBottomItemView.scaleArray;
        }

        public final int[] getTimeArray() {
            return MasterBottomItemView.timeArray;
        }
    }

    public final void configTabItem(Triple<Integer, Integer, Integer> conf) {
        Intrinsics.checkParameterIsNotNull(conf, "conf");
        configTabItem(conf.getFirst().intValue(), conf.getSecond().intValue(), conf.getThird().intValue());
    }

    public final void configTabItem(int i, int i2, int i3) {
        getIcon().setImageDrawable(ContextCompat.getDrawable(getContext(), i));
        getIconSelected().setImageDrawable(ContextCompat.getDrawable(getContext(), i2));
        getTvTitle().setText(getContext().getString(i3));
    }

    public final void animationItemSelected() throws Resources.NotFoundException {
        cancelTabIconAnimation(getIconSelected());
        getIconSelected().setVisibility(0);
        ScaleBounceHelper scaleBounceHelper = new ScaleBounceHelper(getContext(), getIconSelected(), scaleArray, timeArray);
        scaleBounceHelper.playSeq();
        getIconSelected().setTag(R.id.scale_bounce, scaleBounceHelper);
        iconFadeOut(getIcon());
        getTvTitle().setTypeface(Typeface.DEFAULT, 1);
        animateTextColor(getTvTitle(), TEXT_COLOR_UNSELECTED, -1);
    }

    public final void animationItemUnSelected() throws Resources.NotFoundException {
        cancelTabIconAnimation(getIcon());
        getIcon().setVisibility(0);
        iconFadeIn(getIcon());
        iconFadeOut(getIconSelected());
        getTvTitle().setTypeface(Typeface.DEFAULT, 0);
        animateTextColor(getTvTitle(), -1, TEXT_COLOR_UNSELECTED);
    }

    public final void setItemSelected() {
        getIconSelected().setVisibility(0);
        getIcon().setVisibility(8);
        getTvTitle().setTypeface(Typeface.DEFAULT, 1);
        getTvTitle().setTextColor(-1);
    }

    private final void cancelTabIconAnimation(View view) {
        if (view == null) {
            return;
        }
        Object tag = view.getTag(R.id.vp_animator);
        if (!(tag instanceof ViewPropertyAnimator)) {
            tag = null;
        }
        ViewPropertyAnimator viewPropertyAnimator = (ViewPropertyAnimator) tag;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        view.setTag(R.id.vp_animator, null);
        Object tag2 = view.getTag(R.id.animator);
        if (!(tag2 instanceof Animator)) {
            tag2 = null;
        }
        Animator animator = (Animator) tag2;
        if (animator != null && animator.isStarted()) {
            animator.end();
        }
        view.setTag(R.id.animator, null);
        Object tag3 = view.getTag(R.id.scale_bounce);
        if (!(tag3 instanceof ScaleBounceHelper)) {
            tag3 = null;
        }
        ScaleBounceHelper scaleBounceHelper = (ScaleBounceHelper) tag3;
        if (scaleBounceHelper != null) {
            scaleBounceHelper.cancel();
        }
        view.setTag(R.id.scale_bounce, null);
        view.clearAnimation();
    }

    private final void iconFadeIn(View view) throws Resources.NotFoundException {
        iconFadeIn(view, 100);
    }

    private final void iconFadeIn(View view, int i) throws Resources.NotFoundException {
        Animator animator = AnimatorInflater.loadAnimator(getContext(), R.animator.mater_tab_icon_anim_in);
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(i);
        animator.setTarget(view);
        view.setTag(R.id.animator, animator);
        animator.start();
    }

    private final void iconFadeOut(View view) throws Resources.NotFoundException {
        iconFadeOut(view, 100);
    }

    private final void iconFadeOut(final View view, int i) throws Resources.NotFoundException {
        cancelTabIconAnimation(view);
        final Animator animator = AnimatorInflater.loadAnimator(getContext(), R.animator.mater_tab_icon_anim_out);
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.widget.MasterBottomItemView.iconFadeOut.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
                super.onAnimationEnd(animation);
                animator.removeListener(this);
                view.setAlpha(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setVisibility(8);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(i);
        animator.setTarget(view);
        view.setTag(R.id.animator, animator);
        animator.start();
    }

    public final void animateTextColor(final TextView tv2, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(tv2, "tv");
        ValueAnimator colorAnimator = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i), Integer.valueOf(i2));
        Intrinsics.checkExpressionValueIsNotNull(colorAnimator, "colorAnimator");
        colorAnimator.setDuration(250L);
        colorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.widget.MasterBottomItemView.animateTextColor.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator animation) {
                TextView textView = tv2;
                Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                Object animatedValue = animation.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
                textView.setTextColor(((Integer) animatedValue).intValue());
            }
        });
        colorAnimator.start();
    }
}
