package com.narvii.scene.view;

import com.narvii.app.NVApplication;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes8.dex */
public final class BalanceSeekBarKt {
    public static final int toPx(int i10) {
        return Utils.dpToPxInt(NVApplication.instance(), i10);
    }

    public static final int toPx(float f) {
        return Utils.dpToPxInt(NVApplication.instance(), f);
    }
}
