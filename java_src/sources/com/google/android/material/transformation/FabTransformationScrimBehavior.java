package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import e3.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {
    public static final long COLLAPSE_DELAY = 0;
    public static final long COLLAPSE_DURATION = 150;
    public static final long EXPAND_DELAY = 75;
    public static final long EXPAND_DURATION = 150;
    private final i collapseTiming;
    private final i expandTiming;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ View val$child;
        final /* synthetic */ boolean val$expanded;

        a(boolean z6, View view) {
            this.val$expanded = z6;
            this.val$child = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.val$expanded) {
                return;
            }
            this.val$child.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.val$expanded) {
                this.val$child.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.expandTiming = new i(75L, 150L);
        this.collapseTiming = new i(0L, 150L);
    }

    private void g(@NonNull View view, boolean z6, boolean z10, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        i iVar = z6 ? this.expandTiming : this.collapseTiming;
        if (z6) {
            if (!z10) {
                view.setAlpha(0.0f);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f);
        }
        iVar.a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    protected AnimatorSet f(@NonNull View view, @NonNull View view2, boolean z6, boolean z10) {
        ArrayList arrayList = new ArrayList();
        g(view2, z6, z10, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        e3.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z6, view2));
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(coordinatorLayout, view, motionEvent);
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.expandTiming = new i(75L, 150L);
        this.collapseTiming = new i(0L, 150L);
    }
}
