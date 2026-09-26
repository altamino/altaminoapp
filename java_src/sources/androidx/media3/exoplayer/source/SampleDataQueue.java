package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.TrackOutput;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
class SampleDataQueue {
    private static final int INITIAL_SCRATCH_SIZE = 32;
    private final int allocationLength;
    private final Allocator allocator;
    private AllocationNode firstAllocationNode;
    private AllocationNode readAllocationNode;
    private final ParsableByteArray scratch;
    private long totalBytesWritten;
    private AllocationNode writeAllocationNode;

    private static final class AllocationNode implements Allocator.AllocationNode {

        @Nullable
        public Allocation allocation;
        public long endPosition;

        @Nullable
        public AllocationNode next;
        public long startPosition;

        public AllocationNode b() {
            this.allocation = null;
            AllocationNode allocationNode = this.next;
            this.next = null;
            return allocationNode;
        }

        public void c(Allocation allocation, AllocationNode allocationNode) {
            this.allocation = allocation;
            this.next = allocationNode;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        public Allocation a() {
            return (Allocation) Assertions.e(this.allocation);
        }

        public void d(long j6, int i10) {
            Assertions.g(this.allocation == null);
            this.startPosition = j6;
            this.endPosition = j6 + ((long) i10);
        }

        public int e(long j6) {
            return ((int) (j6 - this.startPosition)) + this.allocation.offset;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        @Nullable
        public Allocator.AllocationNode next() {
            AllocationNode allocationNode = this.next;
            if (allocationNode == null || allocationNode.allocation == null) {
                return null;
            }
            return allocationNode;
        }

        public AllocationNode(long j6, int i10) {
            d(j6, i10);
        }
    }

    public long e() {
        return this.totalBytesWritten;
    }

    public void o() {
        this.readAllocationNode = this.firstAllocationNode;
    }

    private void a(AllocationNode allocationNode) {
        if (allocationNode.allocation == null) {
            return;
        }
        this.allocator.a(allocationNode);
        allocationNode.b();
    }

    private static AllocationNode d(AllocationNode allocationNode, long j6) {
        while (j6 >= allocationNode.endPosition) {
            allocationNode = allocationNode.next;
        }
        return allocationNode;
    }

    private void g(int i10) {
        long j6 = this.totalBytesWritten + ((long) i10);
        this.totalBytesWritten = j6;
        AllocationNode allocationNode = this.writeAllocationNode;
        if (j6 == allocationNode.endPosition) {
            this.writeAllocationNode = allocationNode.next;
        }
    }

    private int h(int i10) {
        AllocationNode allocationNode = this.writeAllocationNode;
        if (allocationNode.allocation == null) {
            allocationNode.c(this.allocator.allocate(), new AllocationNode(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return Math.min(i10, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    private static AllocationNode k(AllocationNode allocationNode, DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        long j6 = sampleExtrasHolder.offset;
        int iN = 1;
        parsableByteArray.Q(1);
        AllocationNode allocationNodeJ = j(allocationNode, j6, parsableByteArray.e(), 1);
        long j10 = j6 + 1;
        byte b7 = parsableByteArray.e()[0];
        boolean z6 = (b7 & 128) != 0;
        int i10 = b7 & 127;
        CryptoInfo cryptoInfo = decoderInputBuffer.cryptoInfo;
        byte[] bArr = cryptoInfo.iv;
        if (bArr == null) {
            cryptoInfo.iv = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        AllocationNode allocationNodeJ2 = j(allocationNodeJ, j10, cryptoInfo.iv, i10);
        long j11 = j10 + ((long) i10);
        if (z6) {
            parsableByteArray.Q(2);
            allocationNodeJ2 = j(allocationNodeJ2, j11, parsableByteArray.e(), 2);
            j11 += 2;
            iN = parsableByteArray.N();
        }
        int i11 = iN;
        int[] iArr = cryptoInfo.numBytesOfClearData;
        if (iArr == null || iArr.length < i11) {
            iArr = new int[i11];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 == null || iArr3.length < i11) {
            iArr3 = new int[i11];
        }
        int[] iArr4 = iArr3;
        if (z6) {
            int i12 = i11 * 6;
            parsableByteArray.Q(i12);
            allocationNodeJ2 = j(allocationNodeJ2, j11, parsableByteArray.e(), i12);
            j11 += (long) i12;
            parsableByteArray.U(0);
            for (int i13 = 0; i13 < i11; i13++) {
                iArr2[i13] = parsableByteArray.N();
                iArr4[i13] = parsableByteArray.L();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = sampleExtrasHolder.size - ((int) (j11 - sampleExtrasHolder.offset));
        }
        TrackOutput.CryptoData cryptoData = (TrackOutput.CryptoData) Util.j(sampleExtrasHolder.cryptoData);
        cryptoInfo.c(i11, iArr2, iArr4, cryptoData.encryptionKey, cryptoInfo.iv, cryptoData.cryptoMode, cryptoData.encryptedBlocks, cryptoData.clearBlocks);
        long j12 = sampleExtrasHolder.offset;
        int i14 = (int) (j11 - j12);
        sampleExtrasHolder.offset = j12 + ((long) i14);
        sampleExtrasHolder.size -= i14;
        return allocationNodeJ2;
    }

    public void b(long j6) {
        AllocationNode allocationNode;
        if (j6 == -1) {
            return;
        }
        while (true) {
            allocationNode = this.firstAllocationNode;
            if (j6 < allocationNode.endPosition) {
                break;
            }
            this.allocator.b(allocationNode.allocation);
            this.firstAllocationNode = this.firstAllocationNode.b();
        }
        if (this.readAllocationNode.startPosition < allocationNode.startPosition) {
            this.readAllocationNode = allocationNode;
        }
    }

    public void c(long j6) {
        Assertions.a(j6 <= this.totalBytesWritten);
        this.totalBytesWritten = j6;
        if (j6 != 0) {
            AllocationNode allocationNode = this.firstAllocationNode;
            if (j6 != allocationNode.startPosition) {
                while (this.totalBytesWritten > allocationNode.endPosition) {
                    allocationNode = allocationNode.next;
                }
                AllocationNode allocationNode2 = (AllocationNode) Assertions.e(allocationNode.next);
                a(allocationNode2);
                AllocationNode allocationNode3 = new AllocationNode(allocationNode.endPosition, this.allocationLength);
                allocationNode.next = allocationNode3;
                if (this.totalBytesWritten == allocationNode.endPosition) {
                    allocationNode = allocationNode3;
                }
                this.writeAllocationNode = allocationNode;
                if (this.readAllocationNode == allocationNode2) {
                    this.readAllocationNode = allocationNode3;
                    return;
                }
                return;
            }
        }
        a(this.firstAllocationNode);
        AllocationNode allocationNode4 = new AllocationNode(this.totalBytesWritten, this.allocationLength);
        this.firstAllocationNode = allocationNode4;
        this.readAllocationNode = allocationNode4;
        this.writeAllocationNode = allocationNode4;
    }

    public void f(DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        l(this.readAllocationNode, decoderInputBuffer, sampleExtrasHolder, this.scratch);
    }

    public void m(DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        this.readAllocationNode = l(this.readAllocationNode, decoderInputBuffer, sampleExtrasHolder, this.scratch);
    }

    public void n() {
        a(this.firstAllocationNode);
        this.firstAllocationNode.d(0L, this.allocationLength);
        AllocationNode allocationNode = this.firstAllocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    public void q(ParsableByteArray parsableByteArray, int i10) {
        while (i10 > 0) {
            int iH = h(i10);
            AllocationNode allocationNode = this.writeAllocationNode;
            parsableByteArray.l(allocationNode.allocation.data, allocationNode.e(this.totalBytesWritten), iH);
            i10 -= iH;
            g(iH);
        }
    }

    public SampleDataQueue(Allocator allocator) {
        this.allocator = allocator;
        int individualAllocationLength = allocator.getIndividualAllocationLength();
        this.allocationLength = individualAllocationLength;
        this.scratch = new ParsableByteArray(32);
        AllocationNode allocationNode = new AllocationNode(0L, individualAllocationLength);
        this.firstAllocationNode = allocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
    }

    private static AllocationNode i(AllocationNode allocationNode, long j6, ByteBuffer byteBuffer, int i10) {
        AllocationNode allocationNodeD = d(allocationNode, j6);
        while (i10 > 0) {
            int iMin = Math.min(i10, (int) (allocationNodeD.endPosition - j6));
            byteBuffer.put(allocationNodeD.allocation.data, allocationNodeD.e(j6), iMin);
            i10 -= iMin;
            j6 += (long) iMin;
            if (j6 == allocationNodeD.endPosition) {
                allocationNodeD = allocationNodeD.next;
            }
        }
        return allocationNodeD;
    }

    private static AllocationNode j(AllocationNode allocationNode, long j6, byte[] bArr, int i10) {
        AllocationNode allocationNodeD = d(allocationNode, j6);
        int i11 = i10;
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (allocationNodeD.endPosition - j6));
            System.arraycopy(allocationNodeD.allocation.data, allocationNodeD.e(j6), bArr, i10 - i11, iMin);
            i11 -= iMin;
            j6 += (long) iMin;
            if (j6 == allocationNodeD.endPosition) {
                allocationNodeD = allocationNodeD.next;
            }
        }
        return allocationNodeD;
    }

    private static AllocationNode l(AllocationNode allocationNode, DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        if (decoderInputBuffer.q()) {
            allocationNode = k(allocationNode, decoderInputBuffer, sampleExtrasHolder, parsableByteArray);
        }
        if (decoderInputBuffer.e()) {
            parsableByteArray.Q(4);
            AllocationNode allocationNodeJ = j(allocationNode, sampleExtrasHolder.offset, parsableByteArray.e(), 4);
            int iL = parsableByteArray.L();
            sampleExtrasHolder.offset += 4;
            sampleExtrasHolder.size -= 4;
            decoderInputBuffer.o(iL);
            AllocationNode allocationNodeI = i(allocationNodeJ, sampleExtrasHolder.offset, decoderInputBuffer.data, iL);
            sampleExtrasHolder.offset += (long) iL;
            int i10 = sampleExtrasHolder.size - iL;
            sampleExtrasHolder.size = i10;
            decoderInputBuffer.s(i10);
            return i(allocationNodeI, sampleExtrasHolder.offset, decoderInputBuffer.supplementalData, sampleExtrasHolder.size);
        }
        decoderInputBuffer.o(sampleExtrasHolder.size);
        return i(allocationNode, sampleExtrasHolder.offset, decoderInputBuffer.data, sampleExtrasHolder.size);
    }

    public int p(DataReader dataReader, int i10, boolean z6) throws IOException {
        int iH = h(i10);
        AllocationNode allocationNode = this.writeAllocationNode;
        int i11 = dataReader.read(allocationNode.allocation.data, allocationNode.e(this.totalBytesWritten), iH);
        if (i11 == -1) {
            if (z6) {
                return -1;
            }
            throw new EOFException();
        }
        g(i11);
        return i11;
    }
}
