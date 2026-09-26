package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class y {
    public static final int NO_AUX_EFFECT_ID = 0;
    public final int effectId;
    public final float sendLevel;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y.class != obj.getClass()) {
            return false;
        }
        y yVar = (y) obj;
        return this.effectId == yVar.effectId && Float.compare(yVar.sendLevel, this.sendLevel) == 0;
    }

    public int hashCode() {
        return ((527 + this.effectId) * 31) + Float.floatToIntBits(this.sendLevel);
    }

    public y(int i10, float f) {
        this.effectId = i10;
        this.sendLevel = f;
    }
}
