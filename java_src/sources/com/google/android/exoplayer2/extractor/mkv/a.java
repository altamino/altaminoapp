package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes5.dex */
final class a implements c {
    private static final int ELEMENT_STATE_READ_CONTENT = 2;
    private static final int ELEMENT_STATE_READ_CONTENT_SIZE = 1;
    private static final int ELEMENT_STATE_READ_ID = 0;
    private static final int MAX_ID_BYTES = 4;
    private static final int MAX_INTEGER_ELEMENT_SIZE_BYTES = 8;
    private static final int MAX_LENGTH_BYTES = 8;
    private static final int VALID_FLOAT32_ELEMENT_SIZE_BYTES = 4;
    private static final int VALID_FLOAT64_ELEMENT_SIZE_BYTES = 8;
    private long elementContentSize;
    private int elementId;
    private int elementState;
    private com.google.android.exoplayer2.extractor.mkv.b processor;
    private final byte[] scratch = new byte[8];
    private final ArrayDeque<b> masterElementsStack = new ArrayDeque<>();
    private final g varintReader = new g();

    private static final class b {
        private final long elementEndPosition;
        private final int elementId;

        private b(int i10, long j6) {
            this.elementId = i10;
            this.elementEndPosition = j6;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.c
    public void b(com.google.android.exoplayer2.extractor.mkv.b bVar) {
        this.processor = bVar;
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.c
    public void reset() {
        this.elementState = 0;
        this.masterElementsStack.clear();
        this.varintReader.e();
    }

    private long e(m mVar, int i10) throws IOException {
        mVar.readFully(this.scratch, 0, i10);
        long j6 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j6 = (j6 << 8) | ((long) (this.scratch[i11] & 255));
        }
        return j6;
    }

    private static String f(m mVar, int i10) throws IOException {
        if (i10 == 0) {
            return "";
        }
        byte[] bArr = new byte[i10];
        mVar.readFully(bArr, 0, i10);
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        return new String(bArr, 0, i10);
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.c
    public boolean a(m mVar) throws IOException {
        com.google.android.exoplayer2.util.a.i(this.processor);
        while (true) {
            b bVarPeek = this.masterElementsStack.peek();
            if (bVarPeek != null && mVar.getPosition() >= bVarPeek.elementEndPosition) {
                this.processor.endMasterElement(this.masterElementsStack.pop().elementId);
                return true;
            }
            if (this.elementState == 0) {
                long jD = this.varintReader.d(mVar, true, false, 4);
                if (jD == -2) {
                    jD = c(mVar);
                }
                if (jD == -1) {
                    return false;
                }
                this.elementId = (int) jD;
                this.elementState = 1;
            }
            if (this.elementState == 1) {
                this.elementContentSize = this.varintReader.d(mVar, false, true, 8);
                this.elementState = 2;
            }
            int elementType = this.processor.getElementType(this.elementId);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = mVar.getPosition();
                    this.masterElementsStack.push(new b(this.elementId, this.elementContentSize + position));
                    this.processor.startMasterElement(this.elementId, position, this.elementContentSize);
                    this.elementState = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j6 = this.elementContentSize;
                    if (j6 <= 8) {
                        this.processor.integerElement(this.elementId, e(mVar, (int) j6));
                        this.elementState = 0;
                        return true;
                    }
                    throw v2.a("Invalid integer size: " + this.elementContentSize, null);
                }
                if (elementType == 3) {
                    long j10 = this.elementContentSize;
                    if (j10 <= 2147483647L) {
                        this.processor.stringElement(this.elementId, f(mVar, (int) j10));
                        this.elementState = 0;
                        return true;
                    }
                    throw v2.a("String element size: " + this.elementContentSize, null);
                }
                if (elementType == 4) {
                    this.processor.a(this.elementId, (int) this.elementContentSize, mVar);
                    this.elementState = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw v2.a("Invalid element type " + elementType, null);
                }
                long j11 = this.elementContentSize;
                if (j11 == 4 || j11 == 8) {
                    this.processor.floatElement(this.elementId, d(mVar, (int) j11));
                    this.elementState = 0;
                    return true;
                }
                throw v2.a("Invalid float size: " + this.elementContentSize, null);
            }
            mVar.skipFully((int) this.elementContentSize);
            this.elementState = 0;
        }
    }

    private long c(m mVar) throws IOException {
        mVar.resetPeekPosition();
        while (true) {
            mVar.peekFully(this.scratch, 0, 4);
            int iC = g.c(this.scratch[0]);
            if (iC != -1 && iC <= 4) {
                int iA = (int) g.a(this.scratch, iC, false);
                if (this.processor.isLevel1Element(iA)) {
                    mVar.skipFully(iC);
                    return iA;
                }
            }
            mVar.skipFully(1);
        }
    }

    private double d(m mVar, int i10) throws IOException {
        long jE = e(mVar, i10);
        if (i10 == 4) {
            return Float.intBitsToFloat((int) jE);
        }
        return Double.longBitsToDouble(jE);
    }
}
