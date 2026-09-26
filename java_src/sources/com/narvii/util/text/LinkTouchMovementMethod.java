package com.narvii.util.text;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes8.dex */
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
            LinkTouchMovementMethod linkTouchMovementMethod = new LinkTouchMovementMethod();
            instance2 = linkTouchMovementMethod;
            linkTouchMovementMethod.keepSelectionAtBeginning = true;
        }
        return instance2;
    }

    private TouchableSpan getPressedSpan(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        char cCharAt;
        int x6 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        int totalPaddingLeft = x6 - textView.getTotalPaddingLeft();
        int totalPaddingTop = y6 - textView.getTotalPaddingTop();
        int scrollX = totalPaddingLeft + textView.getScrollX();
        int scrollY = totalPaddingTop + textView.getScrollY();
        Layout layout = textView.getLayout();
        int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
        if (offsetForHorizontal >= spannable.length()) {
            cCharAt = '\n';
        } else {
            cCharAt = spannable.charAt(offsetForHorizontal);
        }
        if (cCharAt == '\n' || cCharAt == '\r') {
            return null;
        }
        TouchableSpan[] touchableSpanArr = (TouchableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, TouchableSpan.class);
        if (touchableSpanArr.length <= 0) {
            return null;
        }
        return touchableSpanArr[0];
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            TouchableSpan pressedSpan = getPressedSpan(textView, spannable, motionEvent);
            this.mPressedSpan = pressedSpan;
            if (pressedSpan != null) {
                pressedSpan.setPressed(true);
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
            TouchableSpan pressedSpan2 = getPressedSpan(textView, spannable, motionEvent);
            TouchableSpan touchableSpan = this.mPressedSpan;
            if (touchableSpan != null && pressedSpan2 != touchableSpan) {
                touchableSpan.setPressed(false);
                this.mPressedSpan = null;
                Selection.removeSelection(spannable);
            }
        } else {
            TouchableSpan touchableSpan2 = this.mPressedSpan;
            if (touchableSpan2 != null) {
                touchableSpan2.setPressed(false);
                super.onTouchEvent(textView, spannable, motionEvent);
            }
            this.mPressedSpan = null;
            Selection.removeSelection(spannable);
        }
        return true;
    }
}
