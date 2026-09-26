package com.google.android.material.textfield;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.r;

/* JADX INFO: loaded from: classes8.dex */
class e extends com.google.android.material.textfield.f {
    private static final int ANIMATION_FADE_IN_DURATION = 67;
    private static final int ANIMATION_FADE_OUT_DURATION = 50;
    private static final boolean IS_LOLLIPOP = true;
    private final TextInputLayout.e accessibilityDelegate;

    @Nullable
    private AccessibilityManager accessibilityManager;
    private final TextInputLayout.f dropdownMenuOnEditTextAttachedListener;
    private long dropdownPopupActivatedAt;
    private boolean dropdownPopupDirty;

    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.g endIconChangedListener;
    private final TextWatcher exposedDropdownEndIconTextWatcher;
    private ValueAnimator fadeInAnim;
    private ValueAnimator fadeOutAnim;
    private StateListDrawable filledPopupBackground;
    private boolean isEndIconChecked;
    private final View.OnAttachStateChangeListener onAttachStateChangeListener;
    private final View.OnFocusChangeListener onFocusChangeListener;
    private com.google.android.material.shape.g outlinedPopupBackground;
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener;

    class a extends r {

        /* JADX INFO: renamed from: com.google.android.material.textfield.e$a$a, reason: collision with other inner class name */
        class RunnableC0212a implements Runnable {
            final /* synthetic */ AutoCompleteTextView val$editText;

            RunnableC0212a(AutoCompleteTextView autoCompleteTextView) {
                this.val$editText = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.val$editText.isPopupShowing();
                e.this.J(zIsPopupShowing);
                e.this.dropdownPopupDirty = zIsPopupShowing;
            }
        }

        a() {
        }

