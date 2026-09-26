package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.s;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    private static final int ANIM_STATE_HIDING = 1;
    private static final int ANIM_STATE_NONE = 0;
    private static final int ANIM_STATE_SHOWING = 2;
    private int animState;
    private boolean animateShowBeforeLayout;

    @NonNull
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> behavior;
    private final com.google.android.material.floatingactionbutton.a changeVisibilityTracker;
    private final int collapsedSize;

    @NonNull
    private final com.google.android.material.floatingactionbutton.f extendStrategy;
    private int extendedPaddingEnd;
    private int extendedPaddingStart;
    private final com.google.android.material.floatingactionbutton.f hideStrategy;
    private boolean isExtended;
    private boolean isTransforming;

    @NonNull
    protected ColorStateList originalTextCsl;
    private final com.google.android.material.floatingactionbutton.f showStrategy;

    @NonNull
    private final com.google.android.material.floatingactionbutton.f shrinkStrategy;
    private static final int DEF_STYLE_RES = d3.k.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    static final Property<View, Float> WIDTH = new d(Float.class, "width");
    static final Property<View, Float> HEIGHT = new e(Float.class, "height");
    static final Property<View, Float> PADDING_START = new f(Float.class, "paddingStart");
    static final Property<View, Float> PADDING_END = new g(Float.class, "paddingEnd");

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {
        private static final boolean AUTO_HIDE_DEFAULT = false;
        private static final boolean AUTO_SHRINK_DEFAULT = true;
        private boolean autoHideEnabled;
        private boolean autoShrinkEnabled;

        @Nullable
        private j internalAutoHideCallback;

        @Nullable
        private j internalAutoShrinkCallback;
        private Rect tmpRect;

        public ExtendedFloatingActionButtonBehavior() {
            this.autoHideEnabled = false;
            this.autoShrinkEnabled = true;
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d3.l.ExtendedFloatingActionButton_Behavior_Layout);
            this.autoHideEnabled = typedArrayObtainStyledAttributes.getBoolean(d3.l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.autoShrinkEnabled = typedArrayObtainStyledAttributes.getBoolean(d3.l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        protected void a(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z6 = this.autoShrinkEnabled;
            extendedFloatingActionButton.y(z6 ? extendedFloatingActionButton.extendStrategy : extendedFloatingActionButton.showStrategy, z6 ? this.internalAutoShrinkCallback : this.internalAutoHideCallback);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                h(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!c(view)) {
                return false;
            }
            i(view, extendedFloatingActionButton);
            return false;
        }

        protected void g(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z6 = this.autoShrinkEnabled;
            extendedFloatingActionButton.y(z6 ? extendedFloatingActionButton.shrinkStrategy : extendedFloatingActionButton.hideStrategy, z6 ? this.internalAutoShrinkCallback : this.internalAutoHideCallback);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        private static boolean c(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean f(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            if ((!this.autoHideEnabled && !this.autoShrinkEnabled) || layoutParams.e() != view.getId()) {
                return false;
            }
            return true;
        }

        private boolean h(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!f(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.tmpRect == null) {
                this.tmpRect = new Rect();
            }
            Rect rect = this.tmpRect;
            com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                g(extendedFloatingActionButton);
                return true;
            }
            a(extendedFloatingActionButton);
            return true;
        }

        private boolean i(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!f(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                g(extendedFloatingActionButton);
                return true;
            }
            a(extendedFloatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i10) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = dependencies.get(i11);
                if (view instanceof AppBarLayout) {
                    if (h(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (c(view) && i(view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i10);
            return true;
        }
    }

    class a implements l {
        a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int a() {
            return ExtendedFloatingActionButton.this.extendedPaddingEnd;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int b() {
            return ExtendedFloatingActionButton.this.extendedPaddingStart;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.extendedPaddingStart + ExtendedFloatingActionButton.this.extendedPaddingEnd;
        }
    }

    class b implements l {
        b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int a() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int b() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.l
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    class c extends AnimatorListenerAdapter {
        private boolean cancelled;
        final /* synthetic */ j val$callback;
        final /* synthetic */ com.google.android.material.floatingactionbutton.f val$strategy;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.cancelled = true;
            this.val$strategy.h();
        }

        c(com.google.android.material.floatingactionbutton.f fVar, j jVar) {
            this.val$strategy = fVar;
            this.val$callback = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.val$strategy.i();
            if (this.cancelled) {
                return;
            }
            this.val$strategy.e(this.val$callback);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.val$strategy.onAnimationStart(animator);
            this.cancelled = false;
        }
    }

    class h extends com.google.android.material.floatingactionbutton.b {
        private final boolean extending;
        private final l size;

        @Override // com.google.android.material.floatingactionbutton.f
        public int c() {
            return this.extending ? d3.a.mtrl_extended_fab_change_size_expand_motion_spec : d3.a.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        h(com.google.android.material.floatingactionbutton.a aVar, l lVar, boolean z6) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.size = lVar;
            this.extending = z6;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean b() {
            return this.extending == ExtendedFloatingActionButton.this.isExtended || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void e(@Nullable j jVar) {
            if (jVar == null) {
                return;
            }
            if (this.extending) {
                jVar.a(ExtendedFloatingActionButton.this);
            } else {
                jVar.d(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g() {
            ExtendedFloatingActionButton.this.isExtended = this.extending;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.size.getLayoutParams().width;
            layoutParams.height = this.size.getLayoutParams().height;
            ViewCompat.M0(ExtendedFloatingActionButton.this, this.size.b(), ExtendedFloatingActionButton.this.getPaddingTop(), this.size.a(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        @NonNull
        public AnimatorSet d() {
            float f;
            e3.h hVarM = m();
            if (hVarM.j("width")) {
                PropertyValuesHolder[] propertyValuesHolderArrG = hVarM.g("width");
                propertyValuesHolderArrG[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.size.getWidth());
                hVarM.l("width", propertyValuesHolderArrG);
            }
            if (hVarM.j("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrG2 = hVarM.g("height");
                propertyValuesHolderArrG2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.size.getHeight());
                hVarM.l("height", propertyValuesHolderArrG2);
            }
            if (hVarM.j("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrG3 = hVarM.g("paddingStart");
                propertyValuesHolderArrG3[0].setFloatValues(ViewCompat.I(ExtendedFloatingActionButton.this), this.size.b());
                hVarM.l("paddingStart", propertyValuesHolderArrG3);
            }
            if (hVarM.j("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrG4 = hVarM.g("paddingEnd");
                propertyValuesHolderArrG4[0].setFloatValues(ViewCompat.H(ExtendedFloatingActionButton.this), this.size.a());
                hVarM.l("paddingEnd", propertyValuesHolderArrG4);
            }
            if (hVarM.j("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrG5 = hVarM.g("labelOpacity");
                boolean z6 = this.extending;
                float f6 = 1.0f;
                if (z6) {
                    f = 0.0f;
                } else {
                    f = 1.0f;
                }
                if (!z6) {
                    f6 = 0.0f;
                }
                propertyValuesHolderArrG5[0].setFloatValues(f, f6);
                hVarM.l("labelOpacity", propertyValuesHolderArrG5);
            }
            return super.l(hVarM);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void i() {
            super.i();
            ExtendedFloatingActionButton.this.isTransforming = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.size.getLayoutParams().width;
            layoutParams.height = this.size.getLayoutParams().height;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.isExtended = this.extending;
            ExtendedFloatingActionButton.this.isTransforming = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    class i extends com.google.android.material.floatingactionbutton.b {
        private boolean isCancelled;

        @Override // com.google.android.material.floatingactionbutton.f
        public int c() {
            return d3.a.mtrl_extended_fab_hide_motion_spec;
        }

        public i(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean b() {
            return ExtendedFloatingActionButton.this.w();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void e(@Nullable j jVar) {
            if (jVar != null) {
                jVar.b(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void h() {
            super.h();
            this.isCancelled = true;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void i() {
            super.i();
            ExtendedFloatingActionButton.this.animState = 0;
            if (!this.isCancelled) {
                ExtendedFloatingActionButton.this.setVisibility(8);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.isCancelled = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.animState = 1;
        }
    }

    public static abstract class j {
        public void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    class k extends com.google.android.material.floatingactionbutton.b {
        @Override // com.google.android.material.floatingactionbutton.f
        public int c() {
            return d3.a.mtrl_extended_fab_show_motion_spec;
        }

        public k(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean b() {
            return ExtendedFloatingActionButton.this.x();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void e(@Nullable j jVar) {
            if (jVar != null) {
                jVar.c(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void g() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void i() {
            super.i();
            ExtendedFloatingActionButton.this.animState = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.animState = 2;
        }
    }

    interface l {
        int a();

        int b();

        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getWidth();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.behavior;
    }

    public void setAnimateShowBeforeLayout(boolean z6) {
        this.animateShowBeforeLayout = z6;
    }

    @Override // android.widget.TextView
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        z();
    }

    class d extends Property<View, Float> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }
    }

    class e extends Property<View, Float> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }
    }

    class f extends Property<View, Float> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.I(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.M0(view, f.intValue(), view.getPaddingTop(), ViewCompat.H(view), view.getPaddingBottom());
        }
    }

    class g extends Property<View, Float> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.H(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.M0(view, ViewCompat.I(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.extendedFloatingActionButtonStyle);
    }

    @VisibleForTesting
    int getCollapsedSize() {
        int i10 = this.collapsedSize;
        return i10 < 0 ? (Math.min(ViewCompat.I(this), ViewCompat.H(this)) * 2) + getIconSize() : i10;
    }

    @Nullable
    public e3.h getExtendMotionSpec() {
        return this.extendStrategy.a();
    }

    @Nullable
    public e3.h getHideMotionSpec() {
        return this.hideStrategy.a();
    }

    @Nullable
    public e3.h getShowMotionSpec() {
        return this.showStrategy.a();
    }

    @Nullable
    public e3.h getShrinkMotionSpec() {
        return this.shrinkStrategy.a();
    }

    public void setExtendMotionSpec(@Nullable e3.h hVar) {
        this.extendStrategy.f(hVar);
    }

    public void setExtended(boolean z6) {
        if (this.isExtended == z6) {
            return;
        }
        com.google.android.material.floatingactionbutton.f fVar = z6 ? this.extendStrategy : this.shrinkStrategy;
        if (fVar.b()) {
            return;
        }
        fVar.g();
    }

    public void setHideMotionSpec(@Nullable e3.h hVar) {
        this.hideStrategy.f(hVar);
    }

    public void setShowMotionSpec(@Nullable e3.h hVar) {
        this.showStrategy.f(hVar);
    }

    public void setShrinkMotionSpec(@Nullable e3.h hVar) {
        this.shrinkStrategy.f(hVar);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.animState = 0;
        com.google.android.material.floatingactionbutton.a aVar = new com.google.android.material.floatingactionbutton.a();
        this.changeVisibilityTracker = aVar;
        k kVar = new k(aVar);
        this.showStrategy = kVar;
        i iVar = new i(aVar);
        this.hideStrategy = iVar;
        this.isExtended = true;
        this.isTransforming = false;
        this.animateShowBeforeLayout = false;
        Context context2 = getContext();
        this.behavior = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayH = s.h(context2, attributeSet, d3.l.ExtendedFloatingActionButton, i10, i11, new int[0]);
        e3.h hVarC = e3.h.c(context2, typedArrayH, d3.l.ExtendedFloatingActionButton_showMotionSpec);
        e3.h hVarC2 = e3.h.c(context2, typedArrayH, d3.l.ExtendedFloatingActionButton_hideMotionSpec);
        e3.h hVarC3 = e3.h.c(context2, typedArrayH, d3.l.ExtendedFloatingActionButton_extendMotionSpec);
        e3.h hVarC4 = e3.h.c(context2, typedArrayH, d3.l.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.collapsedSize = typedArrayH.getDimensionPixelSize(d3.l.ExtendedFloatingActionButton_collapsedSize, -1);
        this.extendedPaddingStart = ViewCompat.I(this);
        this.extendedPaddingEnd = ViewCompat.H(this);
        com.google.android.material.floatingactionbutton.a aVar2 = new com.google.android.material.floatingactionbutton.a();
        h hVar = new h(aVar2, new a(), true);
        this.extendStrategy = hVar;
        h hVar2 = new h(aVar2, new b(), false);
        this.shrinkStrategy = hVar2;
        kVar.f(hVarC);
        iVar.f(hVarC2);
        hVar.f(hVarC3);
        hVar2.f(hVarC4);
        typedArrayH.recycle();
        setShapeAppearanceModel(com.google.android.material.shape.k.g(context2, attributeSet, i10, i11, com.google.android.material.shape.k.PILL).m());
        z();
    }

    private boolean A() {
        if ((ViewCompat.X(this) || (!x() && this.animateShowBeforeLayout)) && !isInEditMode()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        if (getVisibility() == 0) {
            if (this.animState != 1) {
                return false;
            }
            return true;
        }
        if (this.animState == 2) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean x() {
        if (getVisibility() != 0) {
            if (this.animState != 2) {
                return false;
            }
            return true;
        }
        if (this.animState == 1) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(@NonNull com.google.android.material.floatingactionbutton.f fVar, @Nullable j jVar) {
        if (fVar.b()) {
            return;
        }
        if (!A()) {
            fVar.g();
            fVar.e(jVar);
            return;
        }
        measure(0, 0);
        AnimatorSet animatorSetD = fVar.d();
        animatorSetD.addListener(new c(fVar, jVar));
        Iterator<Animator.AnimatorListener> it = fVar.j().iterator();
        while (it.hasNext()) {
            animatorSetD.addListener(it.next());
        }
        animatorSetD.start();
    }

    private void z() {
        this.originalTextCsl = getTextColors();
    }

    protected void B(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.isExtended && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.isExtended = false;
            this.shrinkStrategy.g();
        }
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i10) {
        setExtendMotionSpec(e3.h.d(getContext(), i10));
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        setHideMotionSpec(e3.h.d(getContext(), i10));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10, i11, i12, i13);
        if (this.isExtended && !this.isTransforming) {
            this.extendedPaddingStart = ViewCompat.I(this);
            this.extendedPaddingEnd = ViewCompat.H(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
        if (this.isExtended && !this.isTransforming) {
            this.extendedPaddingStart = i10;
            this.extendedPaddingEnd = i12;
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        setShowMotionSpec(e3.h.d(getContext(), i10));
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i10) {
        setShrinkMotionSpec(e3.h.d(getContext(), i10));
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        z();
    }
}
