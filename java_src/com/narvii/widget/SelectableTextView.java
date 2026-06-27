package com.narvii.widget;

import android.content.Context;
import android.os.SystemClock;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.TextView;
import com.narvii.app.NVActivity;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class SelectableTextView extends TextView {
    boolean block;
    MotionEvent ev;
    GestureDetector gestureDetector;
    private final GestureDetector.SimpleOnGestureListener gestureListener;
    boolean hasSavedMovementMethod;
    boolean isSelectionChanging;
    MovementMethod savedMovementMethod;

    protected boolean onSingleTapUp() {
        return false;
    }

    public SelectableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.SelectableTextView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(final MotionEvent motionEvent) {
                Utils.post(new Runnable() { // from class: com.narvii.widget.SelectableTextView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if ((SelectableTextView.this.getContext() instanceof NVActivity) && ((NVActivity) SelectableTextView.this.getContext()).hasActionBar()) {
                            MotionEvent motionEvent2 = SelectableTextView.this.ev;
                            if (motionEvent2 != null) {
                                motionEvent2.setAction(3);
                                SelectableTextView selectableTextView = SelectableTextView.this;
                                selectableTextView.onTouchEvent(selectableTextView.ev);
                                SelectableTextView.this.ev.recycle();
                                SelectableTextView.this.ev = null;
                            }
                            SelectableTextView selectableTextView2 = SelectableTextView.this;
                            selectableTextView2.block = true;
                            selectableTextView2.savedMovementMethod = selectableTextView2.getMovementMethod();
                            SelectableTextView selectableTextView3 = SelectableTextView.this;
                            selectableTextView3.hasSavedMovementMethod = true;
                            try {
                                selectableTextView3.setTextIsSelectable(true);
                            } catch (Throwable th) {
                                Log.e("fail when long press text to select", th);
                            }
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, motionEvent.getX(), motionEvent.getY(), 0);
                            SelectableTextView.this.onTouchEvent(motionEventObtain);
                            motionEventObtain.setAction(1);
                            SelectableTextView.this.onTouchEvent(motionEventObtain);
                            motionEventObtain.setAction(0);
                            SelectableTextView.this.onTouchEvent(motionEventObtain);
                            motionEventObtain.setAction(1);
                            SelectableTextView.this.onTouchEvent(motionEventObtain);
                        }
                    }
                });
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return SelectableTextView.this.onSingleTapUp();
            }
        };
        this.gestureDetector = new GestureDetector(context, this.gestureListener);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            MotionEvent motionEvent2 = this.ev;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.ev = MotionEvent.obtain(motionEvent);
        }
        this.gestureDetector.onTouchEvent(motionEvent);
        if (this.block) {
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.block = false;
            }
            return false;
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        if (this.isSelectionChanging) {
            return;
        }
        this.isSelectionChanging = true;
        super.onSelectionChanged(i, i2);
        this.isSelectionChanging = false;
        if (this.block || i != i2) {
            return;
        }
        Utils.post(new Runnable() { // from class: com.narvii.widget.SelectableTextView.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SelectableTextView.this.setTextIsSelectable(false);
                    if (SelectableTextView.this.hasSavedMovementMethod) {
                        SelectableTextView.this.isSelectionChanging = true;
                        SelectableTextView.this.setMovementMethod(SelectableTextView.this.savedMovementMethod);
                        SelectableTextView.this.hasSavedMovementMethod = false;
                        SelectableTextView.this.savedMovementMethod = null;
                    }
                } catch (Throwable unused) {
                }
                SelectableTextView.this.isSelectionChanging = false;
            }
        });
    }
}