        @Override // com.google.android.material.internal.r, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewC = e.C(e.this.textInputLayout.getEditText());
            if (e.this.accessibilityManager.isTouchExplorationEnabled() && e.H(autoCompleteTextViewC) && !e.this.endIconView.hasFocus()) {
                autoCompleteTextViewC.dismissDropDown();
            }
            autoCompleteTextViewC.post(new RunnableC0212a(autoCompleteTextViewC));
        }
    }

    class b implements AutoCompleteTextView.OnDismissListener {
        b() {
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            e.this.N();
            e.this.J(false);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e eVar = e.this;
            eVar.endIconView.setChecked(eVar.isEndIconChecked);
            e.this.fadeInAnim.start();
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            e.this.endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.e$e, reason: collision with other inner class name */
    class ViewOnFocusChangeListenerC0213e implements View.OnFocusChangeListener {
        ViewOnFocusChangeListenerC0213e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z6) {
            e.this.textInputLayout.setEndIconActivated(z6);
            if (z6) {
                return;
            }
            e.this.J(false);
            e.this.dropdownPopupDirty = false;
        }
    }

    class f extends TextInputLayout.e {
        f(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!e.H(e.this.textInputLayout.getEditText())) {
                accessibilityNodeInfoCompat.e0(Spinner.class.getName());
            }
            if (accessibilityNodeInfoCompat.O()) {
                accessibilityNodeInfoCompat.r0(null);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewC = e.C(e.this.textInputLayout.getEditText());
            if (accessibilityEvent.getEventType() == 1 && e.this.accessibilityManager.isEnabled() && !e.H(e.this.textInputLayout.getEditText())) {
                e.this.M(autoCompleteTextViewC);
                e.this.N();
            }
        }
    }

    class g implements TextInputLayout.f {
        g() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            AutoCompleteTextView autoCompleteTextViewC = e.C(textInputLayout.getEditText());
            e.this.K(autoCompleteTextViewC);
            e.this.y(autoCompleteTextViewC);
            e.this.L(autoCompleteTextViewC);
            autoCompleteTextViewC.setThreshold(0);
            autoCompleteTextViewC.removeTextChangedListener(e.this.exposedDropdownEndIconTextWatcher);
            autoCompleteTextViewC.addTextChangedListener(e.this.exposedDropdownEndIconTextWatcher);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!e.H(autoCompleteTextViewC) && e.this.accessibilityManager.isTouchExplorationEnabled()) {
                ViewCompat.F0(e.this.endIconView, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(e.this.accessibilityDelegate);
            textInputLayout.setEndIconVisible(true);
        }
    }

    class h implements TextInputLayout.g {

        class a implements Runnable {
            final /* synthetic */ AutoCompleteTextView val$editText;

            a(AutoCompleteTextView autoCompleteTextView) {
                this.val$editText = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$editText.removeTextChangedListener(e.this.exposedDropdownEndIconTextWatcher);
            }
        }

        h() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(@NonNull TextInputLayout textInputLayout, int i10) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView != null && i10 == 3) {
                autoCompleteTextView.post(new a(autoCompleteTextView));
                if (autoCompleteTextView.getOnFocusChangeListener() == e.this.onFocusChangeListener) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (e.IS_LOLLIPOP) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
            if (i10 == 3) {
                textInputLayout.removeOnAttachStateChangeListener(e.this.onAttachStateChangeListener);
                e.this.I();
            }
        }
    }

    class i implements View.OnAttachStateChangeListener {
        i() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            e.this.B();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            e.this.I();
        }
    }

    class j implements AccessibilityManagerCompat.TouchExplorationStateChangeListener {
        j() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z6) {
            AutoCompleteTextView autoCompleteTextView;
            TextInputLayout textInputLayout = e.this.textInputLayout;
            if (textInputLayout == null || (autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText()) == null || e.H(autoCompleteTextView)) {
                return;
            }
            ViewCompat.F0(e.this.endIconView, z6 ? 2 : 1);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.M((AutoCompleteTextView) e.this.textInputLayout.getEditText());
        }
    }

    class l implements View.OnTouchListener {
        final /* synthetic */ AutoCompleteTextView val$editText;

        l(AutoCompleteTextView autoCompleteTextView) {
            this.val$editText = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (e.this.G()) {
                    e.this.dropdownPopupDirty = false;
                }
                e.this.M(this.val$editText);
                e.this.N();
            }
            return false;
        }
    }

    private void F() {
        this.fadeInAnim = D(67, 0.0f, 1.0f);
        ValueAnimator valueAnimatorD = D(50, 1.0f, 0.0f);
        this.fadeOutAnim = valueAnimatorD;
        valueAnimatorD.addListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        this.dropdownPopupDirty = true;
        this.dropdownPopupActivatedAt = System.currentTimeMillis();
    }

    @Override // com.google.android.material.textfield.f
    boolean b(int i10) {
        return i10 != 0;
    }

    @Override // com.google.android.material.textfield.f
    boolean d() {
        return true;
    }

    private void A(@NonNull AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, @NonNull com.google.android.material.shape.g gVar) {
        LayerDrawable layerDrawable;
        int iD = i3.a.d(autoCompleteTextView, d3.b.colorSurface);
        com.google.android.material.shape.g gVar2 = new com.google.android.material.shape.g(gVar.E());
        int iH = i3.a.h(i10, iD, 0.1f);
        gVar2.Z(new ColorStateList(iArr, new int[]{iH, 0}));
        if (IS_LOLLIPOP) {
            gVar2.setTint(iD);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iH, iD});
            com.google.android.material.shape.g gVar3 = new com.google.android.material.shape.g(gVar.E());
            gVar3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, gVar2, gVar3), gVar});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{gVar2, gVar});
        }
        ViewCompat.y0(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        TextInputLayout textInputLayout;
        if (this.accessibilityManager == null || (textInputLayout = this.textInputLayout) == null || !ViewCompat.W(textInputLayout)) {
            return;
        }
        AccessibilityManagerCompat.a(this.accessibilityManager, this.touchExplorationStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static AutoCompleteTextView C(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null) {
            AccessibilityManagerCompat.b(accessibilityManager, this.touchExplorationStateChangeListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(boolean z6) {
        if (this.isEndIconChecked != z6) {
            this.isEndIconChecked = z6;
            this.fadeInAnim.cancel();
            this.fadeOutAnim.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (IS_LOLLIPOP) {
            int boxBackgroundMode = this.textInputLayout.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.outlinedPopupBackground);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.filledPopupBackground);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void L(@NonNull AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new l(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.onFocusChangeListener);
        if (IS_LOLLIPOP) {
            autoCompleteTextView.setOnDismissListener(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(@Nullable AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (G()) {
            this.dropdownPopupDirty = false;
        }
        if (this.dropdownPopupDirty) {
            this.dropdownPopupDirty = false;
            return;
        }
        if (IS_LOLLIPOP) {
            J(!this.isEndIconChecked);
        } else {
            this.isEndIconChecked = !this.isEndIconChecked;
            this.endIconView.toggle();
        }
        if (!this.isEndIconChecked) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    private void z(@NonNull AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, @NonNull com.google.android.material.shape.g gVar) {
        int boxBackgroundColor = this.textInputLayout.getBoxBackgroundColor();
        int[] iArr2 = {i3.a.h(i10, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (IS_LOLLIPOP) {
            ViewCompat.y0(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), gVar, gVar));
            return;
        }
        com.google.android.material.shape.g gVar2 = new com.google.android.material.shape.g(gVar.E());
        gVar2.Z(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gVar, gVar2});
        int I = ViewCompat.I(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int iH = ViewCompat.H(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        ViewCompat.y0(autoCompleteTextView, layerDrawable);
        ViewCompat.M0(autoCompleteTextView, I, paddingTop, iH, paddingBottom);
    }

    @Override // com.google.android.material.textfield.f
    void a() {
        float dimensionPixelOffset = this.context.getResources().getDimensionPixelOffset(d3.d.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.context.getResources().getDimensionPixelOffset(d3.d.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.context.getResources().getDimensionPixelOffset(d3.d.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        com.google.android.material.shape.g gVarE = E(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        com.google.android.material.shape.g gVarE2 = E(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.outlinedPopupBackground = gVarE;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.filledPopupBackground = stateListDrawable;
        stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, gVarE);
        this.filledPopupBackground.addState(new int[0], gVarE2);
        int i10 = this.customEndIcon;
        if (i10 == 0) {
            i10 = IS_LOLLIPOP ? d3.e.mtrl_dropdown_arrow : d3.e.mtrl_ic_arrow_drop_down;
        }
        this.textInputLayout.setEndIconDrawable(i10);
        TextInputLayout textInputLayout = this.textInputLayout;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(d3.j.exposed_dropdown_menu_content_description));
        this.textInputLayout.setEndIconOnClickListener(new k());
        this.textInputLayout.g(this.dropdownMenuOnEditTextAttachedListener);
        this.textInputLayout.h(this.endIconChangedListener);
        F();
        this.accessibilityManager = (AccessibilityManager) this.context.getSystemService("accessibility");
        this.textInputLayout.addOnAttachStateChangeListener(this.onAttachStateChangeListener);
        B();
    }

    e(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
        this.exposedDropdownEndIconTextWatcher = new a();
        this.onFocusChangeListener = new ViewOnFocusChangeListenerC0213e();
        this.accessibilityDelegate = new f(this.textInputLayout);
        this.dropdownMenuOnEditTextAttachedListener = new g();
        this.endIconChangedListener = new h();
        this.onAttachStateChangeListener = new i();
        this.touchExplorationStateChangeListener = new j();
        this.dropdownPopupDirty = false;
        this.isEndIconChecked = false;
        this.dropdownPopupActivatedAt = Long.MAX_VALUE;
    }

    private ValueAnimator D(int i10, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(e3.a.LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.setDuration(i10);
        valueAnimatorOfFloat.addUpdateListener(new d());
        return valueAnimatorOfFloat;
    }

    private com.google.android.material.shape.g E(float f6, float f7, float f10, int i10) {
        com.google.android.material.shape.k kVarM = com.google.android.material.shape.k.a().B(f6).F(f6).s(f7).w(f7).m();
        com.google.android.material.shape.g gVarM = com.google.android.material.shape.g.m(this.context, f10);
        gVarM.setShapeAppearanceModel(kVarM);
        gVarM.b0(0, i10, 0, i10);
        return gVarM;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.dropdownPopupActivatedAt;
        if (jCurrentTimeMillis >= 0 && jCurrentTimeMillis <= 300) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean H(@NonNull EditText editText) {
        if (editText.getKeyListener() != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (H(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.textInputLayout.getBoxBackgroundMode();
        com.google.android.material.shape.g boxBackground = this.textInputLayout.getBoxBackground();
        int iD = i3.a.d(autoCompleteTextView, d3.b.colorControlHighlight);
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            A(autoCompleteTextView, iD, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            z(autoCompleteTextView, iD, iArr, boxBackground);
        }
    }

    void O(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (!H(autoCompleteTextView) && this.textInputLayout.getBoxBackgroundMode() == 2 && (autoCompleteTextView.getBackground() instanceof LayerDrawable)) {
            y(autoCompleteTextView);
        }
    }
}
