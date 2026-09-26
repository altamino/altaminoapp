package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes9.dex */
public final class o {
    public static final int TRANSFORMATION_CEA608_CDAT = 1;
    public static final int TRANSFORMATION_NONE = 0;
    public final long durationUs;

    @Nullable
    public final long[] editListDurations;

    @Nullable
    public final long[] editListMediaTimes;
    public final a2 format;
    public final int id;
    public final long movieTimescale;
    public final int nalUnitLengthFieldLength;

    @Nullable
    private final p[] sampleDescriptionEncryptionBoxes;
    public final int sampleTransformation;
    public final long timescale;
    public final int type;

    @Nullable
    public p a(int i10) {
        p[] pVarArr = this.sampleDescriptionEncryptionBoxes;
        if (pVarArr == null) {
            return null;
        }
        return pVarArr[i10];
    }

    public o(int i10, int i11, long j6, long j10, long j11, a2 a2Var, int i12, @Nullable p[] pVarArr, int i13, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.id = i10;
        this.type = i11;
        this.timescale = j6;
        this.movieTimescale = j10;
        this.durationUs = j11;
        this.format = a2Var;
        this.sampleTransformation = i12;
        this.sampleDescriptionEncryptionBoxes = pVarArr;
        this.nalUnitLengthFieldLength = i13;
        this.editListDurations = jArr;
        this.editListMediaTimes = jArr2;
    }
}
