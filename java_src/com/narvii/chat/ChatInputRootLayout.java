package com.narvii.chat;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.LinearLayout;

/* loaded from: classes2.dex */
public class ChatInputRootLayout extends LinearLayout implements View.OnClickListener {
    private float initialMotionX;
    private float initialMotionY;
    private boolean isRequestDisallowParentInterceptProcessed;
    private float touchSlop;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    public ChatInputRootLayout(Context context) {
        super(context);
        init();
    }

    public ChatInputRootLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ChatInputRootLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @TargetApi(21)
    public ChatInputRootLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void init() {
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        setOnClickListener(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getAction()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L62
            if (r0 == r2) goto L52
            r3 = 2
            if (r0 == r3) goto L12
            r2 = 3
            if (r0 == r2) goto L52
            goto L99
        L12:
            float r0 = r7.getX()
            float r3 = r6.initialMotionX
            float r0 = r0 - r3
            float r0 = java.lang.Math.abs(r0)
            float r3 = r7.getY()
            float r4 = r6.initialMotionY
            float r3 = r3 - r4
            float r3 = java.lang.Math.abs(r3)
            float r4 = r6.touchSlop
            int r5 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r5 >= 0) goto L32
            int r4 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r4 < 0) goto L99
        L32:
            android.view.ViewParent r4 = r6.getParent()
            if (r4 == 0) goto L99
            boolean r4 = r6.isRequestDisallowParentInterceptProcessed
            if (r4 != 0) goto L99
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 <= 0) goto L48
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            goto L4f
        L48:
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
        L4f:
            r6.isRequestDisallowParentInterceptProcessed = r2
            goto L99
        L52:
            android.view.ViewParent r0 = r6.getParent()
            if (r0 == 0) goto L5f
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
        L5f:
            r6.isRequestDisallowParentInterceptProcessed = r1
            goto L99
        L62:
            float r0 = r7.getX()
            r6.initialMotionX = r0
            float r0 = r7.getY()
            r6.initialMotionY = r0
            android.view.ViewParent r0 = r6.getParent()
            if (r0 == 0) goto L99
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            float r0 = r6.initialMotionX
            float r3 = r6.touchSlop
            r4 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 * r4
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 <= 0) goto L96
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r5 = r6.touchSlop
            float r5 = r5 * r4
            float r3 = r3 - r5
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L96
            goto L97
        L96:
            r2 = 0
        L97:
            r6.isRequestDisallowParentInterceptProcessed = r2
        L99:
            boolean r1 = super.dispatchTouchEvent(r7)     // Catch: java.lang.Exception -> L9d
        L9d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.ChatInputRootLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }
}
