package com.google.android.material.timepicker;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import d3.d;
import d3.f;
import d3.h;
import d3.k;
import d3.l;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
class ClockFaceView extends c implements ClockHandView.d {
    private static final float EPSILON = 0.001f;
    private static final int INITIAL_CAPACITY = 12;
    private static final String VALUE_PLACEHOLDER = "";
    private final int clockHandPadding;
    private final ClockHandView clockHandView;
    private final int clockSize;
    private float currentHandRotation;
    private final int[] gradientColors;
    private final float[] gradientPositions;
    private final int minimumHeight;
    private final int minimumWidth;
    private final RectF scratch;
    private final ColorStateList textColor;
    private final SparseArray<TextView> textViewPool;
    private final Rect textViewRect;
    private final AccessibilityDelegateCompat valueAccessibilityDelegate;
    private String[] values;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.d(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.clockHandView.g()) - ClockFaceView.this.clockHandPadding);
            return true;
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 16) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            float x6 = view.getX() + (view.getWidth() / 2.0f);
            float height = (view.getHeight() / 2.0f) + view.getY();
            ClockFaceView.this.clockHandView.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, x6, height, 0));
            ClockFaceView.this.clockHandView.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, x6, height, 0));
            return true;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int iIntValue = ((Integer) view.getTag(f.material_value_index)).intValue();
            if (iIntValue > 0) {
                accessibilityNodeInfoCompat.N0((View) ClockFaceView.this.textViewPool.get(iIntValue - 1));
            }
            accessibilityNodeInfoCompat.h0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(0, 1, iIntValue, 1, false, view.isSelected()));
            accessibilityNodeInfoCompat.f0(true);
            accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
    }

    public ClockFaceView(@NonNull Context context) {
        this(context, null);
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.materialClockStyle);
    }

    private void k() {
        RectF rectFD = this.clockHandView.d();
        for (int i10 = 0; i10 < this.textViewPool.size(); i10++) {
            TextView textView = this.textViewPool.get(i10);
            if (textView != null) {
                textView.getDrawingRect(this.textViewRect);
                offsetDescendantRectToMyCoords(textView, this.textViewRect);
                textView.setSelected(rectFD.contains(this.textViewRect.centerX(), this.textViewRect.centerY()));
                textView.getPaint().setShader(l(rectFD, this.textViewRect, textView));
                textView.invalidate();
            }
        }
    }

    @Nullable
    private RadialGradient l(RectF rectF, Rect rect, TextView textView) {
        this.scratch.set(rect);
        this.scratch.offset(textView.getPaddingLeft(), textView.getPaddingTop());
        if (RectF.intersects(rectF, this.scratch)) {
            return new RadialGradient(rectF.centerX() - this.scratch.left, rectF.centerY() - this.scratch.top, rectF.width() * 0.5f, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP);
        }
        return null;
    }

    @Override // com.google.android.material.timepicker.ClockHandView.d
    public void a(float f, boolean z6) {
        if (Math.abs(this.currentHandRotation - f) > EPSILON) {
            this.currentHandRotation = f;
            k();
        }
    }

    public void n(String[] strArr, @StringRes int i10) {
        this.values = strArr;
        o(i10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.textViewRect = new Rect();
        this.scratch = new RectF();
        this.textViewPool = new SparseArray<>();
        this.gradientPositions = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.ClockFaceView, i10, k.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListA = com.google.android.material.resources.c.a(context, typedArrayObtainStyledAttributes, l.ClockFaceView_clockNumberTextColor);
        this.textColor = colorStateListA;
        LayoutInflater.from(context).inflate(h.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(f.material_clock_hand);
        this.clockHandView = clockHandView;
        this.clockHandPadding = resources.getDimensionPixelSize(d.material_clock_hand_padding);
        int colorForState = colorStateListA.getColorForState(new int[]{R.attr.state_selected}, colorStateListA.getDefaultColor());
        this.gradientColors = new int[]{colorForState, colorForState, colorStateListA.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = AppCompatResources.a(context, d3.c.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListA2 = com.google.android.material.resources.c.a(context, typedArrayObtainStyledAttributes, l.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListA2 != null ? colorStateListA2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.valueAccessibilityDelegate = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        n(strArr, 0);
        this.minimumHeight = resources.getDimensionPixelSize(d.material_time_picker_minimum_screen_height);
        this.minimumWidth = resources.getDimensionPixelSize(d.material_time_picker_minimum_screen_width);
        this.clockSize = resources.getDimensionPixelSize(d.material_clock_size);
    }

    private static float m(float f, float f6, float f7) {
        return Math.max(Math.max(f, f6), f7);
    }

    private void o(@StringRes int i10) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.textViewPool.size();
        for (int i11 = 0; i11 < Math.max(this.values.length, size); i11++) {
            TextView textView = this.textViewPool.get(i11);
            if (i11 >= this.values.length) {
                removeView(textView);
                this.textViewPool.remove(i11);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(h.material_clockface_textview, (ViewGroup) this, false);
                    this.textViewPool.put(i11, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.values[i11]);
                textView.setTag(f.material_value_index, Integer.valueOf(i11));
                ViewCompat.u0(textView, this.valueAccessibilityDelegate);
                textView.setTextColor(this.textColor);
                if (i10 != 0) {
                    textView.setContentDescription(getResources().getString(i10, this.values[i11]));
                }
            }
        }
    }

    @Override // com.google.android.material.timepicker.c
    public void d(int i10) {
        if (i10 != c()) {
            super.d(i10);
            this.clockHandView.j(c());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.R0(accessibilityNodeInfo).g0(AccessibilityNodeInfoCompat.CollectionInfoCompat.b(1, this.values.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        k();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iM = (int) (this.clockSize / m(this.minimumHeight / displayMetrics.heightPixels, this.minimumWidth / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iM, 1073741824);
        setMeasuredDimension(iM, iM);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }
}
