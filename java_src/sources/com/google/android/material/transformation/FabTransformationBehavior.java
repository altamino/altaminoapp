package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import d3.f;
import e3.h;
import e3.i;
import e3.j;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    private float dependencyOriginalTranslationX;
    private float dependencyOriginalTranslationY;
    private final int[] tmpArray;
    private final Rect tmpRect;
    private final RectF tmpRectF1;
    private final RectF tmpRectF2;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ View val$child;
        final /* synthetic */ View val$dependency;
        final /* synthetic */ boolean val$expanded;

        a(boolean z6, View view, View view2) {
            this.val$expanded = z6;
            this.val$child = view;
            this.val$dependency = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.val$expanded) {
                return;
            }
            this.val$child.setVisibility(4);
            this.val$dependency.setAlpha(1.0f);
            this.val$dependency.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.val$expanded) {
                this.val$child.setVisibility(0);
                this.val$dependency.setAlpha(0.0f);
                this.val$dependency.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ View val$child;

        b(View view) {
            this.val$child = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.val$child.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {
        final /* synthetic */ com.google.android.material.circularreveal.d val$circularRevealChild;
        final /* synthetic */ Drawable val$icon;

        c(com.google.android.material.circularreveal.d dVar, Drawable drawable) {
            this.val$circularRevealChild = dVar;
            this.val$icon = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.val$circularRevealChild.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.val$circularRevealChild.setCircularRevealOverlayDrawable(this.val$icon);
        }
    }

    class d extends AnimatorListenerAdapter {
        final /* synthetic */ com.google.android.material.circularreveal.d val$circularRevealChild;

        d(com.google.android.material.circularreveal.d dVar) {
            this.val$circularRevealChild = dVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            com.google.android.material.circularreveal.d.e revealInfo = this.val$circularRevealChild.getRevealInfo();
            revealInfo.radius = Float.MAX_VALUE;
            this.val$circularRevealChild.setRevealInfo(revealInfo);
        }
    }

    public FabTransformationBehavior() {
        this.tmpRect = new Rect();
        this.tmpRectF1 = new RectF();
        this.tmpRectF2 = new RectF();
        this.tmpArray = new int[2];
    }

    @NonNull
    private Pair<i, i> j(float f, float f6, boolean z6, @NonNull e eVar) {
        i iVarH;
        i iVarH2;
        if (f == 0.0f || f6 == 0.0f) {
            iVarH = eVar.timings.h("translationXLinear");
            iVarH2 = eVar.timings.h("translationYLinear");
        } else if ((!z6 || f6 >= 0.0f) && (z6 || f6 <= 0.0f)) {
            iVarH = eVar.timings.h("translationXCurveDownwards");
            iVarH2 = eVar.timings.h("translationYCurveDownwards");
        } else {
            iVarH = eVar.timings.h("translationXCurveUpwards");
            iVarH2 = eVar.timings.h("translationYCurveUpwards");
        }
        return new Pair<>(iVarH, iVarH2);
    }

    private void w(View view, long j6, long j10, long j11, int i10, int i11, float f, @NonNull List<Animator> list) {
        long j12 = j6 + j10;
        if (j12 < j11) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f, f);
            animatorCreateCircularReveal.setStartDelay(j12);
            animatorCreateCircularReveal.setDuration(j11 - j12);
            list.add(animatorCreateCircularReveal);
        }
    }

    protected abstract e A(Context context, boolean z6);

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    protected AnimatorSet f(@NonNull View view, @NonNull View view2, boolean z6, boolean z10) {
        e eVarA = A(view2.getContext(), z6);
        if (z6) {
            this.dependencyOriginalTranslationX = view.getTranslationX();
            this.dependencyOriginalTranslationY = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        t(view, view2, z6, z10, eVarA, arrayList, arrayList2);
        RectF rectF = this.tmpRectF1;
        y(view, view2, z6, z10, eVarA, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        s(view, view2, z6, eVarA, arrayList);
        v(view, view2, z6, z10, eVarA, arrayList, arrayList2);
        u(view, view2, z6, z10, eVarA, fWidth, fHeight, arrayList, arrayList2);
        r(view, view2, z6, z10, eVarA, arrayList, arrayList2);
        q(view, view2, z6, z10, eVarA, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        e3.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z6, view2, view));
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            animatorSet.addListener(arrayList2.get(i10));
        }
        return animatorSet;
    }

    protected static class e {
        public j positioning;

        @Nullable
        public h timings;

        protected e() {
        }
    }

    @Nullable
    private ViewGroup B(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Nullable
    private ViewGroup g(@NonNull View view) {
        View viewFindViewById = view.findViewById(f.mtrl_child_content_container);
        if (viewFindViewById != null) {
            return B(viewFindViewById);
        }
        return ((view instanceof com.google.android.material.transformation.b) || (view instanceof com.google.android.material.transformation.a)) ? B(((ViewGroup) view).getChildAt(0)) : B(view);
    }

    private float k(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        RectF rectF = this.tmpRectF1;
        RectF rectF2 = this.tmpRectF2;
        i(view, rectF);
        p(view2, rectF2);
        rectF2.offset(-m(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float l(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        RectF rectF = this.tmpRectF1;
        RectF rectF2 = this.tmpRectF2;
        i(view, rectF);
        p(view2, rectF2);
        rectF2.offset(0.0f, -n(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private float m(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        float fCenterX;
        float fCenterX2;
        float f;
        RectF rectF = this.tmpRectF1;
        RectF rectF2 = this.tmpRectF2;
        i(view, rectF);
        p(view2, rectF2);
        int i10 = jVar.gravity & 7;
        if (i10 == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else {
            if (i10 != 3) {
                if (i10 != 5) {
                    f = 0.0f;
                } else {
                    fCenterX = rectF2.right;
                    fCenterX2 = rectF.right;
                }
                return f + jVar.xAdjustment;
            }
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        }
        f = fCenterX - fCenterX2;
        return f + jVar.xAdjustment;
    }

    private float n(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        float fCenterY;
        float fCenterY2;
        float f;
        RectF rectF = this.tmpRectF1;
        RectF rectF2 = this.tmpRectF2;
        i(view, rectF);
        p(view2, rectF2);
        int i10 = jVar.gravity & 112;
        if (i10 == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else {
            if (i10 != 48) {
                if (i10 != 80) {
                    f = 0.0f;
                } else {
                    fCenterY = rectF2.bottom;
                    fCenterY2 = rectF.bottom;
                }
                return f + jVar.yAdjustment;
            }
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        }
        f = fCenterY - fCenterY2;
        return f + jVar.yAdjustment;
    }

    private void q(View view, View view2, boolean z6, boolean z10, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupG;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.d) && com.google.android.material.circularreveal.c.STRATEGY == 0) || (viewGroupG = g(view2)) == null) {
                return;
            }
            if (z6) {
                if (!z10) {
                    e3.d.CHILDREN_ALPHA.set(viewGroupG, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupG, e3.d.CHILDREN_ALPHA, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupG, e3.d.CHILDREN_ALPHA, 0.0f);
            }
            eVar.timings.h("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void r(@NonNull View view, View view2, boolean z6, boolean z10, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof com.google.android.material.circularreveal.d) {
            com.google.android.material.circularreveal.d dVar = (com.google.android.material.circularreveal.d) view2;
            int iZ = z(view);
            int i10 = 16777215 & iZ;
            if (z6) {
                if (!z10) {
                    dVar.setCircularRevealScrimColor(iZ);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, com.google.android.material.circularreveal.d.C0200d.CIRCULAR_REVEAL_SCRIM_COLOR, i10);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, com.google.android.material.circularreveal.d.C0200d.CIRCULAR_REVEAL_SCRIM_COLOR, iZ);
            }
            objectAnimatorOfInt.setEvaluator(e3.c.b());
            eVar.timings.h("color").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void s(@NonNull View view, @NonNull View view2, boolean z6, @NonNull e eVar, @NonNull List<Animator> list) {
        float fM = m(view, view2, eVar.positioning);
        float fN = n(view, view2, eVar.positioning);
        Pair<i, i> pairJ = j(fM, fN, z6, eVar);
        i iVar = (i) pairJ.first;
        i iVar2 = (i) pairJ.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z6) {
            fM = this.dependencyOriginalTranslationX;
        }
        fArr[0] = fM;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z6) {
            fN = this.dependencyOriginalTranslationY;
        }
        fArr2[0] = fN;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void u(@NonNull View view, View view2, boolean z6, boolean z10, @NonNull e eVar, float f, float f6, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animatorA;
        if (view2 instanceof com.google.android.material.circularreveal.d) {
            com.google.android.material.circularreveal.d dVar = (com.google.android.material.circularreveal.d) view2;
            float fK = k(view, view2, eVar.positioning);
            float fL = l(view, view2, eVar.positioning);
            ((FloatingActionButton) view).i(this.tmpRect);
            float fWidth = this.tmpRect.width() / 2.0f;
            i iVarH = eVar.timings.h("expansion");
            if (z6) {
                if (!z10) {
                    dVar.setRevealInfo(new com.google.android.material.circularreveal.d.e(fK, fL, fWidth));
                }
                if (z10) {
                    fWidth = dVar.getRevealInfo().radius;
                }
                animatorA = com.google.android.material.circularreveal.a.a(dVar, fK, fL, n3.a.b(fK, fL, 0.0f, 0.0f, f, f6));
                animatorA.addListener(new d(dVar));
                x(view2, iVarH.c(), (int) fK, (int) fL, fWidth, list);
            } else {
                float f7 = dVar.getRevealInfo().radius;
                Animator animatorA2 = com.google.android.material.circularreveal.a.a(dVar, fK, fL, fWidth);
                int i10 = (int) fK;
                int i11 = (int) fL;
                x(view2, iVarH.c(), i10, i11, f7, list);
                w(view2, iVarH.c(), iVarH.d(), eVar.timings.i(), i10, i11, fWidth, list);
                animatorA = animatorA2;
            }
            iVarH.a(animatorA);
            list.add(animatorA);
            list2.add(com.google.android.material.circularreveal.a.b(dVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(View view, View view2, boolean z6, boolean z10, @NonNull e eVar, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof com.google.android.material.circularreveal.d) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.d dVar = (com.google.android.material.circularreveal.d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z6) {
                if (!z10) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, e3.e.DRAWABLE_ALPHA_COMPAT, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, e3.e.DRAWABLE_ALPHA_COMPAT, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(view2));
            eVar.timings.h("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(dVar, drawable));
        }
    }

    private void x(View view, long j6, int i10, int i11, float f, @NonNull List<Animator> list) {
        if (j6 > 0) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f, f);
            animatorCreateCircularReveal.setStartDelay(0L);
            animatorCreateCircularReveal.setDuration(j6);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void y(@NonNull View view, @NonNull View view2, boolean z6, boolean z10, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fM = m(view, view2, eVar.positioning);
        float fN = n(view, view2, eVar.positioning);
        Pair<i, i> pairJ = j(fM, fN, z6, eVar);
        i iVar = (i) pairJ.first;
        i iVar2 = (i) pairJ.second;
        if (z6) {
            if (!z10) {
                view2.setTranslationX(-fM);
                view2.setTranslationY(-fN);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            h(view2, eVar, iVar, iVar2, -fM, -fN, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fM);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fN);
        }
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    private void h(@NonNull View view, @NonNull e eVar, @NonNull i iVar, @NonNull i iVar2, float f, float f6, float f7, float f10, @NonNull RectF rectF) {
        float fO = o(eVar, iVar, f, f7);
        float fO2 = o(eVar, iVar2, f6, f10);
        Rect rect = this.tmpRect;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.tmpRectF1;
        rectF2.set(rect);
        RectF rectF3 = this.tmpRectF2;
        p(view, rectF3);
        rectF3.offset(fO, fO2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void i(@NonNull View view, @NonNull RectF rectF) {
        p(view, rectF);
        rectF.offset(this.dependencyOriginalTranslationX, this.dependencyOriginalTranslationY);
    }

    private float o(@NonNull e eVar, @NonNull i iVar, float f, float f6) {
        long jC = iVar.c();
        long jD = iVar.d();
        i iVarH = eVar.timings.h("expansion");
        return e3.a.a(f, f6, iVar.e().getInterpolation((((iVarH.c() + iVarH.d()) + 17) - jC) / jD));
    }

    private void p(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.tmpArray;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    @TargetApi(21)
    private void t(View view, @NonNull View view2, boolean z6, boolean z10, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float fY = ViewCompat.y(view2) - ViewCompat.y(view);
        if (z6) {
            if (!z10) {
                view2.setTranslationZ(-fY);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -fY);
        }
        eVar.timings.h("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    private int z(@NonNull View view) {
        ColorStateList colorStateListU = ViewCompat.u(view);
        if (colorStateListU != null) {
            return colorStateListU.getColorForState(view.getDrawableState(), colorStateListU.getDefaultColor());
        }
        return 0;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        if (view.getVisibility() != 8) {
            if (!(view2 instanceof FloatingActionButton)) {
                return false;
            }
            int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
            if (expandedComponentIdHint != 0 && expandedComponentIdHint != view.getId()) {
                return false;
            }
            return true;
        }
        throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tmpRect = new Rect();
        this.tmpRectF1 = new RectF();
        this.tmpRectF2 = new RectF();
        this.tmpArray = new int[2];
    }
}
