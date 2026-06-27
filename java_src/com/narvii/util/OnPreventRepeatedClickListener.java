package com.narvii.util;

import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: OnPreventRepeatedClickListener.kt */
/* loaded from: classes3.dex */
public class OnPreventRepeatedClickListener implements View.OnClickListener {
    public static final Companion Companion = new Companion(null);
    public static final int MIN_CLICK_DELAY_TIME = 1000;
    private final int delayTime;
    private long lastClickTime;
    private final View.OnClickListener onClickListener;

    public OnPreventRepeatedClickListener(View.OnClickListener onClickListener, int i) {
        this.onClickListener = onClickListener;
        this.delayTime = i;
    }

    public /* synthetic */ OnPreventRepeatedClickListener(View.OnClickListener onClickListener, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(onClickListener, (i2 & 2) != 0 ? 1000 : i);
    }

    /* compiled from: OnPreventRepeatedClickListener.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public OnPreventRepeatedClickListener(View.OnClickListener onClickListener) {
        this(onClickListener, 1000);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (System.currentTimeMillis() - this.lastClickTime >= this.delayTime) {
            this.lastClickTime = System.currentTimeMillis();
            View.OnClickListener onClickListener = this.onClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }
}
