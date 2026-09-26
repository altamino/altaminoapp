package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.c0;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
final class q {
    public long atomPosition;
    public long auxiliaryDataPosition;
    public long dataPosition;
    public boolean definesEncryptionData;
    public c header;
    public long nextFragmentDecodeTime;
    public boolean nextFragmentDecodeTimeIncludesMoov;
    public int sampleCount;
    public boolean sampleEncryptionDataNeedsFill;

    @Nullable
    public p trackEncryptionBox;
    public int trunCount;
    public long[] trunDataPosition = new long[0];
    public int[] trunLength = new int[0];
    public int[] sampleSizeTable = new int[0];
    public long[] samplePresentationTimesUs = new long[0];
    public boolean[] sampleIsSyncFrameTable = new boolean[0];
    public boolean[] sampleHasSubsampleEncryptionTable = new boolean[0];
    public final c0 sampleEncryptionData = new c0();

    public void f() {
        this.trunCount = 0;
        this.nextFragmentDecodeTime = 0L;
        this.nextFragmentDecodeTimeIncludesMoov = false;
        this.definesEncryptionData = false;
        this.sampleEncryptionDataNeedsFill = false;
        this.trackEncryptionBox = null;
    }

    public void a(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        mVar.readFully(this.sampleEncryptionData.d(), 0, this.sampleEncryptionData.f());
        this.sampleEncryptionData.P(0);
        this.sampleEncryptionDataNeedsFill = false;
    }

    public void b(c0 c0Var) {
        c0Var.j(this.sampleEncryptionData.d(), 0, this.sampleEncryptionData.f());
        this.sampleEncryptionData.P(0);
        this.sampleEncryptionDataNeedsFill = false;
    }

    public long c(int i10) {
        return this.samplePresentationTimesUs[i10];
    }

    public void d(int i10) {
        this.sampleEncryptionData.L(i10);
        this.definesEncryptionData = true;
        this.sampleEncryptionDataNeedsFill = true;
    }

    public void e(int i10, int i11) {
        this.trunCount = i10;
        this.sampleCount = i11;
        if (this.trunLength.length < i10) {
            this.trunDataPosition = new long[i10];
            this.trunLength = new int[i10];
        }
        if (this.sampleSizeTable.length < i11) {
            int i12 = (i11 * 125) / 100;
            this.sampleSizeTable = new int[i12];
            this.samplePresentationTimesUs = new long[i12];
            this.sampleIsSyncFrameTable = new boolean[i12];
            this.sampleHasSubsampleEncryptionTable = new boolean[i12];
        }
    }

    public boolean g(int i10) {
        return this.definesEncryptionData && this.sampleHasSubsampleEncryptionTable[i10];
    }
}
