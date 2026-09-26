package com.google.android.exoplayer2.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.h0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import com.google.common.collect.a0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
final class j extends i {

    @Nullable
    private h0.b commentHeader;
    private int previousPacketBlockSize;
    private boolean seenFirstAudioPacket;

    @Nullable
    private h0.d vorbisIdHeader;

    @Nullable
    private a vorbisSetup;

    @VisibleForTesting
    static int p(byte b7, int i10, int i11) {
        return (b7 >> i11) & (255 >>> (8 - i10));
    }

    public static boolean r(c0 c0Var) {
        try {
            return h0.m(1, c0Var, true);
        } catch (v2 unused) {
            return false;
        }
    }

    static final class a {
        public final h0.b commentHeader;
        public final int iLogModes;
        public final h0.d idHeader;
        public final h0.c[] modes;
        public final byte[] setupHeaderData;

        public a(h0.d dVar, h0.b bVar, byte[] bArr, h0.c[] cVarArr, int i10) {
            this.idHeader = dVar;
            this.commentHeader = bVar;
            this.setupHeaderData = bArr;
            this.modes = cVarArr;
            this.iLogModes = i10;
        }
    }

    private static int o(byte b7, a aVar) {
        return !aVar.modes[p(b7, aVar.iLogModes, 1)].blockFlag ? aVar.idHeader.blockSize0 : aVar.idHeader.blockSize1;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected boolean i(c0 c0Var, long j6, i.b bVar) throws IOException {
        if (this.vorbisSetup != null) {
            com.google.android.exoplayer2.util.a.e(bVar.format);
            return false;
        }
        a aVarQ = q(c0Var);
        this.vorbisSetup = aVarQ;
        if (aVarQ == null) {
            return true;
        }
        h0.d dVar = aVarQ.idHeader;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.data);
        arrayList.add(aVarQ.setupHeaderData);
        bVar.format = new a2.b().e0("audio/vorbis").G(dVar.bitrateNominal).Z(dVar.bitrateMaximum).H(dVar.channels).f0(dVar.sampleRate).T(arrayList).X(h0.c(a0.u(aVarQ.commentHeader.comments))).E();
        return true;
    }

    @Nullable
    @VisibleForTesting
    a q(c0 c0Var) throws IOException {
        h0.d dVar = this.vorbisIdHeader;
        if (dVar == null) {
            this.vorbisIdHeader = h0.k(c0Var);
            return null;
        }
        h0.b bVar = this.commentHeader;
        if (bVar == null) {
            this.commentHeader = h0.i(c0Var);
            return null;
        }
        byte[] bArr = new byte[c0Var.f()];
        System.arraycopy(c0Var.d(), 0, bArr, 0, c0Var.f());
        h0.c[] cVarArrL = h0.l(c0Var, dVar.channels);
        return new a(dVar, bVar, bArr, cVarArrL, h0.a(cVarArrL.length - 1));
    }

    j() {
    }

    @VisibleForTesting
    static void n(c0 c0Var, long j6) {
        if (c0Var.b() < c0Var.f() + 4) {
            c0Var.M(Arrays.copyOf(c0Var.d(), c0Var.f() + 4));
        } else {
            c0Var.O(c0Var.f() + 4);
        }
        byte[] bArrD = c0Var.d();
        bArrD[c0Var.f() - 4] = (byte) (j6 & 255);
        bArrD[c0Var.f() - 3] = (byte) ((j6 >>> 8) & 255);
        bArrD[c0Var.f() - 2] = (byte) ((j6 >>> 16) & 255);
        bArrD[c0Var.f() - 1] = (byte) ((j6 >>> 24) & 255);
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected void e(long j6) {
        boolean z6;
        super.e(j6);
        int i10 = 0;
        if (j6 != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.seenFirstAudioPacket = z6;
        h0.d dVar = this.vorbisIdHeader;
        if (dVar != null) {
            i10 = dVar.blockSize0;
        }
        this.previousPacketBlockSize = i10;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected long f(c0 c0Var) {
        int i10 = 0;
        if ((c0Var.d()[0] & 1) == 1) {
            return -1L;
        }
        int iO = o(c0Var.d()[0], (a) com.google.android.exoplayer2.util.a.i(this.vorbisSetup));
        if (this.seenFirstAudioPacket) {
            i10 = (this.previousPacketBlockSize + iO) / 4;
        }
        long j6 = i10;
        n(c0Var, j6);
        this.seenFirstAudioPacket = true;
        this.previousPacketBlockSize = iO;
        return j6;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected void l(boolean z6) {
        super.l(z6);
        if (z6) {
            this.vorbisSetup = null;
            this.vorbisIdHeader = null;
            this.commentHeader = null;
        }
        this.previousPacketBlockSize = 0;
        this.seenFirstAudioPacket = false;
    }
}
