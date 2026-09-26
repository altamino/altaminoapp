package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
final class e {
    private static final int CHUNK_TYPE_AUDIO = 1651965952;
    private static final int CHUNK_TYPE_VIDEO_COMPRESSED = 1667497984;
    private static final int CHUNK_TYPE_VIDEO_UNCOMPRESSED = 1650720768;
    private static final int INITIAL_INDEX_SIZE = 512;
    private final int alternativeChunkId;
    private int bytesRemainingInCurrentChunk;
    private final int chunkId;
    private int currentChunkIndex;
    private int currentChunkSize;
    private final long durationUs;
    private int indexChunkCount;
    private int indexSize;
    private int[] keyFrameIndices;
    private long[] keyFrameOffsets;
    private final int streamHeaderChunkCount;
    protected final e0 trackOutput;

    public void a() {
        this.currentChunkIndex++;
    }

    public long g() {
        return e(1);
    }

    public boolean j(int i10) {
        return this.chunkId == i10 || this.alternativeChunkId == i10;
    }

    public void k() {
        this.indexChunkCount++;
    }

    public void n(int i10) {
        this.currentChunkSize = i10;
        this.bytesRemainingInCurrentChunk = i10;
    }

    private static int d(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private long e(int i10) {
        return (this.durationUs * ((long) i10)) / ((long) this.streamHeaderChunkCount);
    }

    private c0 h(int i10) {
        return new c0(((long) this.keyFrameIndices[i10]) * g(), this.keyFrameOffsets[i10]);
    }

    public void b(long j6) {
        if (this.indexSize == this.keyFrameIndices.length) {
            long[] jArr = this.keyFrameOffsets;
            this.keyFrameOffsets = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.keyFrameIndices;
            this.keyFrameIndices = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.keyFrameOffsets;
        int i10 = this.indexSize;
        jArr2[i10] = j6;
        this.keyFrameIndices[i10] = this.indexChunkCount;
        this.indexSize = i10 + 1;
    }

    public void c() {
        this.keyFrameOffsets = Arrays.copyOf(this.keyFrameOffsets, this.indexSize);
        this.keyFrameIndices = Arrays.copyOf(this.keyFrameIndices, this.indexSize);
    }

    public long f() {
        return e(this.currentChunkIndex);
    }

    public boolean l() {
        return Arrays.binarySearch(this.keyFrameIndices, this.currentChunkIndex) >= 0;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean m(m mVar) throws IOException {
        int i10 = this.bytesRemainingInCurrentChunk;
        int iB = i10 - this.trackOutput.b(mVar, i10, false);
        this.bytesRemainingInCurrentChunk = iB;
        boolean z6 = iB == 0;
        if (z6) {
            if (this.currentChunkSize > 0) {
                this.trackOutput.e(f(), l() ? 1 : 0, this.currentChunkSize, 0, null);
            }
            a();
        }
        return z6;
    }

    public void o(long j6) {
        if (this.indexSize == 0) {
            this.currentChunkIndex = 0;
        } else {
            this.currentChunkIndex = this.keyFrameIndices[o0.i(this.keyFrameOffsets, j6, true, true)];
        }
    }

    public e(int i10, int i11, long j6, int i12, e0 e0Var) {
        int i13;
        int iD;
        boolean z6 = true;
        if (i11 != 1 && i11 != 2) {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.durationUs = j6;
        this.streamHeaderChunkCount = i12;
        this.trackOutput = e0Var;
        if (i11 == 2) {
            i13 = CHUNK_TYPE_VIDEO_COMPRESSED;
        } else {
            i13 = CHUNK_TYPE_AUDIO;
        }
        this.chunkId = d(i10, i13);
        if (i11 == 2) {
            iD = d(i10, CHUNK_TYPE_VIDEO_UNCOMPRESSED);
        } else {
            iD = -1;
        }
        this.alternativeChunkId = iD;
        this.keyFrameOffsets = new long[512];
        this.keyFrameIndices = new int[512];
    }

    public b0.a i(long j6) {
        int iG = (int) (j6 / g());
        int iH = o0.h(this.keyFrameIndices, iG, true, true);
        if (this.keyFrameIndices[iH] == iG) {
            return new b0.a(h(iH));
        }
        c0 c0VarH = h(iH);
        int i10 = iH + 1;
        if (i10 < this.keyFrameOffsets.length) {
            return new b0.a(c0VarH, h(i10));
        }
        return new b0.a(c0VarH);
    }
}
