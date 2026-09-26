package org.apache.commons.compress.compressors.lz4;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.compressors.lz77support.LZ77Compressor;
import org.apache.commons.compress.compressors.lz77support.Parameters;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes4.dex */
public class BlockLZ4CompressorOutputStream extends CompressorOutputStream {
    private static final int MIN_BACK_REFERENCE_LENGTH = 4;
    private static final int MIN_OFFSET_OF_LAST_BACK_REFERENCE = 12;
    private final LZ77Compressor compressor;
    private Deque<byte[]> expandedBlocks;
    private boolean finished;
    private final byte[] oneByte;
    private final OutputStream os;
    private Deque<Pair> pairs;

    static final class Pair {
        private int brLength;
        private int brOffset;
        private final Deque<byte[]> literals = new LinkedList();
        private boolean written;

        /* JADX INFO: Access modifiers changed from: private */
        public int backReferenceLength() {
            return this.brLength;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasBeenWritten() {
            return this.written;
        }

        private static int lengths(int i10, int i11) {
            int i12 = 15;
            if (i10 >= 15) {
                i10 = 15;
            }
            if (i11 < 4) {
                i12 = 0;
            } else if (i11 < 19) {
                i12 = i11 - 4;
            }
            return (i10 << 4) | i12;
        }

        boolean hasBackReference() {
            return this.brOffset > 0;
        }

        private int literalLength() {
            Iterator<byte[]> it = this.literals.iterator();
            int length = 0;
            while (it.hasNext()) {
                length += it.next().length;
            }
            return length;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void prependLiteral(byte[] bArr) {
            this.literals.addFirst(bArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void prependTo(Pair pair) {
            Iterator<byte[]> itDescendingIterator = this.literals.descendingIterator();
            while (itDescendingIterator.hasNext()) {
                pair.prependLiteral(itDescendingIterator.next());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Pair splitWithNewBackReferenceLengthOf(int i10) {
            Pair pair = new Pair();
            pair.literals.addAll(this.literals);
            pair.brOffset = this.brOffset;
            pair.brLength = i10;
            return pair;
        }

        private static void writeLength(int i10, OutputStream outputStream) throws IOException {
            while (i10 >= 255) {
                outputStream.write(255);
                i10 -= 255;
            }
            outputStream.write(i10);
        }

        Pair() {
        }

        byte[] addLiteral(LZ77Compressor.LiteralBlock literalBlock) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(literalBlock.getData(), literalBlock.getOffset(), literalBlock.getOffset() + literalBlock.getLength());
            this.literals.add(bArrCopyOfRange);
            return bArrCopyOfRange;
        }

        boolean canBeWritten(int i10) {
            if (hasBackReference() && i10 >= 16) {
                return true;
            }
            return false;
        }

        int length() {
            return literalLength() + this.brLength;
        }

        void setBackReference(LZ77Compressor.BackReference backReference) {
            if (!hasBackReference()) {
                this.brOffset = backReference.getOffset();
                this.brLength = backReference.getLength();
                return;
            }
            throw new IllegalStateException();
        }

        void writeTo(OutputStream outputStream) throws IOException {
            int iLiteralLength = literalLength();
            outputStream.write(lengths(iLiteralLength, this.brLength));
            if (iLiteralLength >= 15) {
                writeLength(iLiteralLength - 15, outputStream);
            }
            Iterator<byte[]> it = this.literals.iterator();
            while (it.hasNext()) {
                outputStream.write(it.next());
            }
            if (hasBackReference()) {
                ByteUtils.toLittleEndian(outputStream, this.brOffset, 2);
                int i10 = this.brLength;
                if (i10 - 4 >= 15) {
                    writeLength(i10 - 19, outputStream);
                }
            }
            this.written = true;
        }
    }

    public BlockLZ4CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, createParameterBuilder().build());
    }

    private void expandFromList(byte[] bArr, int i10, int i11) {
        int length;
        int iMin;
        byte[] next;
        int i12 = i10;
        int i13 = 0;
        while (i11 > 0) {
            if (i12 > 0) {
                Iterator<byte[]> it = this.expandedBlocks.iterator();
                int length2 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.length + length2 >= i12) {
                        break;
                    } else {
                        length2 += next.length;
                    }
                }
                if (next == null) {
                    throw new IllegalStateException("failed to find a block containing offset " + i10);
                }
                length = (length2 + next.length) - i12;
                iMin = Math.min(i11, next.length - length);
            } else {
                length = -i12;
                iMin = Math.min(i11, i13 + i12);
                next = bArr;
            }
            System.arraycopy(next, length, bArr, i13, iMin);
            i12 -= iMin;
            i11 -= iMin;
            i13 += iMin;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) (i10 & 255);
        write(bArr);
    }

