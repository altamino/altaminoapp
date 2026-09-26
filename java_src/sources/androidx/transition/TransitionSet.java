package androidx.transition;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionSet extends Transition {
    private static final int FLAG_CHANGE_EPICENTER = 8;
    private static final int FLAG_CHANGE_INTERPOLATOR = 1;
    private static final int FLAG_CHANGE_PATH_MOTION = 4;
    private static final int FLAG_CHANGE_PROPAGATION = 2;
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    private int mChangeFlags;
    int mCurrentListeners;
    private boolean mPlayTogether;
    boolean mStarted;
    private ArrayList<Transition> mTransitions;

    static class TransitionSetListener extends TransitionListenerAdapter {
        TransitionSet mTransitionSet;

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void b(@NonNull Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            if (transitionSet.mStarted) {
                return;
            }
            transitionSet.f0();
            this.mTransitionSet.mStarted = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void d(@NonNull Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            int i10 = transitionSet.mCurrentListeners - 1;
            transitionSet.mCurrentListeners = i10;
            if (i10 == 0) {
                transitionSet.mStarted = false;
                transitionSet.q();
            }
            transition.T(this);
        }

        TransitionSetListener(TransitionSet transitionSet) {
            this.mTransitionSet = transitionSet;
        }
    }

    public TransitionSet() {
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public TransitionSet c(@NonNull View view) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).c(view);
        }
        return (TransitionSet) super.c(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public TransitionSet U(@NonNull View view) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).U(view);
        }
        return (TransitionSet) super.U(view);
    }

    @Override // androidx.transition.Transition
    @RestrictTo
    protected void p(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long jA = A();
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            Transition transition = this.mTransitions.get(i10);
            if (jA > 0 && (this.mPlayTogether || i10 == 0)) {
                long jA2 = transition.A();
                if (jA2 > 0) {
                    transition.e0(jA2 + jA);
                } else {
                    transition.e0(jA);
                }
            }
            transition.p(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    @NonNull
    public TransitionSet r0(int i10) {
        if (i10 == 0) {
            this.mPlayTogether = true;
        } else {
            if (i10 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i10);
            }
            this.mPlayTogether = false;
        }
        return this;
    }

    private void k0(@NonNull Transition transition) {
        this.mTransitions.add(transition);
        transition.mParent = this;
    }

    private void t0() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            it.next().b(transitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    @Override // androidx.transition.Transition
    @RestrictTo
    protected void X() {
        if (this.mTransitions.isEmpty()) {
            f0();
            q();
            return;
        }
        t0();
        if (this.mPlayTogether) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                it.next().X();
            }
            return;
        }
        for (int i10 = 1; i10 < this.mTransitions.size(); i10++) {
            Transition transition = this.mTransitions.get(i10 - 1);
            final Transition transition2 = this.mTransitions.get(i10);
            transition.b(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.1
                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void d(@NonNull Transition transition3) {
                    transition2.X();
                    transition3.T(this);
                }
            });
        }
        Transition transition3 = this.mTransitions.get(0);
        if (transition3 != null) {
            transition3.X();
        }
    }

    @Override // androidx.transition.Transition
    public void h(@NonNull TransitionValues transitionValues) {
        if (J(transitionValues.view)) {
            for (Transition transition : this.mTransitions) {
                if (transition.J(transitionValues.view)) {
                    transition.h(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void k(@NonNull TransitionValues transitionValues) {
        if (J(transitionValues.view)) {
            for (Transition transition : this.mTransitions) {
                if (transition.J(transitionValues.view)) {
                    transition.k(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition);
                }
            }
        }
    }

    @Nullable
    public Transition l0(int i10) {
        if (i10 < 0 || i10 >= this.mTransitions.size()) {
            return null;
        }
        return this.mTransitions.get(i10);
    }

    public int m0() {
        return this.mTransitions.size();
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public TransitionSet a0(@Nullable TimeInterpolator timeInterpolator) {
        this.mChangeFlags |= 1;
        ArrayList<Transition> arrayList = this.mTransitions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mTransitions.get(i10).a0(timeInterpolator);
            }
        }
        return (TransitionSet) super.a0(timeInterpolator);
    }

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_SET);
        r0(TypedArrayUtils.k(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.Transition
    @RestrictTo
    public void R(View view) {
        super.R(view);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).R(view);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo
    public void V(View view) {
        super.V(view);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).V(view);
        }
    }

    @Override // androidx.transition.Transition
    public void Z(Transition.EpicenterCallback epicenterCallback) {
        super.Z(epicenterCallback);
        this.mChangeFlags |= 8;
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).Z(epicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    public void c0(PathMotion pathMotion) {
        super.c0(pathMotion);
        this.mChangeFlags |= 4;
        if (this.mTransitions != null) {
            for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
                this.mTransitions.get(i10).c0(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo
    protected void cancel() {
        super.cancel();
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).cancel();
        }
    }

    @Override // androidx.transition.Transition
    public void d0(TransitionPropagation transitionPropagation) {
        super.d0(transitionPropagation);
        this.mChangeFlags |= 2;
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).d0(transitionPropagation);
        }
    }

    @Override // androidx.transition.Transition
    String g0(String str) {
        String strG0 = super.g0(str);
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            StringBuilder sb = new StringBuilder();
            sb.append(strG0);
            sb.append("\n");
            sb.append(this.mTransitions.get(i10).g0(str + "  "));
            strG0 = sb.toString();
        }
        return strG0;
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public TransitionSet b(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.b(transitionListener);
    }

    @Override // androidx.transition.Transition
    void j(TransitionValues transitionValues) {
        super.j(transitionValues);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).j(transitionValues);
        }
    }

    @NonNull
    public TransitionSet j0(@NonNull Transition transition) {
        k0(transition);
        long j6 = this.mDuration;
        if (j6 >= 0) {
            transition.Y(j6);
        }
        if ((this.mChangeFlags & 1) != 0) {
            transition.a0(u());
        }
        if ((this.mChangeFlags & 2) != 0) {
            transition.d0(y());
        }
        if ((this.mChangeFlags & 4) != 0) {
            transition.c0(x());
        }
        if ((this.mChangeFlags & 8) != 0) {
            transition.Z(t());
        }
        return this;
    }

    @Override // androidx.transition.Transition
    /* JADX INFO: renamed from: n */
    public Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.mTransitions = new ArrayList<>();
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            transitionSet.k0(this.mTransitions.get(i10).clone());
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public TransitionSet T(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.T(transitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public TransitionSet Y(long j6) {
        ArrayList<Transition> arrayList;
        super.Y(j6);
        if (this.mDuration >= 0 && (arrayList = this.mTransitions) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mTransitions.get(i10).Y(j6);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public TransitionSet e0(long j6) {
        return (TransitionSet) super.e0(j6);
    }
}
