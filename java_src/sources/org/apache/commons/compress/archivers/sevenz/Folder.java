package org.apache.commons.compress.archivers.sevenz;

import java.util.LinkedList;

/* JADX INFO: loaded from: classes8.dex */
class Folder {
    BindPair[] bindPairs;
    Coder[] coders;
    long crc;
    boolean hasCrc;
    int numUnpackSubStreams;
    long[] packedStreams;
    long totalInputStreams;
    long totalOutputStreams;
    long[] unpackSizes;

    int findBindPairForInStream(int i10) {
        int i11 = 0;
        while (true) {
            BindPair[] bindPairArr = this.bindPairs;
            if (i11 >= bindPairArr.length) {
                return -1;
            }
            if (bindPairArr[i11].inIndex == i10) {
                return i11;
            }
            i11++;
        }
    }

    int findBindPairForOutStream(int i10) {
        int i11 = 0;
        while (true) {
            BindPair[] bindPairArr = this.bindPairs;
            if (i11 >= bindPairArr.length) {
                return -1;
            }
            if (bindPairArr[i11].outIndex == i10) {
                return i11;
            }
            i11++;
        }
    }

    Iterable<Coder> getOrderedCoders() {
        LinkedList linkedList = new LinkedList();
        int i10 = (int) this.packedStreams[0];
        while (i10 != -1) {
            linkedList.addLast(this.coders[i10]);
            int iFindBindPairForOutStream = findBindPairForOutStream(i10);
            i10 = iFindBindPairForOutStream != -1 ? (int) this.bindPairs[iFindBindPairForOutStream].inIndex : -1;
        }
        return linkedList;
    }

    long getUnpackSize() {
        long j6 = this.totalOutputStreams;
        if (j6 == 0) {
            return 0L;
        }
        for (int i10 = ((int) j6) - 1; i10 >= 0; i10--) {
            if (findBindPairForOutStream(i10) < 0) {
                return this.unpackSizes[i10];
            }
        }
        return 0L;
    }

    long getUnpackSizeForCoder(Coder coder) {
        if (this.coders == null) {
            return 0L;
        }
        int i10 = 0;
        while (true) {
            Coder[] coderArr = this.coders;
            if (i10 >= coderArr.length) {
                return 0L;
            }
            if (coderArr[i10] == coder) {
                return this.unpackSizes[i10];
            }
            i10++;
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Folder with ");
        sb.append(this.coders.length);
        sb.append(" coders, ");
        sb.append(this.totalInputStreams);
        sb.append(" input streams, ");
        sb.append(this.totalOutputStreams);
        sb.append(" output streams, ");
        sb.append(this.bindPairs.length);
        sb.append(" bind pairs, ");
        sb.append(this.packedStreams.length);
        sb.append(" packed streams, ");
        sb.append(this.unpackSizes.length);
        sb.append(" unpack sizes, ");
        if (this.hasCrc) {
            str = "with CRC " + this.crc;
        } else {
            str = "without CRC";
        }
        sb.append(str);
        sb.append(" and ");
        sb.append(this.numUnpackSubStreams);
        sb.append(" unpack streams");
        return sb.toString();
    }

    Folder() {
    }
}