    /* JADX INFO: renamed from: org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorOutputStream$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType;

        static {
            int[] iArr = new int[LZ77Compressor.Block.BlockType.values().length];
            $SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType = iArr;
            try {
                iArr[LZ77Compressor.Block.BlockType.LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType[LZ77Compressor.Block.BlockType.BACK_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType[LZ77Compressor.Block.BlockType.EOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BlockLZ4CompressorOutputStream(OutputStream outputStream, Parameters parameters) throws IOException {
        this.oneByte = new byte[1];
        this.finished = false;
        this.pairs = new LinkedList();
        this.expandedBlocks = new LinkedList();
        this.os = outputStream;
        this.compressor = new LZ77Compressor(parameters, new LZ77Compressor.Callback() { // from class: org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorOutputStream.1
            @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Callback
            public void accept(LZ77Compressor.Block block) throws IOException {
                int i10 = AnonymousClass2.$SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType[block.getType().ordinal()];
                if (i10 == 1) {
                    BlockLZ4CompressorOutputStream.this.addLiteralBlock((LZ77Compressor.LiteralBlock) block);
                } else if (i10 == 2) {
                    BlockLZ4CompressorOutputStream.this.addBackReference((LZ77Compressor.BackReference) block);
                } else {
                    if (i10 != 3) {
                        return;
                    }
                    BlockLZ4CompressorOutputStream.this.writeFinalLiteralBlock();
                }
            }
        });
    }

    private void clearUnusedBlocks() {
        Iterator<byte[]> it = this.expandedBlocks.iterator();
        int i10 = 0;
        int length = 0;
        while (it.hasNext()) {
            i10++;
            length += it.next().length;
            if (length >= 65536) {
                break;
            }
        }
        int size = this.expandedBlocks.size();
        while (i10 < size) {
            this.expandedBlocks.removeLast();
            i10++;
        }
    }

    private void clearUnusedPairs() {
        Iterator<Pair> itDescendingIterator = this.pairs.descendingIterator();
        int i10 = 0;
        int length = 0;
        while (itDescendingIterator.hasNext()) {
            i10++;
            length += itDescendingIterator.next().length();
            if (length >= 65536) {
                break;
            }
        }
        int size = this.pairs.size();
        while (i10 < size && this.pairs.peekFirst().hasBeenWritten()) {
            this.pairs.removeFirst();
            i10++;
        }
    }

    public static Parameters.Builder createParameterBuilder() {
        return Parameters.builder(65536).withMinBackReferenceLength(4).withMaxBackReferenceLength(65535).withMaxOffset(65535).withMaxLiteralLength(65535);
    }

    private byte[] expand(int i10, int i11) {
        byte[] bArr = new byte[i11];
        if (i10 == 1) {
            byte[] bArrPeekFirst = this.expandedBlocks.peekFirst();
            byte b7 = bArrPeekFirst[bArrPeekFirst.length - 1];
            if (b7 != 0) {
                Arrays.fill(bArr, b7);
            }
        } else {
            expandFromList(bArr, i10, i11);
        }
        return bArr;
    }

    private void recordBackReference(LZ77Compressor.BackReference backReference) {
        this.expandedBlocks.addFirst(expand(backReference.getOffset(), backReference.getLength()));
    }

    private void recordLiteral(byte[] bArr) {
        this.expandedBlocks.addFirst(bArr);
    }

    private void rewriteLastPairs() {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        Iterator<Pair> itDescendingIterator = this.pairs.descendingIterator();
        int i10 = 0;
        while (itDescendingIterator.hasNext()) {
            Pair next = itDescendingIterator.next();
            if (next.hasBeenWritten()) {
                break;
            }
            int length = next.length();
            linkedList2.addFirst(Integer.valueOf(length));
            linkedList.addFirst(next);
            i10 += length;
            if (i10 >= 12) {
                break;
            }
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            this.pairs.remove((Pair) it.next());
        }
        int size = linkedList.size();
        int iIntValue = 0;
        for (int i11 = 1; i11 < size; i11++) {
            iIntValue += ((Integer) linkedList2.get(i11)).intValue();
        }
        Pair pair = new Pair();
        if (iIntValue > 0) {
            pair.prependLiteral(expand(iIntValue, iIntValue));
        }
        Pair pair2 = (Pair) linkedList.get(0);
        int i12 = 12 - iIntValue;
        int iBackReferenceLength = pair2.hasBackReference() ? pair2.backReferenceLength() : 0;
        if (!pair2.hasBackReference() || iBackReferenceLength < 16 - iIntValue) {
            if (pair2.hasBackReference()) {
                pair.prependLiteral(expand(iIntValue + iBackReferenceLength, iBackReferenceLength));
            }
            pair2.prependTo(pair);
        } else {
            pair.prependLiteral(expand(iIntValue + i12, i12));
            this.pairs.add(pair2.splitWithNewBackReferenceLengthOf(iBackReferenceLength - i12));
        }
        this.pairs.add(pair);
    }

    private void writeWritablePairs(int i10) throws IOException {
        Iterator<Pair> itDescendingIterator = this.pairs.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            Pair next = itDescendingIterator.next();
            if (next.hasBeenWritten()) {
                break;
            } else {
                i10 += next.length();
            }
        }
        for (Pair pair : this.pairs) {
            if (!pair.hasBeenWritten()) {
                i10 -= pair.length();
                if (!pair.canBeWritten(i10)) {
                    return;
                } else {
                    pair.writeTo(this.os);
                }
            }
        }
    }

    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        this.compressor.finish();
        this.finished = true;
    }

    public void prefill(byte[] bArr, int i10, int i11) {
        if (i11 > 0) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11 + i10);
            this.compressor.prefill(bArrCopyOfRange);
            recordLiteral(bArrCopyOfRange);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBackReference(LZ77Compressor.BackReference backReference) throws IOException {
        writeBlocksAndReturnUnfinishedPair(backReference.getLength()).setBackReference(backReference);
        recordBackReference(backReference);
        clearUnusedBlocksAndPairs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLiteralBlock(LZ77Compressor.LiteralBlock literalBlock) throws IOException {
        recordLiteral(writeBlocksAndReturnUnfinishedPair(literalBlock.getLength()).addLiteral(literalBlock));
        clearUnusedBlocksAndPairs();
    }

    private void clearUnusedBlocksAndPairs() {
        clearUnusedBlocks();
        clearUnusedPairs();
    }

    private Pair writeBlocksAndReturnUnfinishedPair(int i10) throws IOException {
        writeWritablePairs(i10);
        Pair pairPeekLast = this.pairs.peekLast();
        if (pairPeekLast == null || pairPeekLast.hasBackReference()) {
            Pair pair = new Pair();
            this.pairs.addLast(pair);
            return pair;
        }
        return pairPeekLast;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeFinalLiteralBlock() throws IOException {
        rewriteLastPairs();
        for (Pair pair : this.pairs) {
            if (!pair.hasBeenWritten()) {
                pair.writeTo(this.os);
            }
        }
        this.pairs.clear();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        this.os.close();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.compressor.compress(bArr, i10, i11);
    }
}
