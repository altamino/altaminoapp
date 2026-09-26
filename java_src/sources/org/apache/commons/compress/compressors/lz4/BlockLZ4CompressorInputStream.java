package org.apache.commons.compress.compressors.lz4;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes7.dex */
public class BlockLZ4CompressorInputStream extends AbstractLZ77CompressorInputStream {
    static final int BACK_REFERENCE_SIZE_MASK = 15;
    static final int LITERAL_SIZE_MASK = 240;
    static final int SIZE_BITS = 4;
    static final int WINDOW_SIZE = 65536;
    private int nextBackReferenceSize;
    private State state;

    private enum State {
        NO_BLOCK,
        IN_LITERAL,
        LOOKING_FOR_BACK_REFERENCE,
        IN_BACK_REFERENCE,
        EOF
    }

    /* JADX INFO: renamed from: org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorInputStream$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State = iArr;
            try {
                iArr[State.EOF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State[State.NO_BLOCK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State[State.IN_LITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State[State.LOOKING_FOR_BACK_REFERENCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State[State.IN_BACK_REFERENCE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public BlockLZ4CompressorInputStream(InputStream inputStream) throws IOException {
        super(inputStream, 65536);
        this.state = State.NO_BLOCK;
    }

    private boolean initializeBackReference() throws IOException {
        try {
            int iFromLittleEndian = (int) ByteUtils.fromLittleEndian(this.supplier, 2);
            int i10 = this.nextBackReferenceSize;
            long sizeBytes = i10;
            if (i10 == 15) {
                sizeBytes += readSizeBytes();
            }
            startBackReference(iFromLittleEndian, sizeBytes + 4);
            this.state = State.IN_BACK_REFERENCE;
            return true;
        } catch (IOException e) {
            if (this.nextBackReferenceSize == 0) {
                return false;
            }
            throw e;
        }
    }

    private long readSizeBytes() throws IOException {
        int oneByte;
        long j6 = 0;
        do {
            oneByte = readOneByte();
            if (oneByte == -1) {
                throw new IOException("Premature end of stream while parsing length");
            }
            j6 += (long) oneByte;
        } while (oneByte == 255);
        return j6;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = AnonymousClass1.$SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State[this.state.ordinal()];
        if (i12 == 1) {
            return -1;
        }
        if (i12 == 2) {
            readSizes();
        } else if (i12 != 3) {
            if (i12 != 4) {
                if (i12 != 5) {
                    throw new IOException("Unknown stream state " + this.state);
                }
            } else if (!initializeBackReference()) {
                this.state = State.EOF;
                return -1;
            }
            int backReference = readBackReference(bArr, i10, i11);
            if (!hasMoreDataInBlock()) {
                this.state = State.NO_BLOCK;
            }
            return backReference > 0 ? backReference : read(bArr, i10, i11);
        }
        int literal = readLiteral(bArr, i10, i11);
        if (!hasMoreDataInBlock()) {
            this.state = State.LOOKING_FOR_BACK_REFERENCE;
        }
        return literal > 0 ? literal : read(bArr, i10, i11);
    }

    private void readSizes() throws IOException {
        int oneByte = readOneByte();
        if (oneByte != -1) {
            this.nextBackReferenceSize = oneByte & 15;
            long sizeBytes = (oneByte & 240) >> 4;
            if (sizeBytes == 15) {
                sizeBytes += readSizeBytes();
            }
            startLiteral(sizeBytes);
            this.state = State.IN_LITERAL;
            return;
        }
        throw new IOException("Premature end of stream while looking for next block");
    }
}
