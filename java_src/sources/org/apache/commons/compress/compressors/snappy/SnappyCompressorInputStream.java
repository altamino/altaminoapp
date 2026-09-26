package org.apache.commons.compress.compressors.snappy;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes9.dex */
public class SnappyCompressorInputStream extends AbstractLZ77CompressorInputStream {
    public static final int DEFAULT_BLOCK_SIZE = 32768;
    private static final int TAG_MASK = 3;
    private boolean endReached;
    private final int size;
    private State state;
    private int uncompressedBytesRemaining;

    private enum State {
        NO_BLOCK,
        IN_LITERAL,
        IN_BACK_REFERENCE
    }

    public SnappyCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, 32768);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int readLiteralLength(int i10) throws IOException {
        long jFromLittleEndian;
        int oneByte = i10 >> 2;
        switch (oneByte) {
            case 60:
                oneByte = readOneByte();
                if (oneByte == -1) {
                    throw new IOException("Premature end of stream reading literal length");
                }
                return oneByte + 1;
            case 61:
                jFromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 2);
                break;
            case 62:
                jFromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 3);
                break;
            case 63:
                jFromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 4);
                break;
            default:
                return oneByte + 1;
        }
        oneByte = (int) jFromLittleEndian;
        return oneByte + 1;
    }

    private long readSize() throws IOException {
        int i10 = 0;
        long j6 = 0;
        while (true) {
            int oneByte = readOneByte();
            if (oneByte == -1) {
                throw new IOException("Premature end of stream reading size");
            }
            int i11 = i10 + 1;
            j6 |= (long) ((oneByte & 127) << (i10 * 7));
            if ((oneByte & 128) == 0) {
                return j6;
            }
            i10 = i11;
        }
    }

    @Override // org.apache.commons.compress.compressors.lz77support.AbstractLZ77CompressorInputStream
    public int getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: org.apache.commons.compress.compressors.snappy.SnappyCompressorInputStream$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$compress$compressors$snappy$SnappyCompressorInputStream$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$org$apache$commons$compress$compressors$snappy$SnappyCompressorInputStream$State = iArr;
            try {
                iArr[State.NO_BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$snappy$SnappyCompressorInputStream$State[State.IN_LITERAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$snappy$SnappyCompressorInputStream$State[State.IN_BACK_REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public SnappyCompressorInputStream(InputStream inputStream, int i10) throws IOException {
        super(inputStream, i10);
        this.state = State.NO_BLOCK;
        this.endReached = false;
        int size = (int) readSize();
        this.size = size;
        this.uncompressedBytesRemaining = size;
    }

    private void fill() throws IOException {
        if (this.uncompressedBytesRemaining == 0) {
            this.endReached = true;
            return;
        }
        int oneByte = readOneByte();
        if (oneByte == -1) {
            throw new IOException("Premature end of stream reading block start");
        }
        int i10 = oneByte & 3;
        if (i10 == 0) {
            int literalLength = readLiteralLength(oneByte);
            this.uncompressedBytesRemaining -= literalLength;
            startLiteral(literalLength);
            this.state = State.IN_LITERAL;
            return;
        }
        if (i10 == 1) {
            int i11 = ((oneByte >> 2) & 7) + 4;
            this.uncompressedBytesRemaining -= i11;
            int i12 = (oneByte & 224) << 3;
            int oneByte2 = readOneByte();
            if (oneByte2 == -1) {
                throw new IOException("Premature end of stream reading back-reference length");
            }
            startBackReference(i12 | oneByte2, i11);
            this.state = State.IN_BACK_REFERENCE;
            return;
        }
        if (i10 == 2) {
            int i13 = (oneByte >> 2) + 1;
            this.uncompressedBytesRemaining -= i13;
            startBackReference((int) ByteUtils.fromLittleEndian(this.supplier, 2), i13);
            this.state = State.IN_BACK_REFERENCE;
            return;
        }
        if (i10 != 3) {
            return;
        }
        int i14 = (oneByte >> 2) + 1;
        this.uncompressedBytesRemaining -= i14;
        startBackReference(((int) ByteUtils.fromLittleEndian(this.supplier, 4)) & Integer.MAX_VALUE, i14);
        this.state = State.IN_BACK_REFERENCE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.endReached) {
            return -1;
        }
        int i12 = AnonymousClass1.$SwitchMap$org$apache$commons$compress$compressors$snappy$SnappyCompressorInputStream$State[this.state.ordinal()];
        if (i12 == 1) {
            fill();
            return read(bArr, i10, i11);
        }
        if (i12 == 2) {
            int literal = readLiteral(bArr, i10, i11);
            if (!hasMoreDataInBlock()) {
                this.state = State.NO_BLOCK;
            }
            return literal > 0 ? literal : read(bArr, i10, i11);
        }
        if (i12 == 3) {
            int backReference = readBackReference(bArr, i10, i11);
            if (!hasMoreDataInBlock()) {
                this.state = State.NO_BLOCK;
            }
            return backReference > 0 ? backReference : read(bArr, i10, i11);
        }
        throw new IOException("Unknown stream state " + this.state);
    }
}
