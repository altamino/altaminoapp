package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.s;
import com.google.android.material.internal.u;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class TextInputLayout extends LinearLayout {
    public static final int BOX_BACKGROUND_FILLED = 1;
    public static final int BOX_BACKGROUND_NONE = 0;
    public static final int BOX_BACKGROUND_OUTLINE = 2;
    private static final int DEF_STYLE_RES = d3.k.Widget_Design_TextInputLayout;
    public static final int END_ICON_CLEAR_TEXT = 2;
    public static final int END_ICON_CUSTOM = -1;
    public static final int END_ICON_DROPDOWN_MENU = 3;
    public static final int END_ICON_NONE = 0;
    public static final int END_ICON_PASSWORD_TOGGLE = 1;
    private static final int INVALID_MAX_LENGTH = -1;
    private static final int LABEL_SCALE_ANIMATION_DURATION = 167;
    private static final String LOG_TAG = "TextInputLayout";
    private static final int NO_WIDTH = -1;
    private static final long PLACEHOLDER_FADE_DURATION = 87;
    private static final long PLACEHOLDER_START_DELAY = 67;
    private ValueAnimator animator;
    private boolean areCornerRadiiRtl;

    @Nullable
    private com.google.android.material.shape.g boxBackground;

    @ColorInt
    private int boxBackgroundColor;
    private int boxBackgroundMode;
    private int boxCollapsedPaddingTopPx;
    private final int boxLabelCutoutPaddingPx;

    @ColorInt
    private int boxStrokeColor;
    private int boxStrokeWidthDefaultPx;
    private int boxStrokeWidthFocusedPx;
    private int boxStrokeWidthPx;

    @Nullable
    private com.google.android.material.shape.g boxUnderlineDefault;

    @Nullable
    private com.google.android.material.shape.g boxUnderlineFocused;
    final com.google.android.material.internal.b collapsingTextHelper;
    boolean counterEnabled;
    private int counterMaxLength;
    private int counterOverflowTextAppearance;

    @Nullable
    private ColorStateList counterOverflowTextColor;
    private boolean counterOverflowed;
    private int counterTextAppearance;

    @Nullable
    private ColorStateList counterTextColor;

    @Nullable
    private TextView counterView;

    @ColorInt
    private int defaultFilledBackgroundColor;
    private ColorStateList defaultHintTextColor;

    @ColorInt
    private int defaultStrokeColor;

    @ColorInt
    private int disabledColor;

    @ColorInt
    private int disabledFilledBackgroundColor;
    EditText editText;
    private final LinkedHashSet<f> editTextAttachedListeners;

    @Nullable
    private Drawable endDummyDrawable;
    private int endDummyDrawableWidth;
    private final LinkedHashSet<g> endIconChangedListeners;
    private final SparseArray<com.google.android.material.textfield.f> endIconDelegates;

    @NonNull
    private final FrameLayout endIconFrame;
    private int endIconMode;
    private View.OnLongClickListener endIconOnLongClickListener;
    private ColorStateList endIconTintList;
    private PorterDuff.Mode endIconTintMode;

    @NonNull
    private final CheckableImageButton endIconView;

    @NonNull
    private final LinearLayout endLayout;
    private View.OnLongClickListener errorIconOnLongClickListener;
    private ColorStateList errorIconTintList;
    private PorterDuff.Mode errorIconTintMode;

    @NonNull
    private final CheckableImageButton errorIconView;
    private boolean expandedHintEnabled;

    @ColorInt
    private int focusedFilledBackgroundColor;

    @ColorInt
    private int focusedStrokeColor;
    private ColorStateList focusedTextColor;
    private CharSequence hint;
    private boolean hintAnimationEnabled;
    private boolean hintEnabled;
    private boolean hintExpanded;

    @ColorInt
    private int hoveredFilledBackgroundColor;

    @ColorInt
    private int hoveredStrokeColor;
    private boolean inDrawableStateChanged;
    private final h indicatorViewController;

    @NonNull
    private final FrameLayout inputFrame;
    private boolean isProvidingHint;
    private int maxEms;
    private int maxWidth;
    private int minEms;
    private int minWidth;
    private Drawable originalEditTextEndDrawable;
    private CharSequence originalHint;
    private boolean placeholderEnabled;

    @Nullable
    private Fade placeholderFadeIn;

    @Nullable
    private Fade placeholderFadeOut;
    private CharSequence placeholderText;
    private int placeholderTextAppearance;

    @Nullable
    private ColorStateList placeholderTextColor;
    private TextView placeholderTextView;
    private boolean restoringSavedState;

    @NonNull
    private com.google.android.material.shape.k shapeAppearanceModel;

    @Nullable
    private Drawable startDummyDrawable;
    private int startDummyDrawableWidth;

    @NonNull
    private final l startLayout;
    private ColorStateList strokeErrorColor;

    @Nullable
    private CharSequence suffixText;

    @NonNull
    private final TextView suffixTextView;
    private final Rect tmpBoundsRect;
    private final Rect tmpRect;
    private final RectF tmpRectF;
    private Typeface typeface;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        CharSequence error;

        @Nullable
        CharSequence helperText;

        @Nullable
        CharSequence hintText;
        boolean isEndIconChecked;

        @Nullable
        CharSequence placeholderText;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            a() {
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.error = (CharSequence) creator.createFromParcel(parcel);
            this.isEndIconChecked = parcel.readInt() == 1;
            this.hintText = (CharSequence) creator.createFromParcel(parcel);
            this.helperText = (CharSequence) creator.createFromParcel(parcel);
            this.placeholderText = (CharSequence) creator.createFromParcel(parcel);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + " hint=" + ((Object) this.hintText) + " helperText=" + ((Object) this.helperText) + " placeholderText=" + ((Object) this.placeholderText) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            TextUtils.writeToParcel(this.error, parcel, i10);
            parcel.writeInt(this.isEndIconChecked ? 1 : 0);
            TextUtils.writeToParcel(this.hintText, parcel, i10);
            TextUtils.writeToParcel(this.helperText, parcel, i10);
            TextUtils.writeToParcel(this.placeholderText, parcel, i10);
        }
    }

    class a implements TextWatcher {
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.w0(!textInputLayout.restoringSavedState);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.counterEnabled) {
                textInputLayout2.m0(editable.length());
            }
            if (TextInputLayout.this.placeholderEnabled) {
                TextInputLayout.this.A0(editable.length());
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.endIconView.performClick();
            TextInputLayout.this.endIconView.jumpDrawablesToCurrentState();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.editText.requestLayout();
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TextInputLayout.this.collapsingTextHelper.u0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public interface f {
        void a(@NonNull TextInputLayout textInputLayout);
    }

    public interface g {
        void a(@NonNull TextInputLayout textInputLayout, int i10);
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean I() {
        return this.endIconMode != 0;
    }

    private boolean w() {
        return this.boxStrokeWidthPx > -1 && this.boxStrokeColor != 0;
    }

    final boolean N() {
        return this.hintExpanded;
    }

    @RestrictTo
    public boolean O() {
        return this.isProvidingHint;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.restoringSavedState = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.restoringSavedState = false;
    }

    public int getBoxBackgroundColor() {
        return this.boxBackgroundColor;
    }

    public int getBoxBackgroundMode() {
        return this.boxBackgroundMode;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.boxCollapsedPaddingTopPx;
    }

    public int getBoxStrokeColor() {
        return this.focusedStrokeColor;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.strokeErrorColor;
    }

    public int getBoxStrokeWidth() {
        return this.boxStrokeWidthDefaultPx;
    }

    public int getBoxStrokeWidthFocused() {
        return this.boxStrokeWidthFocusedPx;
    }

    public int getCounterMaxLength() {
        return this.counterMaxLength;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.counterTextColor;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.counterTextColor;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.defaultHintTextColor;
    }

    @Nullable
    public EditText getEditText() {
        return this.editText;
    }

    public int getEndIconMode() {
        return this.endIconMode;
    }

    @NonNull
    CheckableImageButton getEndIconView() {
        return this.endIconView;
    }

    @Nullable
    public CharSequence getHint() {
        if (this.hintEnabled) {
            return this.hint;
        }
        return null;
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.focusedTextColor;
    }

    public int getMaxEms() {
        return this.maxEms;
    }

    @Px
    public int getMaxWidth() {
        return this.maxWidth;
    }

    public int getMinEms() {
        return this.minEms;
    }

    @Px
    public int getMinWidth() {
        return this.minWidth;
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.placeholderEnabled) {
            return this.placeholderText;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.placeholderTextAppearance;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.placeholderTextColor;
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.suffixText;
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.suffixTextView;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.typeface;
    }

    public void setBoxCollapsedPaddingTop(int i10) {
        this.boxCollapsedPaddingTopPx = i10;
    }

    public void setEndIconContentDescription(@StringRes int i10) {
        setEndIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setEndIconDrawable(@DrawableRes int i10) {
        setEndIconDrawable(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
    }

    public void setErrorIconDrawable(@DrawableRes int i10) {
        setErrorIconDrawable(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
        V();
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.hintEnabled) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z6) {
        this.hintAnimationEnabled = z6;
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i10) {
        setPasswordVisibilityToggleContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i10) {
        setPasswordVisibilityToggleDrawable(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
    }

    public void setStartIconContentDescription(@StringRes int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i10) {
        setStartIconDrawable(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
    }

    void w0(boolean z6) {
        x0(z6, false);
    }

    public static class e extends AccessibilityDelegateCompat {
        private final TextInputLayout layout;

        public e(@NonNull TextInputLayout textInputLayout) {
            this.layout = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            CharSequence text;
            String string;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.layout.getEditText();
            if (editText != null) {
                text = editText.getText();
            } else {
                text = null;
            }
            CharSequence hint = this.layout.getHint();
            CharSequence error = this.layout.getError();
            CharSequence placeholderText = this.layout.getPlaceholderText();
            int counterMaxLength = this.layout.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.layout.getCounterOverflowDescription();
            boolean zIsEmpty = TextUtils.isEmpty(text);
            boolean z6 = !zIsEmpty;
            boolean z10 = true;
            boolean z11 = !TextUtils.isEmpty(hint);
            boolean z12 = !this.layout.N();
            boolean z13 = !TextUtils.isEmpty(error);
            if (!z13 && TextUtils.isEmpty(counterOverflowDescription)) {
                z10 = false;
            }
            if (z11) {
                string = hint.toString();
            } else {
                string = "";
            }
            this.layout.startLayout.v(accessibilityNodeInfoCompat);
            if (z6) {
                accessibilityNodeInfoCompat.L0(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.L0(string);
                if (z12 && placeholderText != null) {
                    accessibilityNodeInfoCompat.L0(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.L0(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.r0(string);
                } else {
                    if (z6) {
                        string = ((Object) text) + ", " + string;
                    }
                    accessibilityNodeInfoCompat.L0(string);
                }
                accessibilityNodeInfoCompat.H0(zIsEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.v0(counterMaxLength);
            if (z10) {
                if (!z13) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.n0(error);
            }
            View viewS = this.layout.indicatorViewController.s();
            if (viewS != null) {
                accessibilityNodeInfoCompat.s0(viewS);
            }
        }
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.textInputStyle);
    }

    private boolean A() {
        return this.hintEnabled && !TextUtils.isEmpty(this.hint) && (this.boxBackground instanceof com.google.android.material.textfield.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(int i10) {
        if (i10 != 0 || this.hintExpanded) {
            J();
        } else {
            h0();
        }
    }

    private void B() {
        Iterator<f> it = this.editTextAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    private void B0(boolean z6, boolean z10) {
        int defaultColor = this.strokeErrorColor.getDefaultColor();
        int colorForState = this.strokeErrorColor.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.strokeErrorColor.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z6) {
            this.boxStrokeColor = colorForState2;
        } else if (z10) {
            this.boxStrokeColor = colorForState;
        } else {
            this.boxStrokeColor = defaultColor;
        }
    }

    private void C(int i10) {
        Iterator<g> it = this.endIconChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().a(this, i10);
        }
    }

    private void C0() {
        if (this.editText == null) {
            return;
        }
        ViewCompat.M0(this.suffixTextView, getContext().getResources().getDimensionPixelSize(d3.d.material_input_text_to_prefix_suffix_padding), this.editText.getPaddingTop(), (K() || L()) ? 0 : ViewCompat.H(this.editText), this.editText.getPaddingBottom());
    }

    private void D(Canvas canvas) {
        com.google.android.material.shape.g gVar;
        if (this.boxUnderlineFocused == null || (gVar = this.boxUnderlineDefault) == null) {
            return;
        }
        gVar.draw(canvas);
        if (this.editText.isFocused()) {
            Rect bounds = this.boxUnderlineFocused.getBounds();
            Rect bounds2 = this.boxUnderlineDefault.getBounds();
            float fD = this.collapsingTextHelper.D();
            int iCenterX = bounds2.centerX();
            bounds.left = e3.a.c(iCenterX, bounds2.left, fD);
            bounds.right = e3.a.c(iCenterX, bounds2.right, fD);
            this.boxUnderlineFocused.draw(canvas);
        }
    }

    private void D0() {
        int visibility = this.suffixTextView.getVisibility();
        int i10 = (this.suffixText == null || N()) ? 8 : 0;
        if (visibility != i10) {
            getEndIconDelegate().c(i10 == 0);
        }
        t0();
        this.suffixTextView.setVisibility(i10);
        q0();
    }

    private void E(@NonNull Canvas canvas) {
        if (this.hintEnabled) {
            this.collapsingTextHelper.l(canvas);
        }
    }

    private void F(boolean z6) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.animator.cancel();
        }
        if (z6 && this.hintAnimationEnabled) {
            k(0.0f);
        } else {
            this.collapsingTextHelper.u0(0.0f);
        }
        if (A() && ((com.google.android.material.textfield.d) this.boxBackground).p0()) {
            x();
        }
        this.hintExpanded = true;
        J();
        this.startLayout.i(true);
        D0();
    }

    private int G(int i10, boolean z6) {
        int compoundPaddingLeft = i10 + this.editText.getCompoundPaddingLeft();
        return (getPrefixText() == null || z6) ? compoundPaddingLeft : (compoundPaddingLeft - getPrefixTextView().getMeasuredWidth()) + getPrefixTextView().getPaddingLeft();
    }

    private int H(int i10, boolean z6) {
        int compoundPaddingRight = i10 - this.editText.getCompoundPaddingRight();
        return (getPrefixText() == null || !z6) ? compoundPaddingRight : compoundPaddingRight + (getPrefixTextView().getMeasuredWidth() - getPrefixTextView().getPaddingRight());
    }

    private void J() {
        TextView textView = this.placeholderTextView;
        if (textView == null || !this.placeholderEnabled) {
            return;
        }
        textView.setText((CharSequence) null);
        TransitionManager.b(this.inputFrame, this.placeholderFadeOut);
        this.placeholderTextView.setVisibility(4);
    }

    private boolean L() {
        return this.errorIconView.getVisibility() == 0;
    }

    private boolean P() {
        return this.boxBackgroundMode == 1 && this.editText.getMinLines() <= 1;
    }

    private void X() {
        TextView textView = this.placeholderTextView;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private boolean e0() {
        return (this.errorIconView.getVisibility() == 0 || ((I() && K()) || this.suffixText != null)) && this.endLayout.getMeasuredWidth() > 0;
    }

    private boolean g0() {
        EditText editText = this.editText;
        return (editText == null || this.boxBackground == null || editText.getBackground() != null || this.boxBackgroundMode == 0) ? false : true;
    }

    private com.google.android.material.textfield.f getEndIconDelegate() {
        com.google.android.material.textfield.f fVar = this.endIconDelegates.get(this.endIconMode);
        return fVar != null ? fVar : this.endIconDelegates.get(0);
    }

    @Nullable
    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.errorIconView.getVisibility() == 0) {
            return this.errorIconView;
        }
        if (I() && K()) {
            return this.endIconView;
        }
        return null;
    }

    private void h0() {
        if (this.placeholderTextView == null || !this.placeholderEnabled || TextUtils.isEmpty(this.placeholderText)) {
            return;
        }
        this.placeholderTextView.setText(this.placeholderText);
        TransitionManager.b(this.inputFrame, this.placeholderFadeIn);
        this.placeholderTextView.setVisibility(0);
        this.placeholderTextView.bringToFront();
        announceForAccessibility(this.placeholderText);
    }

    private void i() {
        TextView textView = this.placeholderTextView;
        if (textView != null) {
            this.inputFrame.addView(textView);
            this.placeholderTextView.setVisibility(0);
        }
    }

    private void i0(boolean z6) {
        if (!z6 || getEndIconDrawable() == null) {
            com.google.android.material.textfield.g.a(this, this.endIconView, this.endIconTintList, this.endIconTintMode);
            return;
        }
        Drawable drawableMutate = DrawableCompat.r(getEndIconDrawable()).mutate();
        DrawableCompat.n(drawableMutate, this.indicatorViewController.p());
        this.endIconView.setImageDrawable(drawableMutate);
    }

    private void j() {
        if (this.editText == null || this.boxBackgroundMode != 1) {
            return;
        }
        if (com.google.android.material.resources.c.j(getContext())) {
            EditText editText = this.editText;
            ViewCompat.M0(editText, ViewCompat.I(editText), getResources().getDimensionPixelSize(d3.d.material_filled_edittext_font_2_0_padding_top), ViewCompat.H(this.editText), getResources().getDimensionPixelSize(d3.d.material_filled_edittext_font_2_0_padding_bottom));
        } else if (com.google.android.material.resources.c.i(getContext())) {
            EditText editText2 = this.editText;
            ViewCompat.M0(editText2, ViewCompat.I(editText2), getResources().getDimensionPixelSize(d3.d.material_filled_edittext_font_1_3_padding_top), ViewCompat.H(this.editText), getResources().getDimensionPixelSize(d3.d.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    private void j0() {
        if (this.boxBackgroundMode == 1) {
            if (com.google.android.material.resources.c.j(getContext())) {
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(d3.d.material_font_2_0_box_collapsed_padding_top);
            } else if (com.google.android.material.resources.c.i(getContext())) {
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(d3.d.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    private void k0(@NonNull Rect rect) {
        com.google.android.material.shape.g gVar = this.boxUnderlineDefault;
        if (gVar != null) {
            int i10 = rect.bottom;
            gVar.setBounds(rect.left, i10 - this.boxStrokeWidthDefaultPx, rect.right, i10);
        }
        com.google.android.material.shape.g gVar2 = this.boxUnderlineFocused;
        if (gVar2 != null) {
            int i11 = rect.bottom;
            gVar2.setBounds(rect.left, i11 - this.boxStrokeWidthFocusedPx, rect.right, i11);
        }
    }

    private void l() {
        com.google.android.material.shape.g gVar = this.boxBackground;
        if (gVar == null) {
            return;
        }
        com.google.android.material.shape.k kVarE = gVar.E();
        com.google.android.material.shape.k kVar = this.shapeAppearanceModel;
        if (kVarE != kVar) {
            this.boxBackground.setShapeAppearanceModel(kVar);
            p0();
        }
        if (v()) {
            this.boxBackground.i0(this.boxStrokeWidthPx, this.boxStrokeColor);
        }
        int iP = p();
        this.boxBackgroundColor = iP;
        this.boxBackground.Z(ColorStateList.valueOf(iP));
        if (this.endIconMode == 3) {
            this.editText.getBackground().invalidateSelf();
        }
        m();
        invalidate();
    }

    private void l0() {
        if (this.counterView != null) {
            EditText editText = this.editText;
            m0(editText == null ? 0 : editText.getText().length());
        }
    }

    private void m() {
        if (this.boxUnderlineDefault == null || this.boxUnderlineFocused == null) {
            return;
        }
        if (w()) {
            this.boxUnderlineDefault.Z(this.editText.isFocused() ? ColorStateList.valueOf(this.defaultStrokeColor) : ColorStateList.valueOf(this.boxStrokeColor));
            this.boxUnderlineFocused.Z(ColorStateList.valueOf(this.boxStrokeColor));
        }
        invalidate();
    }

    private void n(@NonNull RectF rectF) {
        float f6 = rectF.left;
        int i10 = this.boxLabelCutoutPaddingPx;
        rectF.left = f6 - i10;
        rectF.right += i10;
    }

    private static void n0(@NonNull Context context, @NonNull TextView textView, int i10, int i11, boolean z6) {
        textView.setContentDescription(context.getString(z6 ? d3.j.character_counter_overflowed_content_description : d3.j.character_counter_content_description, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    private void o() {
        int i10 = this.boxBackgroundMode;
        if (i10 == 0) {
            this.boxBackground = null;
            this.boxUnderlineDefault = null;
            this.boxUnderlineFocused = null;
            return;
        }
        if (i10 == 1) {
            this.boxBackground = new com.google.android.material.shape.g(this.shapeAppearanceModel);
            this.boxUnderlineDefault = new com.google.android.material.shape.g();
            this.boxUnderlineFocused = new com.google.android.material.shape.g();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(this.boxBackgroundMode + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.hintEnabled || (this.boxBackground instanceof com.google.android.material.textfield.d)) {
                this.boxBackground = new com.google.android.material.shape.g(this.shapeAppearanceModel);
            } else {
                this.boxBackground = new com.google.android.material.textfield.d(this.shapeAppearanceModel);
            }
            this.boxUnderlineDefault = null;
            this.boxUnderlineFocused = null;
        }
    }

    private void o0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.counterView;
        if (textView != null) {
            d0(textView, this.counterOverflowed ? this.counterOverflowTextAppearance : this.counterTextAppearance);
            if (!this.counterOverflowed && (colorStateList2 = this.counterTextColor) != null) {
                this.counterView.setTextColor(colorStateList2);
            }
            if (!this.counterOverflowed || (colorStateList = this.counterOverflowTextColor) == null) {
                return;
            }
            this.counterView.setTextColor(colorStateList);
        }
    }

    private int p() {
        return this.boxBackgroundMode == 1 ? i3.a.g(i3.a.e(this, d3.b.colorSurface, 0), this.boxBackgroundColor) : this.boxBackgroundColor;
    }

    private void p0() {
        if (this.endIconMode == 3 && this.boxBackgroundMode == 2) {
            ((com.google.android.material.textfield.e) this.endIconDelegates.get(3)).O((AutoCompleteTextView) this.editText);
        }
    }

    @NonNull
    private Rect q(@NonNull Rect rect) {
        if (this.editText == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.tmpBoundsRect;
        boolean zG = u.g(this);
        rect2.bottom = rect.bottom;
        int i10 = this.boxBackgroundMode;
        if (i10 == 1) {
            rect2.left = G(rect.left, zG);
            rect2.top = rect.top + this.boxCollapsedPaddingTopPx;
            rect2.right = H(rect.right, zG);
            return rect2;
        }
        if (i10 != 2) {
            rect2.left = G(rect.left, zG);
            rect2.top = getPaddingTop();
            rect2.right = H(rect.right, zG);
            return rect2;
        }
        rect2.left = rect.left + this.editText.getPaddingLeft();
        rect2.top = rect.top - u();
        rect2.right = rect.right - this.editText.getPaddingRight();
        return rect2;
    }

    private boolean s0() {
        int iMax;
        if (this.editText == null || this.editText.getMeasuredHeight() >= (iMax = Math.max(this.endLayout.getMeasuredHeight(), this.startLayout.getMeasuredHeight()))) {
            return false;
        }
        this.editText.setMinimumHeight(iMax);
        return true;
    }

    private void setEditText(EditText editText) {
        if (this.editText != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.endIconMode != 3 && !(editText instanceof TextInputEditText)) {
            Log.i(LOG_TAG, "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.editText = editText;
        int i10 = this.minEms;
        if (i10 != -1) {
            setMinEms(i10);
        } else {
            setMinWidth(this.minWidth);
        }
        int i11 = this.maxEms;
        if (i11 != -1) {
            setMaxEms(i11);
        } else {
            setMaxWidth(this.maxWidth);
        }
        Q();
        setTextInputAccessibilityDelegate(new e(this));
        this.collapsingTextHelper.H0(this.editText.getTypeface());
        this.collapsingTextHelper.r0(this.editText.getTextSize());
        this.collapsingTextHelper.m0(this.editText.getLetterSpacing());
        int gravity = this.editText.getGravity();
        this.collapsingTextHelper.g0((gravity & (-113)) | 48);
        this.collapsingTextHelper.q0(gravity);
        this.editText.addTextChangedListener(new a());
        if (this.defaultHintTextColor == null) {
            this.defaultHintTextColor = this.editText.getHintTextColors();
        }
        if (this.hintEnabled) {
            if (TextUtils.isEmpty(this.hint)) {
                CharSequence hint = this.editText.getHint();
                this.originalHint = hint;
                setHint(hint);
                this.editText.setHint((CharSequence) null);
            }
            this.isProvidingHint = true;
        }
        if (this.counterView != null) {
            m0(this.editText.getText().length());
        }
        r0();
        this.indicatorViewController.f();
        this.startLayout.bringToFront();
        this.endLayout.bringToFront();
        this.endIconFrame.bringToFront();
        this.errorIconView.bringToFront();
        B();
        C0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        x0(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.hint)) {
            return;
        }
        this.hint = charSequence;
        this.collapsingTextHelper.F0(charSequence);
        if (this.hintExpanded) {
            return;
        }
        R();
    }

    private void setPlaceholderTextEnabled(boolean z6) {
        if (this.placeholderEnabled == z6) {
            return;
        }
        if (z6) {
            i();
        } else {
            X();
            this.placeholderTextView = null;
        }
        this.placeholderEnabled = z6;
    }

    @NonNull
    private Rect t(@NonNull Rect rect) {
        if (this.editText == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.tmpBoundsRect;
        float fB = this.collapsingTextHelper.B();
        rect2.left = rect.left + this.editText.getCompoundPaddingLeft();
        rect2.top = s(rect, fB);
        rect2.right = rect.right - this.editText.getCompoundPaddingRight();
        rect2.bottom = r(rect, rect2, fB);
        return rect2;
    }

    private void t0() {
        this.endIconFrame.setVisibility((this.endIconView.getVisibility() != 0 || L()) ? 8 : 0);
        this.endLayout.setVisibility(K() || L() || ((this.suffixText == null || N()) ? '\b' : (char) 0) == 0 ? 0 : 8);
    }

    private int u() {
        float fR;
        if (!this.hintEnabled) {
            return 0;
        }
        int i10 = this.boxBackgroundMode;
        if (i10 == 0) {
            fR = this.collapsingTextHelper.r();
        } else {
            if (i10 != 2) {
                return 0;
            }
            fR = this.collapsingTextHelper.r() / 2.0f;
        }
        return (int) fR;
    }

    private boolean v() {
        return this.boxBackgroundMode == 2 && w();
    }

    private void v0() {
        if (this.boxBackgroundMode != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.inputFrame.getLayoutParams();
            int iU = u();
            if (iU != layoutParams.topMargin) {
                layoutParams.topMargin = iU;
                this.inputFrame.requestLayout();
            }
        }
    }

    private void y(boolean z6) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.animator.cancel();
        }
        if (z6 && this.hintAnimationEnabled) {
            k(1.0f);
        } else {
            this.collapsingTextHelper.u0(1.0f);
        }
        this.hintExpanded = false;
        if (A()) {
            R();
        }
        z0();
        this.startLayout.i(false);
        D0();
    }

    private void y0() {
        EditText editText;
        if (this.placeholderTextView == null || (editText = this.editText) == null) {
            return;
        }
        this.placeholderTextView.setGravity(editText.getGravity());
        this.placeholderTextView.setPadding(this.editText.getCompoundPaddingLeft(), this.editText.getCompoundPaddingTop(), this.editText.getCompoundPaddingRight(), this.editText.getCompoundPaddingBottom());
    }

    private Fade z() {
        Fade fade = new Fade();
        fade.Y(PLACEHOLDER_FADE_DURATION);
        fade.a0(e3.a.LINEAR_INTERPOLATOR);
        return fade;
    }

    private void z0() {
        EditText editText = this.editText;
        A0(editText == null ? 0 : editText.getText().length());
    }

    void E0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.boxBackground == null || this.boxBackgroundMode == 0) {
            return;
        }
        boolean z6 = false;
        boolean z10 = isFocused() || ((editText2 = this.editText) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.editText) != null && editText.isHovered())) {
            z6 = true;
        }
        if (!isEnabled()) {
            this.boxStrokeColor = this.disabledColor;
        } else if (this.indicatorViewController.l()) {
            if (this.strokeErrorColor != null) {
                B0(z10, z6);
            } else {
                this.boxStrokeColor = this.indicatorViewController.p();
            }
        } else if (!this.counterOverflowed || (textView = this.counterView) == null) {
            if (z10) {
                this.boxStrokeColor = this.focusedStrokeColor;
            } else if (z6) {
                this.boxStrokeColor = this.hoveredStrokeColor;
            } else {
                this.boxStrokeColor = this.defaultStrokeColor;
            }
        } else if (this.strokeErrorColor != null) {
            B0(z10, z6);
        } else {
            this.boxStrokeColor = textView.getCurrentTextColor();
        }
        u0();
        V();
        W();
        U();
        if (getEndIconDelegate().d()) {
            i0(this.indicatorViewController.l());
        }
        if (this.boxBackgroundMode == 2) {
            int i10 = this.boxStrokeWidthPx;
            if (z10 && isEnabled()) {
                this.boxStrokeWidthPx = this.boxStrokeWidthFocusedPx;
            } else {
                this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
            }
            if (this.boxStrokeWidthPx != i10) {
                S();
            }
        }
        if (this.boxBackgroundMode == 1) {
            if (!isEnabled()) {
                this.boxBackgroundColor = this.disabledFilledBackgroundColor;
            } else if (z6 && !z10) {
                this.boxBackgroundColor = this.hoveredFilledBackgroundColor;
            } else if (z10) {
                this.boxBackgroundColor = this.focusedFilledBackgroundColor;
            } else {
                this.boxBackgroundColor = this.defaultFilledBackgroundColor;
            }
        }
        l();
    }

    public boolean K() {
        return this.endIconFrame.getVisibility() == 0 && this.endIconView.getVisibility() == 0;
    }

    public boolean M() {
        return this.indicatorViewController.A();
    }

    public void U() {
        com.google.android.material.textfield.g.c(this, this.endIconView, this.endIconTintList);
    }

    public void V() {
        com.google.android.material.textfield.g.c(this, this.errorIconView, this.errorIconTintList);
    }

    public void W() {
        this.startLayout.j();
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i10, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.inputFrame.addView(view, layoutParams2);
        this.inputFrame.setLayoutParams(layoutParams);
        v0();
        setEditText((EditText) view);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i10) {
        EditText editText = this.editText;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.originalHint != null) {
            boolean z6 = this.isProvidingHint;
            this.isProvidingHint = false;
            CharSequence hint = editText.getHint();
            this.editText.setHint(this.originalHint);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.editText.setHint(hint);
                this.isProvidingHint = z6;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        viewStructure.setChildCount(this.inputFrame.getChildCount());
        for (int i11 = 0; i11 < this.inputFrame.getChildCount(); i11++) {
            View childAt = this.inputFrame.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.editText) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.inDrawableStateChanged) {
            return;
        }
        this.inDrawableStateChanged = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.b bVar = this.collapsingTextHelper;
        boolean zE0 = bVar != null ? bVar.E0(drawableState) : false;
        if (this.editText != null) {
            w0(ViewCompat.X(this) && isEnabled());
        }
        r0();
        E0();
        if (zE0) {
            invalidate();
        }
        this.inDrawableStateChanged = false;
    }

    public void g(@NonNull f fVar) {
        this.editTextAttachedListeners.add(fVar);
        if (this.editText != null) {
            fVar.a(this);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.editText;
        return editText != null ? editText.getBaseline() + getPaddingTop() + u() : super.getBaseline();
    }

    @NonNull
    com.google.android.material.shape.g getBoxBackground() {
        int i10 = this.boxBackgroundMode;
        if (i10 == 1 || i10 == 2) {
            return this.boxBackground;
        }
        throw new IllegalStateException();
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.counterEnabled && this.counterOverflowed && (textView = this.counterView) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.endIconView.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.endIconView.getDrawable();
    }

    @Nullable
    public CharSequence getError() {
        if (this.indicatorViewController.z()) {
            return this.indicatorViewController.o();
        }
        return null;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.indicatorViewController.n();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.indicatorViewController.p();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.errorIconView.getDrawable();
    }

    @VisibleForTesting
    final int getErrorTextCurrentColor() {
        return this.indicatorViewController.p();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.indicatorViewController.A()) {
            return this.indicatorViewController.r();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.indicatorViewController.t();
    }

    @VisibleForTesting
    final float getHintCollapsedTextHeight() {
        return this.collapsingTextHelper.r();
    }

    @VisibleForTesting
    final int getHintCurrentCollapsedTextColor() {
        return this.collapsingTextHelper.v();
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.endIconView.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.endIconView.getDrawable();
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.startLayout.a();
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.startLayout.b();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.startLayout.c();
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.startLayout.d();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.startLayout.e();
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.suffixTextView.getTextColors();
    }

    public void h(@NonNull g gVar) {
        this.endIconChangedListeners.add(gVar);
    }

    @VisibleForTesting
    void k(float f6) {
        if (this.collapsingTextHelper.D() == f6) {
            return;
        }
        if (this.animator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.animator = valueAnimator;
            valueAnimator.setInterpolator(e3.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.animator.setDuration(167L);
            this.animator.addUpdateListener(new d());
        }
        this.animator.setFloatValues(this.collapsingTextHelper.D(), f6);
        this.animator.start();
    }

    void m0(int i10) {
        boolean z6 = this.counterOverflowed;
        int i11 = this.counterMaxLength;
        if (i11 == -1) {
            this.counterView.setText(String.valueOf(i10));
            this.counterView.setContentDescription(null);
            this.counterOverflowed = false;
        } else {
            this.counterOverflowed = i10 > i11;
            n0(getContext(), this.counterView, i10, this.counterMaxLength, this.counterOverflowed);
            if (z6 != this.counterOverflowed) {
                o0();
            }
            this.counterView.setText(BidiFormatter.c().j(getContext().getString(d3.j.character_counter_pattern, Integer.valueOf(i10), Integer.valueOf(this.counterMaxLength))));
        }
        if (this.editText == null || z6 == this.counterOverflowed) {
            return;
        }
        w0(false);
        E0();
        r0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.error);
        if (savedState.isEndIconChecked) {
            this.endIconView.post(new b());
        }
        setHint(savedState.hintText);
        setHelperText(savedState.helperText);
        setPlaceholderText(savedState.placeholderText);
        requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    boolean q0() {
        boolean z6;
        if (this.editText == null) {
            return false;
        }
        boolean z10 = true;
        if (f0()) {
            int measuredWidth = this.startLayout.getMeasuredWidth() - this.editText.getPaddingLeft();
            if (this.startDummyDrawable == null || this.startDummyDrawableWidth != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.startDummyDrawable = colorDrawable;
                this.startDummyDrawableWidth = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrA = TextViewCompat.a(this.editText);
            Drawable drawable = drawableArrA[0];
            Drawable drawable2 = this.startDummyDrawable;
            if (drawable != drawable2) {
                TextViewCompat.l(this.editText, drawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                z6 = true;
            } else {
                z6 = false;
            }
        } else if (this.startDummyDrawable != null) {
            Drawable[] drawableArrA2 = TextViewCompat.a(this.editText);
            TextViewCompat.l(this.editText, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
            this.startDummyDrawable = null;
            z6 = true;
        } else {
            z6 = false;
        }
        if (e0()) {
            int measuredWidth2 = this.suffixTextView.getMeasuredWidth() - this.editText.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + MarginLayoutParamsCompat.b((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] drawableArrA3 = TextViewCompat.a(this.editText);
            Drawable drawable3 = this.endDummyDrawable;
            if (drawable3 == null || this.endDummyDrawableWidth == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.endDummyDrawable = colorDrawable2;
                    this.endDummyDrawableWidth = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = drawableArrA3[2];
                Drawable drawable5 = this.endDummyDrawable;
                if (drawable4 != drawable5) {
                    this.originalEditTextEndDrawable = drawable4;
                    TextViewCompat.l(this.editText, drawableArrA3[0], drawableArrA3[1], drawable5, drawableArrA3[3]);
                } else {
                    z10 = z6;
                }
            } else {
                this.endDummyDrawableWidth = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.l(this.editText, drawableArrA3[0], drawableArrA3[1], this.endDummyDrawable, drawableArrA3[3]);
            }
        } else {
            if (this.endDummyDrawable == null) {
                return z6;
            }
            Drawable[] drawableArrA4 = TextViewCompat.a(this.editText);
            if (drawableArrA4[2] == this.endDummyDrawable) {
                TextViewCompat.l(this.editText, drawableArrA4[0], drawableArrA4[1], this.originalEditTextEndDrawable, drawableArrA4[3]);
            } else {
                z10 = z6;
            }
            this.endDummyDrawable = null;
        }
        return z10;
    }

    void r0() {
        Drawable background;
        TextView textView;
        EditText editText = this.editText;
        if (editText == null || this.boxBackgroundMode != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.a(background)) {
            background = background.mutate();
        }
        if (this.indicatorViewController.l()) {
            background.setColorFilter(AppCompatDrawableManager.e(this.indicatorViewController.p(), PorterDuff.Mode.SRC_IN));
        } else if (this.counterOverflowed && (textView = this.counterView) != null) {
            background.setColorFilter(AppCompatDrawableManager.e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.c(background);
            this.editText.refreshDrawableState();
        }
    }

    public void setBoxBackgroundColor(@ColorInt int i10) {
        if (this.boxBackgroundColor != i10) {
            this.boxBackgroundColor = i10;
            this.defaultFilledBackgroundColor = i10;
            this.focusedFilledBackgroundColor = i10;
            this.hoveredFilledBackgroundColor = i10;
            l();
        }
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.boxBackgroundMode) {
            return;
        }
        this.boxBackgroundMode = i10;
        if (this.editText != null) {
            Q();
        }
    }

    public void setBoxStrokeColor(@ColorInt int i10) {
        if (this.focusedStrokeColor != i10) {
            this.focusedStrokeColor = i10;
            E0();
        }
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.strokeErrorColor != colorStateList) {
            this.strokeErrorColor = colorStateList;
            E0();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.boxStrokeWidthDefaultPx = i10;
        E0();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.boxStrokeWidthFocusedPx = i10;
        E0();
    }

    public void setCounterEnabled(boolean z6) {
        if (this.counterEnabled != z6) {
            if (z6) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.counterView = appCompatTextView;
                appCompatTextView.setId(d3.f.textinput_counter);
                Typeface typeface = this.typeface;
                if (typeface != null) {
                    this.counterView.setTypeface(typeface);
                }
                this.counterView.setMaxLines(1);
                this.indicatorViewController.e(this.counterView, 2);
                MarginLayoutParamsCompat.d((ViewGroup.MarginLayoutParams) this.counterView.getLayoutParams(), getResources().getDimensionPixelOffset(d3.d.mtrl_textinput_counter_margin_start));
                o0();
                l0();
            } else {
                this.indicatorViewController.B(this.counterView, 2);
                this.counterView = null;
            }
            this.counterEnabled = z6;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.counterMaxLength != i10) {
            if (i10 > 0) {
                this.counterMaxLength = i10;
            } else {
                this.counterMaxLength = -1;
            }
            if (this.counterEnabled) {
                l0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.counterOverflowTextAppearance != i10) {
            this.counterOverflowTextAppearance = i10;
            o0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.counterOverflowTextColor != colorStateList) {
            this.counterOverflowTextColor = colorStateList;
            o0();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.counterTextAppearance != i10) {
            this.counterTextAppearance = i10;
            o0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.counterTextColor != colorStateList) {
            this.counterTextColor = colorStateList;
            o0();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.defaultHintTextColor = colorStateList;
        this.focusedTextColor = colorStateList;
        if (this.editText != null) {
            w0(false);
        }
    }

    public void setEndIconActivated(boolean z6) {
        this.endIconView.setActivated(z6);
    }

    public void setEndIconCheckable(boolean z6) {
        this.endIconView.setCheckable(z6);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.endIconView.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.endIconView.setImageDrawable(drawable);
        if (drawable != null) {
            com.google.android.material.textfield.g.a(this, this.endIconView, this.endIconTintList, this.endIconTintMode);
            U();
        }
    }

    public void setEndIconMode(int i10) {
        int i11 = this.endIconMode;
        if (i11 == i10) {
            return;
        }
        this.endIconMode = i10;
        C(i11);
        setEndIconVisible(i10 != 0);
        if (getEndIconDelegate().b(this.boxBackgroundMode)) {
            getEndIconDelegate().a();
            com.google.android.material.textfield.g.a(this, this.endIconView, this.endIconTintList, this.endIconTintMode);
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.boxBackgroundMode + " is not supported by the end icon mode " + i10);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        b0(this.endIconView, onClickListener, this.endIconOnLongClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.endIconOnLongClickListener = onLongClickListener;
        c0(this.endIconView, onLongClickListener);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.endIconTintList != colorStateList) {
            this.endIconTintList = colorStateList;
            com.google.android.material.textfield.g.a(this, this.endIconView, colorStateList, this.endIconTintMode);
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.endIconTintMode != mode) {
            this.endIconTintMode = mode;
            com.google.android.material.textfield.g.a(this, this.endIconView, this.endIconTintList, mode);
        }
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.indicatorViewController.z()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.indicatorViewController.v();
        } else {
            this.indicatorViewController.O(charSequence);
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.indicatorViewController.D(charSequence);
    }

    public void setErrorEnabled(boolean z6) {
        this.indicatorViewController.E(z6);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        b0(this.errorIconView, onClickListener, this.errorIconOnLongClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.errorIconOnLongClickListener = onLongClickListener;
        c0(this.errorIconView, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.errorIconTintList != colorStateList) {
            this.errorIconTintList = colorStateList;
            com.google.android.material.textfield.g.a(this, this.errorIconView, colorStateList, this.errorIconTintMode);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.errorIconTintMode != mode) {
            this.errorIconTintMode = mode;
            com.google.android.material.textfield.g.a(this, this.errorIconView, this.errorIconTintList, mode);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i10) {
        this.indicatorViewController.F(i10);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.indicatorViewController.G(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z6) {
        if (this.expandedHintEnabled != z6) {
            this.expandedHintEnabled = z6;
            w0(false);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.indicatorViewController.J(colorStateList);
    }

    public void setHelperTextEnabled(boolean z6) {
        this.indicatorViewController.I(z6);
    }

    public void setHelperTextTextAppearance(@StyleRes int i10) {
        this.indicatorViewController.H(i10);
    }

    public void setHintEnabled(boolean z6) {
        if (z6 != this.hintEnabled) {
            this.hintEnabled = z6;
            if (z6) {
                CharSequence hint = this.editText.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.hint)) {
                        setHint(hint);
                    }
                    this.editText.setHint((CharSequence) null);
                }
                this.isProvidingHint = true;
            } else {
                this.isProvidingHint = false;
                if (!TextUtils.isEmpty(this.hint) && TextUtils.isEmpty(this.editText.getHint())) {
                    this.editText.setHint(this.hint);
                }
                setHintInternal(null);
            }
            if (this.editText != null) {
                v0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i10) {
        this.collapsingTextHelper.d0(i10);
        this.focusedTextColor = this.collapsingTextHelper.p();
        if (this.editText != null) {
            w0(false);
            v0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.focusedTextColor != colorStateList) {
            if (this.defaultHintTextColor == null) {
                this.collapsingTextHelper.f0(colorStateList);
            }
            this.focusedTextColor = colorStateList;
            if (this.editText != null) {
                w0(false);
            }
        }
    }

    public void setMaxEms(int i10) {
        this.maxEms = i10;
        EditText editText = this.editText;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxEms(i10);
    }

    public void setMaxWidth(@Px int i10) {
        this.maxWidth = i10;
        EditText editText = this.editText;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMinEms(int i10) {
        this.minEms = i10;
        EditText editText = this.editText;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinEms(i10);
    }

    public void setMinWidth(@Px int i10) {
        this.minWidth = i10;
        EditText editText = this.editText;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z6) {
        if (z6 && this.endIconMode != 1) {
            setEndIconMode(1);
        } else {
            if (z6) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.endIconTintList = colorStateList;
        com.google.android.material.textfield.g.a(this, this.endIconView, colorStateList, this.endIconTintMode);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.endIconTintMode = mode;
        com.google.android.material.textfield.g.a(this, this.endIconView, this.endIconTintList, mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.placeholderTextView == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.placeholderTextView = appCompatTextView;
            appCompatTextView.setId(d3.f.textinput_placeholder);
            ViewCompat.F0(this.placeholderTextView, 2);
            Fade fadeZ = z();
            this.placeholderFadeIn = fadeZ;
            fadeZ.e0(PLACEHOLDER_START_DELAY);
            this.placeholderFadeOut = z();
            setPlaceholderTextAppearance(this.placeholderTextAppearance);
            setPlaceholderTextColor(this.placeholderTextColor);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.placeholderEnabled) {
                setPlaceholderTextEnabled(true);
            }
            this.placeholderText = charSequence;
        }
        z0();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i10) {
        this.placeholderTextAppearance = i10;
        TextView textView = this.placeholderTextView;
        if (textView != null) {
            TextViewCompat.q(textView, i10);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.placeholderTextColor != colorStateList) {
            this.placeholderTextColor = colorStateList;
            TextView textView = this.placeholderTextView;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.startLayout.k(charSequence);
    }

    public void setPrefixTextAppearance(@StyleRes int i10) {
        this.startLayout.l(i10);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.startLayout.m(colorStateList);
    }

    public void setStartIconCheckable(boolean z6) {
        this.startLayout.n(z6);
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        this.startLayout.o(charSequence);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.startLayout.p(drawable);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.startLayout.q(onClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.startLayout.r(onLongClickListener);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        this.startLayout.s(colorStateList);
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.startLayout.t(mode);
    }

    public void setStartIconVisible(boolean z6) {
        this.startLayout.u(z6);
    }

    public void setSuffixTextAppearance(@StyleRes int i10) {
        TextViewCompat.q(this.suffixTextView, i10);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.suffixTextView.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable e eVar) {
        EditText editText = this.editText;
        if (editText != null) {
            ViewCompat.u0(editText, eVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.typeface) {
            this.typeface = typeface;
            this.collapsingTextHelper.H0(typeface);
            this.indicatorViewController.L(typeface);
            TextView textView = this.counterView;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r3v51, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v83 */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11;
        ?? r5;
        int i12 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i12), attributeSet, i10);
        this.minEms = -1;
        this.maxEms = -1;
        this.minWidth = -1;
        this.maxWidth = -1;
        this.indicatorViewController = new h(this);
        this.tmpRect = new Rect();
        this.tmpBoundsRect = new Rect();
        this.tmpRectF = new RectF();
        this.editTextAttachedListeners = new LinkedHashSet<>();
        this.endIconMode = 0;
        SparseArray<com.google.android.material.textfield.f> sparseArray = new SparseArray<>();
        this.endIconDelegates = sparseArray;
        this.endIconChangedListeners = new LinkedHashSet<>();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.collapsingTextHelper = bVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.inputFrame = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.endIconFrame = frameLayout2;
        LinearLayout linearLayout = new LinearLayout(context2);
        this.endLayout = linearLayout;
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.suffixTextView = appCompatTextView;
        linearLayout.setVisibility(8);
        frameLayout2.setVisibility(8);
        appCompatTextView.setVisibility(8);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context2);
        int i13 = d3.h.design_text_input_end_icon;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(i13, (ViewGroup) linearLayout, false);
        this.errorIconView = checkableImageButton;
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) layoutInflaterFrom.inflate(i13, (ViewGroup) frameLayout2, false);
        this.endIconView = checkableImageButton2;
        frameLayout.setAddStatesFromChildren(true);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = e3.a.LINEAR_INTERPOLATOR;
        bVar.G0(timeInterpolator);
        bVar.C0(timeInterpolator);
        bVar.g0(8388659);
        int[] iArr = d3.l.TextInputLayout;
        int i14 = d3.l.TextInputLayout_counterTextAppearance;
        int i15 = d3.l.TextInputLayout_counterOverflowTextAppearance;
        int i16 = d3.l.TextInputLayout_errorTextAppearance;
        int i17 = d3.l.TextInputLayout_helperTextTextAppearance;
        int i18 = d3.l.TextInputLayout_hintTextAppearance;
        TintTypedArray tintTypedArrayI = s.i(context2, attributeSet, iArr, i10, i12, i14, i15, i16, i17, i18);
        l lVar = new l(this, tintTypedArrayI);
        this.startLayout = lVar;
        this.hintEnabled = tintTypedArrayI.a(d3.l.TextInputLayout_hintEnabled, true);
        setHint(tintTypedArrayI.p(d3.l.TextInputLayout_android_hint));
        this.hintAnimationEnabled = tintTypedArrayI.a(d3.l.TextInputLayout_hintAnimationEnabled, true);
        this.expandedHintEnabled = tintTypedArrayI.a(d3.l.TextInputLayout_expandedHintEnabled, true);
        int i19 = d3.l.TextInputLayout_android_minEms;
        if (tintTypedArrayI.s(i19)) {
            i11 = -1;
            setMinEms(tintTypedArrayI.k(i19, -1));
        } else {
            i11 = -1;
            int i20 = d3.l.TextInputLayout_android_minWidth;
            if (tintTypedArrayI.s(i20)) {
                setMinWidth(tintTypedArrayI.f(i20, -1));
            }
        }
        int i21 = d3.l.TextInputLayout_android_maxEms;
        if (tintTypedArrayI.s(i21)) {
            setMaxEms(tintTypedArrayI.k(i21, i11));
        } else {
            int i22 = d3.l.TextInputLayout_android_maxWidth;
            if (tintTypedArrayI.s(i22)) {
                setMaxWidth(tintTypedArrayI.f(i22, i11));
            }
        }
        this.shapeAppearanceModel = com.google.android.material.shape.k.e(context2, attributeSet, i10, i12).m();
        this.boxLabelCutoutPaddingPx = context2.getResources().getDimensionPixelOffset(d3.d.mtrl_textinput_box_label_cutout_padding);
        this.boxCollapsedPaddingTopPx = tintTypedArrayI.e(d3.l.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.boxStrokeWidthDefaultPx = tintTypedArrayI.f(d3.l.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(d3.d.mtrl_textinput_box_stroke_width_default));
        this.boxStrokeWidthFocusedPx = tintTypedArrayI.f(d3.l.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(d3.d.mtrl_textinput_box_stroke_width_focused));
        this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
        float fD = tintTypedArrayI.d(d3.l.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float fD2 = tintTypedArrayI.d(d3.l.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float fD3 = tintTypedArrayI.d(d3.l.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float fD4 = tintTypedArrayI.d(d3.l.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        com.google.android.material.shape.k.b bVarV = this.shapeAppearanceModel.v();
        if (fD >= 0.0f) {
            bVarV.B(fD);
        }
        if (fD2 >= 0.0f) {
            bVarV.F(fD2);
        }
        if (fD3 >= 0.0f) {
            bVarV.w(fD3);
        }
        if (fD4 >= 0.0f) {
            bVarV.s(fD4);
        }
        this.shapeAppearanceModel = bVarV.m();
        ColorStateList colorStateListB = com.google.android.material.resources.c.b(context2, tintTypedArrayI, d3.l.TextInputLayout_boxBackgroundColor);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.defaultFilledBackgroundColor = defaultColor;
            this.boxBackgroundColor = defaultColor;
            if (colorStateListB.isStateful()) {
                this.disabledFilledBackgroundColor = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.focusedFilledBackgroundColor = colorStateListB.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.hoveredFilledBackgroundColor = colorStateListB.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.focusedFilledBackgroundColor = this.defaultFilledBackgroundColor;
                ColorStateList colorStateListA = AppCompatResources.a(context2, d3.c.mtrl_filled_background_color);
                this.disabledFilledBackgroundColor = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.hoveredFilledBackgroundColor = colorStateListA.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.boxBackgroundColor = 0;
            this.defaultFilledBackgroundColor = 0;
            this.disabledFilledBackgroundColor = 0;
            this.focusedFilledBackgroundColor = 0;
            this.hoveredFilledBackgroundColor = 0;
        }
        int i23 = d3.l.TextInputLayout_android_textColorHint;
        if (tintTypedArrayI.s(i23)) {
            ColorStateList colorStateListC = tintTypedArrayI.c(i23);
            this.focusedTextColor = colorStateListC;
            this.defaultHintTextColor = colorStateListC;
        }
        int i24 = d3.l.TextInputLayout_boxStrokeColor;
        ColorStateList colorStateListB2 = com.google.android.material.resources.c.b(context2, tintTypedArrayI, i24);
        this.focusedStrokeColor = tintTypedArrayI.b(i24, 0);
        this.defaultStrokeColor = ContextCompat.getColor(context2, d3.c.mtrl_textinput_default_box_stroke_color);
        this.disabledColor = ContextCompat.getColor(context2, d3.c.mtrl_textinput_disabled_color);
        this.hoveredStrokeColor = ContextCompat.getColor(context2, d3.c.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        int i25 = d3.l.TextInputLayout_boxStrokeErrorColor;
        if (tintTypedArrayI.s(i25)) {
            setBoxStrokeErrorColor(com.google.android.material.resources.c.b(context2, tintTypedArrayI, i25));
        }
        if (tintTypedArrayI.n(i18, -1) != -1) {
            r5 = 0;
            setHintTextAppearance(tintTypedArrayI.n(i18, 0));
        } else {
            r5 = 0;
        }
        int iN = tintTypedArrayI.n(i16, r5);
        CharSequence charSequenceP = tintTypedArrayI.p(d3.l.TextInputLayout_errorContentDescription);
        boolean zA = tintTypedArrayI.a(d3.l.TextInputLayout_errorEnabled, r5);
        checkableImageButton.setId(d3.f.text_input_error_icon);
        if (com.google.android.material.resources.c.i(context2)) {
            MarginLayoutParamsCompat.d((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), r5);
        }
        int i26 = d3.l.TextInputLayout_errorIconTint;
        if (tintTypedArrayI.s(i26)) {
            this.errorIconTintList = com.google.android.material.resources.c.b(context2, tintTypedArrayI, i26);
        }
        int i27 = d3.l.TextInputLayout_errorIconTintMode;
        if (tintTypedArrayI.s(i27)) {
            this.errorIconTintMode = u.h(tintTypedArrayI.k(i27, -1), null);
        }
        int i28 = d3.l.TextInputLayout_errorIconDrawable;
        if (tintTypedArrayI.s(i28)) {
            setErrorIconDrawable(tintTypedArrayI.g(i28));
        }
        checkableImageButton.setContentDescription(getResources().getText(d3.j.error_icon_content_description));
        ViewCompat.F0(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int iN2 = tintTypedArrayI.n(i17, 0);
        boolean zA2 = tintTypedArrayI.a(d3.l.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceP2 = tintTypedArrayI.p(d3.l.TextInputLayout_helperText);
        int iN3 = tintTypedArrayI.n(d3.l.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceP3 = tintTypedArrayI.p(d3.l.TextInputLayout_placeholderText);
        int iN4 = tintTypedArrayI.n(d3.l.TextInputLayout_suffixTextAppearance, 0);
        CharSequence charSequenceP4 = tintTypedArrayI.p(d3.l.TextInputLayout_suffixText);
        boolean zA3 = tintTypedArrayI.a(d3.l.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(tintTypedArrayI.k(d3.l.TextInputLayout_counterMaxLength, -1));
        this.counterTextAppearance = tintTypedArrayI.n(i14, 0);
        this.counterOverflowTextAppearance = tintTypedArrayI.n(i15, 0);
        setBoxBackgroundMode(tintTypedArrayI.k(d3.l.TextInputLayout_boxBackgroundMode, 0));
        if (com.google.android.material.resources.c.i(context2)) {
            MarginLayoutParamsCompat.d((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams(), 0);
        }
        int iN5 = tintTypedArrayI.n(d3.l.TextInputLayout_endIconDrawable, 0);
        sparseArray.append(-1, new com.google.android.material.textfield.b(this, iN5));
        sparseArray.append(0, new j(this));
        sparseArray.append(1, new k(this, iN5 == 0 ? tintTypedArrayI.n(d3.l.TextInputLayout_passwordToggleDrawable, 0) : iN5));
        sparseArray.append(2, new com.google.android.material.textfield.a(this, iN5));
        sparseArray.append(3, new com.google.android.material.textfield.e(this, iN5));
        int i29 = d3.l.TextInputLayout_passwordToggleEnabled;
        if (!tintTypedArrayI.s(i29)) {
            int i30 = d3.l.TextInputLayout_endIconTint;
            if (tintTypedArrayI.s(i30)) {
                this.endIconTintList = com.google.android.material.resources.c.b(context2, tintTypedArrayI, i30);
            }
            int i31 = d3.l.TextInputLayout_endIconTintMode;
            if (tintTypedArrayI.s(i31)) {
                this.endIconTintMode = u.h(tintTypedArrayI.k(i31, -1), null);
            }
        }
        int i32 = d3.l.TextInputLayout_endIconMode;
        if (tintTypedArrayI.s(i32)) {
            setEndIconMode(tintTypedArrayI.k(i32, 0));
            int i33 = d3.l.TextInputLayout_endIconContentDescription;
            if (tintTypedArrayI.s(i33)) {
                setEndIconContentDescription(tintTypedArrayI.p(i33));
            }
            setEndIconCheckable(tintTypedArrayI.a(d3.l.TextInputLayout_endIconCheckable, true));
        } else if (tintTypedArrayI.s(i29)) {
            int i34 = d3.l.TextInputLayout_passwordToggleTint;
            if (tintTypedArrayI.s(i34)) {
                this.endIconTintList = com.google.android.material.resources.c.b(context2, tintTypedArrayI, i34);
            }
            int i35 = d3.l.TextInputLayout_passwordToggleTintMode;
            if (tintTypedArrayI.s(i35)) {
                this.endIconTintMode = u.h(tintTypedArrayI.k(i35, -1), null);
            }
            setEndIconMode(tintTypedArrayI.a(i29, false) ? 1 : 0);
            setEndIconContentDescription(tintTypedArrayI.p(d3.l.TextInputLayout_passwordToggleContentDescription));
        }
        appCompatTextView.setId(d3.f.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        ViewCompat.w0(appCompatTextView, 1);
        setErrorContentDescription(charSequenceP);
        setCounterOverflowTextAppearance(this.counterOverflowTextAppearance);
        setHelperTextTextAppearance(iN2);
        setErrorTextAppearance(iN);
        setCounterTextAppearance(this.counterTextAppearance);
        setPlaceholderText(charSequenceP3);
        setPlaceholderTextAppearance(iN3);
        setSuffixTextAppearance(iN4);
        int i36 = d3.l.TextInputLayout_errorTextColor;
        if (tintTypedArrayI.s(i36)) {
            setErrorTextColor(tintTypedArrayI.c(i36));
        }
        int i37 = d3.l.TextInputLayout_helperTextTextColor;
        if (tintTypedArrayI.s(i37)) {
            setHelperTextColor(tintTypedArrayI.c(i37));
        }
        int i38 = d3.l.TextInputLayout_hintTextColor;
        if (tintTypedArrayI.s(i38)) {
            setHintTextColor(tintTypedArrayI.c(i38));
        }
        int i39 = d3.l.TextInputLayout_counterTextColor;
        if (tintTypedArrayI.s(i39)) {
            setCounterTextColor(tintTypedArrayI.c(i39));
        }
        int i40 = d3.l.TextInputLayout_counterOverflowTextColor;
        if (tintTypedArrayI.s(i40)) {
            setCounterOverflowTextColor(tintTypedArrayI.c(i40));
        }
        int i41 = d3.l.TextInputLayout_placeholderTextColor;
        if (tintTypedArrayI.s(i41)) {
            setPlaceholderTextColor(tintTypedArrayI.c(i41));
        }
        int i42 = d3.l.TextInputLayout_suffixTextColor;
        if (tintTypedArrayI.s(i42)) {
            setSuffixTextColor(tintTypedArrayI.c(i42));
        }
        setEnabled(tintTypedArrayI.a(d3.l.TextInputLayout_android_enabled, true));
        tintTypedArrayI.w();
        ViewCompat.F0(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.G0(this, 1);
        }
        frameLayout2.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView);
        linearLayout.addView(checkableImageButton);
        linearLayout.addView(frameLayout2);
        frameLayout.addView(lVar);
        frameLayout.addView(linearLayout);
        addView(frameLayout);
        setHelperTextEnabled(zA2);
        setErrorEnabled(zA);
        setCounterEnabled(zA3);
        setHelperText(charSequenceP2);
        setSuffixText(charSequenceP4);
    }

    private void Q() {
        o();
        Z();
        E0();
        j0();
        j();
        if (this.boxBackgroundMode != 0) {
            v0();
        }
    }

    private void R() {
        if (!A()) {
            return;
        }
        RectF rectF = this.tmpRectF;
        this.collapsingTextHelper.o(rectF, this.editText.getWidth(), this.editText.getGravity());
        n(rectF);
        rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.boxStrokeWidthPx);
        ((com.google.android.material.textfield.d) this.boxBackground).s0(rectF);
    }

    private void S() {
        if (A() && !this.hintExpanded) {
            x();
            R();
        }
    }

    private static void T(@NonNull ViewGroup viewGroup, boolean z6) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z6);
            if (childAt instanceof ViewGroup) {
                T((ViewGroup) childAt, z6);
            }
        }
    }

    private void Z() {
        if (g0()) {
            ViewCompat.y0(this.editText, this.boxBackground);
        }
    }

    private static void a0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        boolean z6;
        boolean zS = ViewCompat.S(checkableImageButton);
        boolean z10 = false;
        int i10 = 1;
        if (onLongClickListener != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (zS || z6) {
            z10 = true;
        }
        checkableImageButton.setFocusable(z10);
        checkableImageButton.setClickable(zS);
        checkableImageButton.setPressable(zS);
        checkableImageButton.setLongClickable(z6);
        if (!z10) {
            i10 = 2;
        }
        ViewCompat.F0(checkableImageButton, i10);
    }

    private static void b0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnClickListener onClickListener, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        a0(checkableImageButton, onLongClickListener);
    }

    private static void c0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        a0(checkableImageButton, onLongClickListener);
    }

    private boolean f0() {
        if ((getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.startLayout.getMeasuredWidth() > 0) {
            return true;
        }
        return false;
    }

    private int r(@NonNull Rect rect, @NonNull Rect rect2, float f6) {
        if (P()) {
            return (int) (rect2.top + f6);
        }
        return rect.bottom - this.editText.getCompoundPaddingBottom();
    }

    private int s(@NonNull Rect rect, float f6) {
        if (P()) {
            return (int) (rect.centerY() - (f6 / 2.0f));
        }
        return rect.top + this.editText.getCompoundPaddingTop();
    }

    private void u0() {
        boolean z6;
        int i10 = 0;
        if (getErrorIconDrawable() != null && this.indicatorViewController.z() && this.indicatorViewController.l()) {
            z6 = true;
        } else {
            z6 = false;
        }
        CheckableImageButton checkableImageButton = this.errorIconView;
        if (!z6) {
            i10 = 8;
        }
        checkableImageButton.setVisibility(i10);
        t0();
        C0();
        if (!I()) {
            q0();
        }
    }

    private void x() {
        if (A()) {
            ((com.google.android.material.textfield.d) this.boxBackground).q0();
        }
    }

    private void x0(boolean z6, boolean z10) {
        boolean z11;
        ColorStateList colorStateList;
        TextView textView;
        int colorForState;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.editText;
        boolean z12 = false;
        if (editText != null && !TextUtils.isEmpty(editText.getText())) {
            z11 = true;
        } else {
            z11 = false;
        }
        EditText editText2 = this.editText;
        if (editText2 != null && editText2.hasFocus()) {
            z12 = true;
        }
        boolean zL = this.indicatorViewController.l();
        ColorStateList colorStateList2 = this.defaultHintTextColor;
        if (colorStateList2 != null) {
            this.collapsingTextHelper.f0(colorStateList2);
            this.collapsingTextHelper.p0(this.defaultHintTextColor);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.defaultHintTextColor;
            if (colorStateList3 != null) {
                colorForState = colorStateList3.getColorForState(new int[]{-16842910}, this.disabledColor);
            } else {
                colorForState = this.disabledColor;
            }
            this.collapsingTextHelper.f0(ColorStateList.valueOf(colorForState));
            this.collapsingTextHelper.p0(ColorStateList.valueOf(colorForState));
        } else if (zL) {
            this.collapsingTextHelper.f0(this.indicatorViewController.q());
        } else if (this.counterOverflowed && (textView = this.counterView) != null) {
            this.collapsingTextHelper.f0(textView.getTextColors());
        } else if (z12 && (colorStateList = this.focusedTextColor) != null) {
            this.collapsingTextHelper.f0(colorStateList);
        }
        if (!z11 && this.expandedHintEnabled && (!isEnabled() || !z12)) {
            if (z10 || !this.hintExpanded) {
                F(z6);
                return;
            }
            return;
        }
        if (z10 || this.hintExpanded) {
            y(z6);
        }
    }

    public void Y(float f6, float f7, float f10, float f11) {
        float f12;
        float f13;
        boolean zG = u.g(this);
        this.areCornerRadiiRtl = zG;
        if (zG) {
            f12 = f7;
        } else {
            f12 = f6;
        }
        if (!zG) {
            f6 = f7;
        }
        if (zG) {
            f13 = f11;
        } else {
            f13 = f10;
        }
        if (!zG) {
            f10 = f11;
        }
        com.google.android.material.shape.g gVar = this.boxBackground;
        if (gVar == null || gVar.H() != f12 || this.boxBackground.I() != f6 || this.boxBackground.s() != f13 || this.boxBackground.t() != f10) {
            this.shapeAppearanceModel = this.shapeAppearanceModel.v().B(f12).F(f6).s(f13).w(f10).m();
            l();
        }
    }

    void d0(@NonNull TextView textView, @StyleRes int i10) {
        try {
            TextViewCompat.q(textView, i10);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        TextViewCompat.q(textView, d3.k.TextAppearance_AppCompat_Caption);
        textView.setTextColor(ContextCompat.getColor(getContext(), d3.c.design_error));
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        E(canvas);
        D(canvas);
    }

    public float getBoxCornerRadiusBottomEnd() {
        if (u.g(this)) {
            return this.shapeAppearanceModel.j().a(this.tmpRectF);
        }
        return this.shapeAppearanceModel.l().a(this.tmpRectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        if (u.g(this)) {
            return this.shapeAppearanceModel.l().a(this.tmpRectF);
        }
        return this.shapeAppearanceModel.j().a(this.tmpRectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        if (u.g(this)) {
            return this.shapeAppearanceModel.r().a(this.tmpRectF);
        }
        return this.shapeAppearanceModel.t().a(this.tmpRectF);
    }

    public float getBoxCornerRadiusTopStart() {
        if (u.g(this)) {
            return this.shapeAppearanceModel.t().a(this.tmpRectF);
        }
        return this.shapeAppearanceModel.r().a(this.tmpRectF);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.collapsingTextHelper.V(configuration);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        EditText editText = this.editText;
        if (editText != null) {
            Rect rect = this.tmpRect;
            com.google.android.material.internal.d.a(this, editText, rect);
            k0(rect);
            if (this.hintEnabled) {
                this.collapsingTextHelper.r0(this.editText.getTextSize());
                int gravity = this.editText.getGravity();
                this.collapsingTextHelper.g0((gravity & (-113)) | 48);
                this.collapsingTextHelper.q0(gravity);
                this.collapsingTextHelper.c0(q(rect));
                this.collapsingTextHelper.l0(t(rect));
                this.collapsingTextHelper.Y();
                if (A() && !this.hintExpanded) {
                    R();
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        boolean zS0 = s0();
        boolean zQ0 = q0();
        if (zS0 || zQ0) {
            this.editText.post(new c());
        }
        y0();
        C0();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i10) {
        boolean z6;
        float f6;
        float f7;
        super.onRtlPropertiesChanged(i10);
        boolean z10 = false;
        if (i10 == 1) {
            z6 = true;
        } else {
            z6 = false;
        }
        boolean z11 = this.areCornerRadiiRtl;
        if (z6 != z11) {
            if (z6 && !z11) {
                z10 = true;
            }
            float fA = this.shapeAppearanceModel.r().a(this.tmpRectF);
            float fA2 = this.shapeAppearanceModel.t().a(this.tmpRectF);
            float fA3 = this.shapeAppearanceModel.j().a(this.tmpRectF);
            float fA4 = this.shapeAppearanceModel.l().a(this.tmpRectF);
            if (z10) {
                f6 = fA;
            } else {
                f6 = fA2;
            }
            if (z10) {
                fA = fA2;
            }
            if (z10) {
                f7 = fA3;
            } else {
                f7 = fA4;
            }
            if (z10) {
                fA3 = fA4;
            }
            Y(f6, fA, f7, fA3);
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        boolean z6;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.indicatorViewController.l()) {
            savedState.error = getError();
        }
        if (I() && this.endIconView.isChecked()) {
            z6 = true;
        } else {
            z6 = false;
        }
        savedState.isEndIconChecked = z6;
        savedState.hintText = getHint();
        savedState.helperText = getHelperText();
        savedState.placeholderText = getPlaceholderText();
        return savedState;
    }

    public void setBoxBackgroundColorResource(@ColorRes int i10) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.defaultFilledBackgroundColor = defaultColor;
        this.boxBackgroundColor = defaultColor;
        this.disabledFilledBackgroundColor = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.focusedFilledBackgroundColor = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.hoveredFilledBackgroundColor = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        l();
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.defaultStrokeColor = colorStateList.getDefaultColor();
            this.disabledColor = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.hoveredStrokeColor = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.focusedStrokeColor = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.focusedStrokeColor != colorStateList.getDefaultColor()) {
            this.focusedStrokeColor = colorStateList.getDefaultColor();
        }
        E0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        T(this, z6);
        super.setEnabled(z6);
    }

    public void setEndIconVisible(boolean z6) {
        int i10;
        if (K() != z6) {
            CheckableImageButton checkableImageButton = this.endIconView;
            if (z6) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            checkableImageButton.setVisibility(i10);
            t0();
            C0();
            q0();
        }
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.errorIconView.setImageDrawable(drawable);
        u0();
        com.google.android.material.textfield.g.a(this, this.errorIconView, this.errorIconTintList, this.errorIconTintMode);
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (M()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!M()) {
                setHelperTextEnabled(true);
            }
            this.indicatorViewController.P(charSequence);
        }
    }

    public void setHint(@StringRes int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setMaxWidthResource(@DimenRes int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinWidthResource(@DimenRes int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.endIconView.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.endIconView.setImageDrawable(drawable);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        this.suffixText = charSequence2;
        this.suffixTextView.setText(charSequence);
        D0();
    }
}
