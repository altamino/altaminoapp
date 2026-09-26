package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import d3.h;

/* JADX INFO: loaded from: classes7.dex */
class TimePickerView extends ConstraintLayout {
    static final String GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME = "android.view.View";
    private final ClockFaceView clockFace;
    private final ClockHandView clockHandView;
    private final Chip hourView;
    private final Chip minuteView;
    private e onDoubleTapListener;
    private f onPeriodChangeListener;
    private g onSelectionChangeListener;
    private final View.OnClickListener selectionListener;
    private final MaterialButtonToggleGroup toggle;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TimePickerView.b(TimePickerView.this);
        }
    }

    class b implements MaterialButtonToggleGroup.d {
        b() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z6) {
            TimePickerView.c(TimePickerView.this);
        }
    }

    class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            TimePickerView.d(TimePickerView.this);
            return false;
        }
    }

    class d implements View.OnTouchListener {
        final /* synthetic */ GestureDetector val$gestureDetector;

        d(GestureDetector gestureDetector) {
            this.val$gestureDetector = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.val$gestureDetector.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface e {
    }

    interface f {
    }

    interface g {
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void e() {
        Chip chip = this.minuteView;
        int i10 = d3.f.selection_type;
        chip.setTag(i10, 12);
        this.hourView.setTag(i10, 10);
        this.minuteView.setOnClickListener(this.selectionListener);
        this.hourView.setOnClickListener(this.selectionListener);
        this.minuteView.setAccessibilityClassName("android.view.View");
        this.hourView.setAccessibilityClassName("android.view.View");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void f() {
        d dVar = new d(new GestureDetector(getContext(), new c()));
        this.minuteView.setOnTouchListener(dVar);
        this.hourView.setOnTouchListener(dVar);
    }

    private void g() {
        if (this.toggle.getVisibility() == 0) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.p(this);
            constraintSet.n(d3.f.material_clock_display, ViewCompat.D(this) == 0 ? 2 : 1);
            constraintSet.i(this);
        }
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.selectionListener = new a();
        LayoutInflater.from(context).inflate(h.material_timepicker, this);
        this.clockFace = (ClockFaceView) findViewById(d3.f.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(d3.f.material_clock_period_toggle);
        this.toggle = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new b());
        this.minuteView = (Chip) findViewById(d3.f.material_minute_tv);
        this.hourView = (Chip) findViewById(d3.f.material_hour_tv);
        this.clockHandView = (ClockHandView) findViewById(d3.f.material_clock_hand);
        f();
        e();
    }

    static /* synthetic */ g b(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    static /* synthetic */ f c(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    static /* synthetic */ e d(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        g();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            g();
        }
    }
}
