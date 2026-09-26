package com.narvii.util;

import android.view.View;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class OnPreventRepeatedClickListener implements View.OnClickListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MIN_CLICK_DELAY_TIME = 1000;
    private final int delayTime;
    private long lastClickTime;

    @Nullable
    private final View.OnClickListener onClickListener;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public OnPreventRepeatedClickListener(@Nullable View.OnClickListener onClickListener, int i10) {
        this.onClickListener = onClickListener;
        this.delayTime = i10;
    }

    public /* synthetic */ OnPreventRepeatedClickListener(View.OnClickListener onClickListener, int i10, int i11, k kVar) {
        this(onClickListener, (i11 & 2) != 0 ? 1000 : i10);
    }

    public OnPreventRepeatedClickListener(@Nullable View.OnClickListener onClickListener) {
        this(onClickListener, 1000);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        if (System.currentTimeMillis() - this.lastClickTime >= this.delayTime) {
            this.lastClickTime = System.currentTimeMillis();
            View.OnClickListener onClickListener = this.onClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }
}
