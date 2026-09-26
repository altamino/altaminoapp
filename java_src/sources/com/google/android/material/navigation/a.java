package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import d3.f;
import d3.g;
import d3.j;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public abstract class a extends FrameLayout implements MenuView.ItemView {
    private static final d ACTIVE_INDICATOR_LABELED_TRANSFORM;
    private static final d ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int INVALID_ITEM_POSITION = -1;
    private ValueAnimator activeIndicatorAnimator;
    private int activeIndicatorDesiredHeight;
    private int activeIndicatorDesiredWidth;
    private boolean activeIndicatorEnabled;
    private int activeIndicatorMarginHorizontal;
    private float activeIndicatorProgress;
    private boolean activeIndicatorResizeable;
    private d activeIndicatorTransform;

    @Nullable
    private final View activeIndicatorView;

    @Nullable
    private com.google.android.material.badge.a badgeDrawable;
    private final ImageView icon;

    @Nullable
    private final FrameLayout iconContainer;

    @Nullable
    private ColorStateList iconTint;
    private boolean initialized;
    private boolean isShifting;

    @Nullable
    private MenuItemImpl itemData;
    private int itemPaddingBottom;
    private int itemPaddingTop;
    private int itemPosition;
    private final ViewGroup labelGroup;
    private int labelVisibilityMode;
    private final TextView largeLabel;

    @Nullable
    private Drawable originalIconDrawable;
    private float scaleDownFactor;
    private float scaleUpFactor;
    private float shiftAmount;
    private final TextView smallLabel;

    @Nullable
    private Drawable wrappedIconDrawable;

    /* JADX INFO: renamed from: com.google.android.material.navigation.a$a, reason: collision with other inner class name */
    class ViewOnLayoutChangeListenerC0206a implements View.OnLayoutChangeListener {
        ViewOnLayoutChangeListenerC0206a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            if (a.this.icon.getVisibility() == 0) {
                a aVar = a.this;
                aVar.u(aVar.icon);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ int val$width;

        b(int i10) {
            this.val$width = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.v(this.val$width);
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ float val$newProgress;

        c(float f) {
            this.val$newProgress = f;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            a.this.o(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.val$newProgress);
        }
    }

    private static class d {
        private static final float ALPHA_FRACTION = 0.2f;
        private static final float SCALE_X_HIDDEN = 0.4f;
        private static final float SCALE_X_SHOWN = 1.0f;

        private d() {
        }

        protected float a(@FloatRange float f, @FloatRange float f6) {
            return e3.a.b(0.0f, 1.0f, f6 == 0.0f ? 0.8f : 0.0f, f6 == 0.0f ? 1.0f : 0.2f, f);
        }

        protected float c(@FloatRange float f, @FloatRange float f6) {
            return 1.0f;
        }

        /* synthetic */ d(ViewOnLayoutChangeListenerC0206a viewOnLayoutChangeListenerC0206a) {
            this();
        }

        protected float b(@FloatRange float f, @FloatRange float f6) {
            return e3.a.a(SCALE_X_HIDDEN, 1.0f, f);
        }

        public void d(@FloatRange float f, @FloatRange float f6, @NonNull View view) {
            view.setScaleX(b(f, f6));
            view.setScaleY(c(f, f6));
            view.setAlpha(a(f, f6));
        }
    }

    private static class e extends d {
        private e() {
            super(null);
        }

        /* synthetic */ e(ViewOnLayoutChangeListenerC0206a viewOnLayoutChangeListenerC0206a) {
            this();
        }

        @Override // com.google.android.material.navigation.a.d
        protected float c(float f, float f6) {
            return b(f, f6);
        }
    }

    private void g(float f, float f6) {
        this.shiftAmount = f - f6;
        this.scaleUpFactor = (f6 * 1.0f) / f;
        this.scaleDownFactor = (f * 1.0f) / f6;
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.iconContainer;
        return frameLayout != null ? frameLayout : this.icon;
    }

    private boolean j() {
        return this.badgeDrawable != null;
    }

    private boolean k() {
        return this.activeIndicatorResizeable && this.labelVisibilityMode == 2;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean c() {
        return false;
    }

    @Nullable
    public com.google.android.material.badge.a getBadge() {
        return this.badgeDrawable;
    }

    @DrawableRes
    protected int getItemBackgroundResId() {
        return d3.e.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.itemData;
    }

    @DimenRes
    protected int getItemDefaultMarginResId() {
        return d3.d.mtrl_navigation_bar_item_default_margin;
    }

    @LayoutRes
    protected abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.itemPosition;
    }

    public void setActiveIndicatorResizeable(boolean z6) {
        this.activeIndicatorResizeable = z6;
    }

    public void setItemBackground(int i10) {
        setItemBackground(i10 == 0 ? null : ContextCompat.getDrawable(getContext(), i10));
    }

    public void setItemPosition(int i10) {
        this.itemPosition = i10;
    }

    private int getSuggestedIconHeight() {
        com.google.android.material.badge.a aVar = this.badgeDrawable;
        int minimumHeight = aVar != null ? aVar.getMinimumHeight() / 2 : 0;
        return Math.max(minimumHeight, ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin) + this.icon.getMeasuredWidth() + minimumHeight;
    }

    private int getSuggestedIconWidth() {
        com.google.android.material.badge.a aVar = this.badgeDrawable;
        int minimumWidth = aVar == null ? 0 : aVar.getMinimumWidth() - this.badgeDrawable.h();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.icon.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    @Nullable
    private FrameLayout i(View view) {
        ImageView imageView = this.icon;
        if (view == imageView && com.google.android.material.badge.c.USE_COMPAT_PARENT) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    private void l(@FloatRange float f) {
        if (!this.activeIndicatorEnabled || !this.initialized || !ViewCompat.W(this)) {
            o(f, f);
            return;
        }
        ValueAnimator valueAnimator = this.activeIndicatorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.activeIndicatorAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.activeIndicatorProgress, f);
        this.activeIndicatorAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new c(f));
        this.activeIndicatorAnimator.setInterpolator(o3.a.e(getContext(), d3.b.motionEasingStandard, e3.a.FAST_OUT_SLOW_IN_INTERPOLATOR));
        this.activeIndicatorAnimator.setDuration(o3.a.d(getContext(), d3.b.motionDurationLong1, getResources().getInteger(g.material_motion_duration_long_1)));
        this.activeIndicatorAnimator.start();
    }

    private void m() {
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null) {
            setChecked(menuItemImpl.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(@FloatRange float f, float f6) {
        View view = this.activeIndicatorView;
        if (view != null) {
            this.activeIndicatorTransform.d(f, f6, view);
        }
        this.activeIndicatorProgress = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i10) {
        if (this.activeIndicatorView == null) {
            return;
        }
        int iMin = Math.min(this.activeIndicatorDesiredWidth, i10 - (this.activeIndicatorMarginHorizontal * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.activeIndicatorView.getLayoutParams();
        layoutParams.height = k() ? iMin : this.activeIndicatorDesiredHeight;
        layoutParams.width = iMin;
        this.activeIndicatorView.setLayoutParams(layoutParams);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void e(@NonNull MenuItemImpl menuItemImpl, int i10) {
        this.itemData = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        CharSequence tooltipText = !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle();
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.a(this, tooltipText);
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        this.initialized = true;
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.activeIndicatorView;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.labelGroup.getLayoutParams();
        return getSuggestedIconHeight() + layoutParams.topMargin + this.labelGroup.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.labelGroup.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.labelGroup.getMeasuredWidth() + layoutParams.rightMargin);
    }

    void n() {
        t(this.icon);
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    public int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.itemData.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.activeIndicatorView;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
    }

    public void setActiveIndicatorEnabled(boolean z6) {
        this.activeIndicatorEnabled = z6;
        View view = this.activeIndicatorView;
        if (view != null) {
            view.setVisibility(z6 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i10) {
        this.activeIndicatorDesiredHeight = i10;
        v(getWidth());
    }

    public void setActiveIndicatorMarginHorizontal(@Px int i10) {
        this.activeIndicatorMarginHorizontal = i10;
        v(getWidth());
    }

    public void setActiveIndicatorWidth(int i10) {
        this.activeIndicatorDesiredWidth = i10;
        v(getWidth());
    }

    void setBadge(@NonNull com.google.android.material.badge.a aVar) {
        if (this.badgeDrawable == aVar) {
            return;
        }
        if (j() && this.icon != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            t(this.icon);
        }
        this.badgeDrawable = aVar;
        ImageView imageView = this.icon;
        if (imageView != null) {
            s(imageView);
        }
    }

    public void setChecked(boolean z6) {
        TextView textView = this.largeLabel;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.largeLabel;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.smallLabel;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.smallLabel;
        textView4.setPivotY(textView4.getBaseline());
        l(z6 ? 1.0f : 0.0f);
        int i10 = this.labelVisibilityMode;
        if (i10 != -1) {
            if (i10 == 0) {
                if (z6) {
                    r(getIconOrContainer(), this.itemPaddingTop, 49);
                    x(this.labelGroup, this.itemPaddingBottom);
                    this.largeLabel.setVisibility(0);
                } else {
                    r(getIconOrContainer(), this.itemPaddingTop, 17);
                    x(this.labelGroup, 0);
                    this.largeLabel.setVisibility(4);
                }
                this.smallLabel.setVisibility(4);
            } else if (i10 == 1) {
                x(this.labelGroup, this.itemPaddingBottom);
                if (z6) {
                    r(getIconOrContainer(), (int) (this.itemPaddingTop + this.shiftAmount), 49);
                    q(this.largeLabel, 1.0f, 1.0f, 0);
                    TextView textView5 = this.smallLabel;
                    float f = this.scaleUpFactor;
                    q(textView5, f, f, 4);
                } else {
                    r(getIconOrContainer(), this.itemPaddingTop, 49);
                    TextView textView6 = this.largeLabel;
                    float f6 = this.scaleDownFactor;
                    q(textView6, f6, f6, 4);
                    q(this.smallLabel, 1.0f, 1.0f, 0);
                }
            } else if (i10 == 2) {
                r(getIconOrContainer(), this.itemPaddingTop, 17);
                this.largeLabel.setVisibility(8);
                this.smallLabel.setVisibility(8);
            }
        } else if (this.isShifting) {
            if (z6) {
                r(getIconOrContainer(), this.itemPaddingTop, 49);
                x(this.labelGroup, this.itemPaddingBottom);
                this.largeLabel.setVisibility(0);
            } else {
                r(getIconOrContainer(), this.itemPaddingTop, 17);
                x(this.labelGroup, 0);
                this.largeLabel.setVisibility(4);
            }
            this.smallLabel.setVisibility(4);
        } else {
            x(this.labelGroup, this.itemPaddingBottom);
            if (z6) {
                r(getIconOrContainer(), (int) (this.itemPaddingTop + this.shiftAmount), 49);
                q(this.largeLabel, 1.0f, 1.0f, 0);
                TextView textView7 = this.smallLabel;
                float f7 = this.scaleUpFactor;
                q(textView7, f7, f7, 4);
            } else {
                r(getIconOrContainer(), this.itemPaddingTop, 49);
                TextView textView8 = this.largeLabel;
                float f10 = this.scaleDownFactor;
                q(textView8, f10, f10, 4);
                q(this.smallLabel, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z6);
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.originalIconDrawable) {
            return;
        }
        this.originalIconDrawable = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.r(drawable).mutate();
            this.wrappedIconDrawable = drawable;
            ColorStateList colorStateList = this.iconTint;
            if (colorStateList != null) {
                DrawableCompat.o(drawable, colorStateList);
            }
        }
        this.icon.setImageDrawable(drawable);
    }

    public void setIconSize(int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.icon.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i10;
        this.icon.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.iconTint = colorStateList;
        if (this.itemData == null || (drawable = this.wrappedIconDrawable) == null) {
            return;
        }
        DrawableCompat.o(drawable, colorStateList);
        this.wrappedIconDrawable.invalidateSelf();
    }

    public void setItemPaddingBottom(int i10) {
        if (this.itemPaddingBottom != i10) {
            this.itemPaddingBottom = i10;
            m();
        }
    }

    public void setItemPaddingTop(int i10) {
        if (this.itemPaddingTop != i10) {
            this.itemPaddingTop = i10;
            m();
        }
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.labelVisibilityMode != i10) {
            this.labelVisibilityMode = i10;
            w();
            v(getWidth());
            m();
        }
    }

    public void setShifting(boolean z6) {
        if (this.isShifting != z6) {
            this.isShifting = z6;
            m();
        }
    }

    public void setTextAppearanceActive(@StyleRes int i10) {
        p(this.largeLabel, i10);
        g(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i10) {
        p(this.smallLabel, i10);
        g(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.smallLabel.setTextColor(colorStateList);
            this.largeLabel.setTextColor(colorStateList);
        }
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.smallLabel.setText(charSequence);
        this.largeLabel.setText(charSequence);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.itemData;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.itemData.getTooltipText();
        }
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.a(this, charSequence);
        }
    }

    static {
        ViewOnLayoutChangeListenerC0206a viewOnLayoutChangeListenerC0206a = null;
        ACTIVE_INDICATOR_LABELED_TRANSFORM = new d(viewOnLayoutChangeListenerC0206a);
        ACTIVE_INDICATOR_UNLABELED_TRANSFORM = new e(viewOnLayoutChangeListenerC0206a);
    }

    public a(@NonNull Context context) {
        super(context);
        this.initialized = false;
        this.itemPosition = -1;
        this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
        this.activeIndicatorProgress = 0.0f;
        this.activeIndicatorEnabled = false;
        this.activeIndicatorDesiredWidth = 0;
        this.activeIndicatorDesiredHeight = 0;
        this.activeIndicatorResizeable = false;
        this.activeIndicatorMarginHorizontal = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.iconContainer = (FrameLayout) findViewById(f.navigation_bar_item_icon_container);
        this.activeIndicatorView = findViewById(f.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(f.navigation_bar_item_icon_view);
        this.icon = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(f.navigation_bar_item_labels_group);
        this.labelGroup = viewGroup;
        TextView textView = (TextView) findViewById(f.navigation_bar_item_small_label_view);
        this.smallLabel = textView;
        TextView textView2 = (TextView) findViewById(f.navigation_bar_item_large_label_view);
        this.largeLabel = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.itemPaddingTop = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.itemPaddingBottom = viewGroup.getPaddingBottom();
        ViewCompat.F0(textView, 2);
        ViewCompat.F0(textView2, 2);
        setFocusable(true);
        g(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0206a());
        }
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i10 = 0;
        for (int i11 = 0; i11 < iIndexOfChild; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof a) && childAt.getVisibility() == 0) {
                i10++;
            }
        }
        return i10;
    }

    private static void p(TextView textView, @StyleRes int i10) {
        TextViewCompat.q(textView, i10);
        int iH = com.google.android.material.resources.c.h(textView.getContext(), i10, 0);
        if (iH != 0) {
            textView.setTextSize(0, iH);
        }
    }

    private static void q(@NonNull View view, float f, float f6, int i10) {
        view.setScaleX(f);
        view.setScaleY(f6);
        view.setVisibility(i10);
    }

    private static void r(@NonNull View view, int i10, int i11) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i10;
        layoutParams.bottomMargin = i10;
        layoutParams.gravity = i11;
        view.setLayoutParams(layoutParams);
    }

    private void s(@Nullable View view) {
        if (j() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.c.a(this.badgeDrawable, view, i(view));
        }
    }

    private void t(@Nullable View view) {
        if (!j()) {
            return;
        }
        if (view != null) {
            setClipChildren(true);
            setClipToPadding(true);
            com.google.android.material.badge.c.d(this.badgeDrawable, view);
        }
        this.badgeDrawable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(View view) {
        if (!j()) {
            return;
        }
        com.google.android.material.badge.c.e(this.badgeDrawable, view, i(view));
    }

    private void w() {
        if (k()) {
            this.activeIndicatorTransform = ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
        } else {
            this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
        }
    }

    private static void x(@NonNull View view, int i10) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
    }

    void h() {
        n();
        this.itemData = null;
        this.activeIndicatorProgress = 0.0f;
        this.initialized = false;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        com.google.android.material.badge.a aVar = this.badgeDrawable;
        if (aVar != null && aVar.isVisible()) {
            CharSequence title = this.itemData.getTitle();
            if (!TextUtils.isEmpty(this.itemData.getContentDescription())) {
                title = this.itemData.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.badgeDrawable.f()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatR0 = AccessibilityNodeInfoCompat.R0(accessibilityNodeInfo);
        accessibilityNodeInfoCompatR0.h0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatR0.f0(false);
            accessibilityNodeInfoCompatR0.V(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatR0.D0(getResources().getString(j.item_view_role_description));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new b(i10));
    }

    public void setCheckable(boolean z6) {
        refreshDrawableState();
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
        this.smallLabel.setEnabled(z6);
        this.largeLabel.setEnabled(z6);
        this.icon.setEnabled(z6);
        if (z6) {
            ViewCompat.P0(this, PointerIconCompat.b(getContext(), 1002));
        } else {
            ViewCompat.P0(this, null);
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        ViewCompat.y0(this, drawable);
    }
}
