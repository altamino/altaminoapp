package com.narvii.scene.view;

import com.narvii.app.NVApplication;
import com.narvii.util.Utils;

/* compiled from: BalanceSeekBar.kt */
/* loaded from: classes3.dex */
public final class BalanceSeekBarKt {
    public static final int toPx(int i) {
        return Utils.dpToPxInt(NVApplication.instance(), i);
    }

    public static final int toPx(float f) {
        return Utils.dpToPxInt(NVApplication.instance(), f);
    }
}
