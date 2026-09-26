package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
class t0 {
    private static final int INITIAL_SCRATCH_SIZE = 32;
    private final int allocationLength;
    private final com.google.android.exoplayer2.upstream.b allocator;
    private a firstAllocationNode;
    private a readAllocationNode;
    private final com.google.android.exoplayer2.util.c0 scratch;
    private long totalBytesWritten;
    private a writeAllocationNode;

    private static final class a implements com.google.android.exoplayer2.upstream.b.a {

        @Nullable
        public com.google.android.exoplayer2.upstream.a allocation;
        public long endPosition;

        @Nullable
        public a next;
        public long startPosition;

        public a b() {
            this.allocation = null;
            a aVar = this.next;
            this.next = null;
            return aVar;
        }

        public void c(com.google.android.exoplayer2.upstream.a aVar, a aVar2) {
            this.allocation = aVar;
            this.next = aVar2;
        }

        @Override // com.google.android.exoplayer2.upstream.b.a
        public com.google.android.exoplayer2.upstream.a a() {
            return (com.google.android.exoplayer2.upstream.a) com.google.android.exoplayer2.util.a.e(this.allocation);
        }

        public void d(long j6, int i10) {
            com.google.android.exoplayer2.util.a.g(this.allocation == null);
            this.startPosition = j6;
            this.endPosition = j6 + ((long) i10);
        }

        public int e(long j6) {
            return ((int) (j6 - this.startPosition)) + this.allocation.offset;
        }

        @Override // com.google.android.exoplayer2.upstream.b.a
        @Nullable
        public com.google.android.exoplayer2.upstream.b.a next() {
            a aVar = this.next;
            if (aVar == null || aVar.allocation == null) {
                return null;
            }
            return aVar;
        }

        public a(long j6, int i10) {
            d(j6, i10);
        }
    }

    public long d() {
        return this.totalBytesWritten;
    }

    public void n() {
        this.readAllocationNode = this.firstAllocationNode;
    }

    private void a(a aVar) {
        if (aVar.allocation == null) {
            return;
        }
        this.allocator.b(aVar);
        aVar.b();
    }

    private static a c(a aVar, long j6) {
        while (j6 >= aVar.endPosition) {
            aVar = aVar.next;
        }
        return aVar;
    }

    private void f(int i10) {
        long j6 = this.totalBytesWritten + ((long) i10);
        this.totalBytesWritten = j6;
        a aVar = this.writeAllocationNode;
        if (j6 == aVar.endPosition) {
            this.writeAllocationNode = aVar.next;
        }
    }

