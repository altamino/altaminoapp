package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes10.dex */
public class FlipLayout extends FrameLayout {
    AnimatorSet animIn;
    AnimatorSet animOut;
    View backView;
    FlipListener flipListener;
    View frontView;
    boolean isShowBack;

    public interface FlipListener {
        void onFlipEnd(FlipLayout flipLayout, boolean z6);
    }

    public void setFlipListener(FlipListener flipListener) {
        this.flipListener = flipListener;
    }

    private void setCameraDistance() {
        if (this.backView == null || this.frontView == null) {
            return;
        }
        float f = getResources().getDisplayMetrics().density * 16000;
        this.backView.setCameraDistance(f);
        this.frontView.setCameraDistance(f);
    }

    public void flip() {
        View view;
        View view2 = this.backView;
        if (view2 == null || (view = this.frontView) == null) {
            return;
        }
        if (this.isShowBack) {
            this.animOut.setTarget(view2);
            this.animIn.setTarget(this.frontView);
            this.animOut.start();
            this.animIn.start();
            this.isShowBack = false;
            return;
        }
        this.animOut.setTarget(view);
        this.animIn.setTarget(this.backView);
        this.animOut.start();
        this.animIn.start();
        this.isShowBack = true;
    }

    public FlipLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animOut = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.flip_anim_out);
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.filp_anim_in);
        this.animIn = animatorSet;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.widget.FlipLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FlipLayout.this.setClickable(true);
                FlipLayout flipLayout = FlipLayout.this;
                FlipListener flipListener = flipLayout.flipListener;
                if (flipListener != null) {
                    try {
                        flipListener.onFlipEnd(flipLayout, flipLayout.isShowBack);
                    } catch (Exception e) {
                        Log.e("flip", e);
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                FlipLayout.this.setClickable(false);
            }
        });
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.backView = findViewById(R.id.flip_back);
        this.frontView = findViewById(R.id.flip_front);
        setCameraDistance();
    }
}
