package androidx.media3.extractor.mkv;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes8.dex */
final class DefaultEbmlReader implements EbmlReader {
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
    private EbmlProcessor processor;
    private final byte[] scratch = new byte[8];
    private final ArrayDeque<MasterElement> masterElementsStack = new ArrayDeque<>();
    private final VarintReader varintReader = new VarintReader();

    private static final class MasterElement {
        private final long elementEndPosition;
        private final int elementId;

        private MasterElement(int i10, long j6) {
            this.elementId = i10;
            this.elementEndPosition = j6;
        }
    }

    @Override // androidx.media3.extractor.mkv.EbmlReader
    public void b(EbmlProcessor ebmlProcessor) {
        this.processor = ebmlProcessor;
    }

    @Override // androidx.media3.extractor.mkv.EbmlReader
    public void reset() {
        this.elementState = 0;
        this.masterElementsStack.clear();
        this.varintReader.e();
    }

    private long e(ExtractorInput extractorInput, int i10) throws IOException {
        extractorInput.readFully(this.scratch, 0, i10);
        long j6 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j6 = (j6 << 8) | ((long) (this.scratch[i11] & 255));
        }
        return j6;
    }

    private static String f(ExtractorInput extractorInput, int i10) throws IOException {
        if (i10 == 0) {
            return "";
        }
        byte[] bArr = new byte[i10];
        extractorInput.readFully(bArr, 0, i10);
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        return new String(bArr, 0, i10);
    }

    @Override // androidx.media3.extractor.mkv.EbmlReader
    public boolean a(ExtractorInput extractorInput) throws IOException {
        Assertions.i(this.processor);
        while (true) {
            MasterElement masterElementPeek = this.masterElementsStack.peek();
            if (masterElementPeek != null && extractorInput.getPosition() >= masterElementPeek.elementEndPosition) {
                this.processor.endMasterElement(this.masterElementsStack.pop().elementId);
                return true;
            }
            if (this.elementState == 0) {
                long jD = this.varintReader.d(extractorInput, true, false, 4);
                if (jD == -2) {
                    jD = c(extractorInput);
                }
                if (jD == -1) {
                    return false;
                }
                this.elementId = (int) jD;
                this.elementState = 1;
            }
            if (this.elementState == 1) {
                this.elementContentSize = this.varintReader.d(extractorInput, false, true, 8);
                this.elementState = 2;
            }
            int elementType = this.processor.getElementType(this.elementId);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = extractorInput.getPosition();
                    this.masterElementsStack.push(new MasterElement(this.elementId, this.elementContentSize + position));
                    this.processor.startMasterElement(this.elementId, position, this.elementContentSize);
                    this.elementState = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j6 = this.elementContentSize;
                    if (j6 <= 8) {
                        this.processor.integerElement(this.elementId, e(extractorInput, (int) j6));
                        this.elementState = 0;
                        return true;
                    }
                    throw ParserException.a("Invalid integer size: " + this.elementContentSize, null);
                }
                if (elementType == 3) {
                    long j10 = this.elementContentSize;
                    if (j10 <= 2147483647L) {
                        this.processor.stringElement(this.elementId, f(extractorInput, (int) j10));
                        this.elementState = 0;
                        return true;
                    }
                    throw ParserException.a("String element size: " + this.elementContentSize, null);
                }
                if (elementType == 4) {
                    this.processor.a(this.elementId, (int) this.elementContentSize, extractorInput);
                    this.elementState = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw ParserException.a("Invalid element type " + elementType, null);
                }
                long j11 = this.elementContentSize;
                if (j11 == 4 || j11 == 8) {
                    this.processor.floatElement(this.elementId, d(extractorInput, (int) j11));
                    this.elementState = 0;
                    return true;
                }
                throw ParserException.a("Invalid float size: " + this.elementContentSize, null);
            }
            extractorInput.skipFully((int) this.elementContentSize);
            this.elementState = 0;
        }
    }

    private long c(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        while (true) {
            extractorInput.peekFully(this.scratch, 0, 4);
            int iC = VarintReader.c(this.scratch[0]);
            if (iC != -1 && iC <= 4) {
                int iA = (int) VarintReader.a(this.scratch, iC, false);
                if (this.processor.isLevel1Element(iA)) {
                    extractorInput.skipFully(iC);
                    return iA;
                }
            }
            extractorInput.skipFully(1);
        }
    }

    private double d(ExtractorInput extractorInput, int i10) throws IOException {
        long jE = e(extractorInput, i10);
        if (i10 == 4) {
            return Float.intBitsToFloat((int) jE);
        }
        return Double.longBitsToDouble(jE);
    }
}
