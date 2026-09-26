package androidx.media3.common;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class AuxEffectInfo {
    public static final int NO_AUX_EFFECT_ID = 0;
    public final int effectId;
    public final float sendLevel;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AuxEffectInfo.class != obj.getClass()) {
            return false;
        }
        AuxEffectInfo auxEffectInfo = (AuxEffectInfo) obj;
        return this.effectId == auxEffectInfo.effectId && Float.compare(auxEffectInfo.sendLevel, this.sendLevel) == 0;
    }

    public int hashCode() {
        return ((527 + this.effectId) * 31) + Float.floatToIntBits(this.sendLevel);
    }

    public AuxEffectInfo(int i10, float f) {
        this.effectId = i10;
        this.sendLevel = f;
    }
}
