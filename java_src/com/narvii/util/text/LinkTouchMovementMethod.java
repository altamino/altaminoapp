package com.narvii.util.text;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;

/* loaded from: classes3.dex */
public class LinkTouchMovementMethod extends LinkMovementMethod {
    private static LinkTouchMovementMethod instance;
    private static LinkTouchMovementMethod instance2;
    private boolean keepSelectionAtBeginning = false;
    private TouchableSpan mPressedSpan;

    public static LinkTouchMovementMethod getInstance() {
        if (instance == null) {
            instance = new LinkTouchMovementMethod();
        }
        return instance;
    }

    public static LinkTouchMovementMethod getInstanceIgnoreScroll() {
        if (instance2 == null) {
            instance2 = new LinkTouchMovementMethod();
            instance2.keepSelectionAtBeginning = true;
        }
        return instance2;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mPressedSpan = getPressedSpan(textView, spannable, motionEvent);
            TouchableSpan touchableSpan = this.mPressedSpan;
            if (touchableSpan != null) {
                touchableSpan.setPressed(true);
                if (this.keepSelectionAtBeginning) {
                    Selection.setSelection(spannable, 0, 0);
                } else {
                    Selection.setSelection(spannable, spannable.getSpanStart(this.mPressedSpan), spannable.getSpanEnd(this.mPressedSpan));
                }
                if (textView instanceof TextViewFixTouchConsume) {
                    ((TextViewFixTouchConsume) textView).hit = true;
                }
            }
        } else if (motionEvent.getAction() == 2) {
            TouchableSpan pressedSpan = getPressedSpan(textView, spannable, motionEvent);
            TouchableSpan touchableSpan2 = this.mPressedSpan;
            if (touchableSpan2 != null && pressedSpan != touchableSpan2) {
                touchableSpan2.setPressed(false);
                this.mPressedSpan = null;
                Selection.removeSelection(spannable);
            }
        } else {
            TouchableSpan touchableSpan3 = this.mPressedSpan;
            if (touchableSpan3 != null) {
                touchableSpan3.setPressed(false);
                super.onTouchEvent(textView, spannable, motionEvent);
            }
            this.mPressedSpan = null;
            Selection.removeSelection(spannable);
        }
        return true;
    }

    private TouchableSpan getPressedSpan(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int totalPaddingLeft = x - textView.getTotalPaddingLeft();
        int totalPaddingTop = y - textView.getTotalPaddingTop();
        int scrollX = totalPaddingLeft + textView.getScrollX();
        int scrollY = totalPaddingTop + textView.getScrollY();
        Layout layout = textView.getLayout();
        int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
        char cCharAt = offsetForHorizontal >= spannable.length() ? '\n' : spannable.charAt(offsetForHorizontal);
        if (cCharAt == '\n' || cCharAt == '\r') {
            return null;
        }
        TouchableSpan[] touchableSpanArr = (TouchableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, TouchableSpan.class);
        if (touchableSpanArr.length > 0) {
            return touchableSpanArr[0];
        }
        return null;
    }
}
