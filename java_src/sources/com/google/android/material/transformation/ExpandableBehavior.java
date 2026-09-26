package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {
    private static final int STATE_COLLAPSED = 2;
    private static final int STATE_EXPANDED = 1;
    private static final int STATE_UNINITIALIZED = 0;
    private int currentState;

    class a implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ View val$child;
        final /* synthetic */ m3.a val$dep;
        final /* synthetic */ int val$expectedState;

        a(View view, int i10, m3.a aVar) {
            this.val$child = view;
            this.val$expectedState = i10;
            this.val$dep = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.val$child.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.currentState == this.val$expectedState) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                m3.a aVar = this.val$dep;
                expandableBehavior.d((View) aVar, this.val$child, aVar.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.currentState = 0;
    }

    private boolean b(boolean z6) {
        if (!z6) {
            return this.currentState == 1;
        }
        int i10 = this.currentState;
        return i10 == 0 || i10 == 2;
    }

    protected abstract boolean d(View view, View view2, boolean z6, boolean z10);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentState = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        m3.a aVar = (m3.a) view2;
        if (!b(aVar.a())) {
            return false;
        }
        this.currentState = aVar.a() ? 1 : 2;
        return d((View) aVar, view, aVar.a(), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    protected m3.a c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = dependencies.get(i10);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (m3.a) view2;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
        m3.a aVarC;
        int i11;
        if (!ViewCompat.X(view) && (aVarC = c(coordinatorLayout, view)) != null && b(aVarC.a())) {
            if (aVarC.a()) {
                i11 = 1;
            } else {
                i11 = 2;
            }
            this.currentState = i11;
            view.getViewTreeObserver().addOnPreDrawListener(new a(view, i11, aVarC));
            return false;
        }
        return false;
    }
}
