package com.narvii.checkin;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.narvii.amino.mastes.R;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import java.util.List;

/* loaded from: classes2.dex */
public class CheckInStreakRepairLayout extends RelativeLayout {
    private AnimatorSet animatorSet;
    CheckInStreakBar checkInStreakBar;
    View checked;
    View light;
    private ObjectAnimator tranYAnimator;

    public CheckInStreakRepairLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.checkInStreakBar = (CheckInStreakBar) findViewById(R.id.check_in_streak_bar);
        this.light = findViewById(R.id.light);
        this.checked = findViewById(R.id.checked);
        int childMaxSize = this.checkInStreakBar.getChildMaxSize();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.checked.getLayoutParams();
        layoutParams.width = childMaxSize;
        layoutParams.height = childMaxSize;
        this.checked.setLayoutParams(layoutParams);
        ImageView imageView = (ImageView) this.checked.findViewById(R.id.icon);
        if (imageView != null) {
            imageView.setImageResource(R.drawable.ic_check_in_streak_checked);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View lastNeedFixView = this.checkInStreakBar.getLastNeedFixView();
        if (lastNeedFixView != null) {
            int left = lastNeedFixView.getLeft() + (lastNeedFixView.getWidth() / 2);
            View view = this.light;
            view.layout(left - (view.getWidth() / 2), this.light.getTop(), (this.light.getWidth() / 2) + left, this.light.getBottom());
            View view2 = this.checked;
            view2.layout(left - (view2.getWidth() / 2), this.checked.getTop(), left + (this.checked.getWidth() / 2), this.checked.getBottom());
        }
    }

    public void startFixAnimation(final Callback callback) {
        if (this.checkInStreakBar.getLastNeedFixView() == null) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.animatorSet.end();
        }
        ObjectAnimator objectAnimator = this.tranYAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int top = this.checkInStreakBar.getTop() - this.checked.getTop();
        View view = this.checked;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, view.getTranslationY(), top - this.checked.getTranslationY());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.light, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
        this.animatorSet = new AnimatorSet();
        this.animatorSet.setInterpolator(new AccelerateInterpolator());
        this.animatorSet.setDuration(400L);
        this.animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.checkin.CheckInStreakRepairLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                CheckInStreakRepairLayout.this.animatorSet = null;
                CheckInStreakRepairLayout.this.light.setAlpha(1.0f);
                CheckInStreakRepairLayout.this.checked.setTranslationY(0.0f);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
            }
        });
        this.animatorSet.start();
    }

    public void updateCells(List list) {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.animatorSet.end();
        }
        this.checkInStreakBar.updateCells(list);
        View lastNeedFixView = this.checkInStreakBar.getLastNeedFixView();
        ViewUtils.visible(this.light, lastNeedFixView != null);
        ViewUtils.visible(this.checked, lastNeedFixView != null);
        if (lastNeedFixView != null) {
            if (this.tranYAnimator == null) {
                this.tranYAnimator = ObjectAnimator.ofFloat(this.checked, (Property<View, Float>) View.TRANSLATION_Y, -Utils.dpToPxInt(getContext(), 2.0f), Utils.dpToPxInt(getContext(), 2.0f));
                this.tranYAnimator.setDuration(800L);
                this.tranYAnimator.setRepeatCount(-1);
                this.tranYAnimator.setRepeatMode(2);
            }
            this.tranYAnimator.start();
            return;
        }
        ObjectAnimator objectAnimator = this.tranYAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ObjectAnimator objectAnimator = this.tranYAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        super.onDetachedFromWindow();
    }
}