    private int g(int i10) {
        a aVar = this.writeAllocationNode;
        if (aVar.allocation == null) {
            aVar.c(this.allocator.allocate(), new a(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return Math.min(i10, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    private static a j(a aVar, com.google.android.exoplayer2.decoder.g gVar, v0.b bVar, com.google.android.exoplayer2.util.c0 c0Var) {
        long j6 = bVar.offset;
        int iJ = 1;
        c0Var.L(1);
        a aVarI = i(aVar, j6, c0Var.d(), 1);
        long j10 = j6 + 1;
        byte b7 = c0Var.d()[0];
        boolean z6 = (b7 & 128) != 0;
        int i10 = b7 & 127;
        com.google.android.exoplayer2.decoder.c cVar = gVar.cryptoInfo;
        byte[] bArr = cVar.iv;
        if (bArr == null) {
            cVar.iv = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarI2 = i(aVarI, j10, cVar.iv, i10);
        long j11 = j10 + ((long) i10);
        if (z6) {
            c0Var.L(2);
            aVarI2 = i(aVarI2, j11, c0Var.d(), 2);
            j11 += 2;
            iJ = c0Var.J();
        }
        int i11 = iJ;
        int[] iArr = cVar.numBytesOfClearData;
        if (iArr == null || iArr.length < i11) {
            iArr = new int[i11];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.numBytesOfEncryptedData;
        if (iArr3 == null || iArr3.length < i11) {
            iArr3 = new int[i11];
        }
        int[] iArr4 = iArr3;
        if (z6) {
            int i12 = i11 * 6;
            c0Var.L(i12);
            aVarI2 = i(aVarI2, j11, c0Var.d(), i12);
            j11 += (long) i12;
            c0Var.P(0);
            for (int i13 = 0; i13 < i11; i13++) {
                iArr2[i13] = c0Var.J();
                iArr4[i13] = c0Var.H();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.size - ((int) (j11 - bVar.offset));
        }
        com.google.android.exoplayer2.extractor.e0.a aVar2 = (com.google.android.exoplayer2.extractor.e0.a) com.google.android.exoplayer2.util.o0.j(bVar.cryptoData);
        cVar.c(i11, iArr2, iArr4, aVar2.encryptionKey, cVar.iv, aVar2.cryptoMode, aVar2.encryptedBlocks, aVar2.clearBlocks);
        long j12 = bVar.offset;
        int i14 = (int) (j11 - j12);
        bVar.offset = j12 + ((long) i14);
        bVar.size -= i14;
        return aVarI2;
    }

    public void b(long j6) {
        a aVar;
        if (j6 == -1) {
            return;
        }
        while (true) {
            aVar = this.firstAllocationNode;
            if (j6 < aVar.endPosition) {
                break;
            }
            this.allocator.a(aVar.allocation);
            this.firstAllocationNode = this.firstAllocationNode.b();
        }
        if (this.readAllocationNode.startPosition < aVar.startPosition) {
            this.readAllocationNode = aVar;
        }
    }

    public void e(com.google.android.exoplayer2.decoder.g gVar, v0.b bVar) {
        k(this.readAllocationNode, gVar, bVar, this.scratch);
    }

    public void l(com.google.android.exoplayer2.decoder.g gVar, v0.b bVar) {
        this.readAllocationNode = k(this.readAllocationNode, gVar, bVar, this.scratch);
    }

    public void m() {
        a(this.firstAllocationNode);
        this.firstAllocationNode.d(0L, this.allocationLength);
        a aVar = this.firstAllocationNode;
        this.readAllocationNode = aVar;
        this.writeAllocationNode = aVar;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    public void p(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        while (i10 > 0) {
            int iG = g(i10);
            a aVar = this.writeAllocationNode;
            c0Var.j(aVar.allocation.data, aVar.e(this.totalBytesWritten), iG);
            i10 -= iG;
            f(iG);
        }
    }

    public t0(com.google.android.exoplayer2.upstream.b bVar) {
        this.allocator = bVar;
        int individualAllocationLength = bVar.getIndividualAllocationLength();
        this.allocationLength = individualAllocationLength;
        this.scratch = new com.google.android.exoplayer2.util.c0(32);
        a aVar = new a(0L, individualAllocationLength);
        this.firstAllocationNode = aVar;
        this.readAllocationNode = aVar;
        this.writeAllocationNode = aVar;
    }

    private static a h(a aVar, long j6, ByteBuffer byteBuffer, int i10) {
        a aVarC = c(aVar, j6);
        while (i10 > 0) {
            int iMin = Math.min(i10, (int) (aVarC.endPosition - j6));
            byteBuffer.put(aVarC.allocation.data, aVarC.e(j6), iMin);
            i10 -= iMin;
            j6 += (long) iMin;
            if (j6 == aVarC.endPosition) {
                aVarC = aVarC.next;
            }
        }
        return aVarC;
    }

    private static a i(a aVar, long j6, byte[] bArr, int i10) {
        a aVarC = c(aVar, j6);
        int i11 = i10;
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (aVarC.endPosition - j6));
            System.arraycopy(aVarC.allocation.data, aVarC.e(j6), bArr, i10 - i11, iMin);
            i11 -= iMin;
            j6 += (long) iMin;
            if (j6 == aVarC.endPosition) {
                aVarC = aVarC.next;
            }
        }
        return aVarC;
    }

    private static a k(a aVar, com.google.android.exoplayer2.decoder.g gVar, v0.b bVar, com.google.android.exoplayer2.util.c0 c0Var) {
        if (gVar.p()) {
            aVar = j(aVar, gVar, bVar, c0Var);
        }
        if (gVar.e()) {
            c0Var.L(4);
            a aVarI = i(aVar, bVar.offset, c0Var.d(), 4);
            int iH = c0Var.H();
            bVar.offset += 4;
            bVar.size -= 4;
            gVar.n(iH);
            a aVarH = h(aVarI, bVar.offset, gVar.data, iH);
            bVar.offset += (long) iH;
            int i10 = bVar.size - iH;
            bVar.size = i10;
            gVar.r(i10);
            return h(aVarH, bVar.offset, gVar.supplementalData, bVar.size);
        }
        gVar.n(bVar.size);
        return h(aVar, bVar.offset, gVar.data, bVar.size);
    }

    public int o(com.google.android.exoplayer2.upstream.h hVar, int i10, boolean z6) throws IOException {
        int iG = g(i10);
        a aVar = this.writeAllocationNode;
        int i11 = hVar.read(aVar.allocation.data, aVar.e(this.totalBytesWritten), iG);
        if (i11 == -1) {
            if (z6) {
                return -1;
            }
            throw new EOFException();
        }
        f(i11);
        return i11;
    }
}
