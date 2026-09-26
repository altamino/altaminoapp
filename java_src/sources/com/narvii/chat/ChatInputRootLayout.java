package com.narvii.chat;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class ChatInputRootLayout extends LinearLayout implements View.OnClickListener {
    private float initialMotionX;
    private float initialMotionY;
    private boolean isRequestDisallowParentInterceptProcessed;
    private float touchSlop;

    public ChatInputRootLayout(Context context) {
        super(context);
        init();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    public ChatInputRootLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        setOnClickListener(this);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0052  */
    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z6 = true;
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        if (getParent() != null) {
                            getParent().requestDisallowInterceptTouchEvent(false);
                        }
                        this.isRequestDisallowParentInterceptProcessed = false;
                    }
                } else {
                    float fAbs = Math.abs(motionEvent.getX() - this.initialMotionX);
                    float fAbs2 = Math.abs(motionEvent.getY() - this.initialMotionY);
                    float f = this.touchSlop;
                    if ((fAbs >= f || fAbs2 >= f) && getParent() != null && !this.isRequestDisallowParentInterceptProcessed) {
                        if (fAbs2 > fAbs) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        } else {
                            getParent().requestDisallowInterceptTouchEvent(false);
                        }
                        this.isRequestDisallowParentInterceptProcessed = true;
                    }
                }
            } else {
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
                this.isRequestDisallowParentInterceptProcessed = false;
            }
        } else {
            this.initialMotionX = motionEvent.getX();
            this.initialMotionY = motionEvent.getY();
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
                float f6 = this.initialMotionX;
                if (f6 <= this.touchSlop * 2.0f || f6 >= getWidth() - (this.touchSlop * 2.0f)) {
                    z6 = false;
                }
                this.isRequestDisallowParentInterceptProcessed = z6;
            }
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    public ChatInputRootLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init();
    }

    @TargetApi(21)
    public ChatInputRootLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        init();
    }
}
