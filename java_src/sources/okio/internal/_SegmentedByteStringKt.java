package okio.internal;

import e8.q;
import kotlin.collections.o;
import kotlin.jvm.internal.t;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;
import okio.SegmentedByteString;
import okio._UtilKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class _SegmentedByteStringKt {
    public static final boolean commonRangeEquals(@NotNull SegmentedByteString segmentedByteString, int i10, @NotNull ByteString other, int i11, int i12) {
        t.j(segmentedByteString, "<this>");
        t.j(other, "other");
        if (i10 < 0 || i10 > segmentedByteString.size() - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iSegment = segment(segmentedByteString, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i15 = segmentedByteString.getDirectory$okio()[iSegment] - i14;
            int i16 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!other.rangeEquals(i11, segmentedByteString.getSegments$okio()[iSegment], i16 + (i10 - i14), iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
        return true;
    }

    public static final void forEachSegment(@NotNull SegmentedByteString segmentedByteString, @NotNull q<? super byte[], ? super Integer, ? super Integer, l0> action) {
        t.j(segmentedByteString, "<this>");
        t.j(action, "action");
        int length = segmentedByteString.getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = segmentedByteString.getDirectory$okio()[length + i10];
            int i13 = segmentedByteString.getDirectory$okio()[i10];
            action.invoke(segmentedByteString.getSegments$okio()[i10], Integer.valueOf(i12), Integer.valueOf(i13 - i11));
            i10++;
            i11 = i13;
        }
    }

    public static final int binarySearch(@NotNull int[] iArr, int i10, int i11, int i12) {
        t.j(iArr, "<this>");
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i10) {
                i11 = i14 + 1;
            } else {
                if (i15 <= i10) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return (-i11) - 1;
    }

    public static final void commonCopyInto(@NotNull SegmentedByteString segmentedByteString, int i10, @NotNull byte[] target, int i11, int i12) {
        t.j(segmentedByteString, "<this>");
        t.j(target, "target");
        long j6 = i12;
        _UtilKt.checkOffsetAndCount(segmentedByteString.size(), i10, j6);
        _UtilKt.checkOffsetAndCount(target.length, i11, j6);
        int i13 = i12 + i10;
        int iSegment = segment(segmentedByteString, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i15 = segmentedByteString.getDirectory$okio()[iSegment] - i14;
            int i16 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            int i17 = i16 + (i10 - i14);
            o.d(segmentedByteString.getSegments$okio()[iSegment], target, i11, i17, i17 + iMin);
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonEquals(@NotNull SegmentedByteString segmentedByteString, @Nullable Object obj) {
        t.j(segmentedByteString, "<this>");
        if (obj == segmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == segmentedByteString.size() && segmentedByteString.rangeEquals(0, byteString, 0, segmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@NotNull SegmentedByteString segmentedByteString) {
        t.j(segmentedByteString, "<this>");
        return segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length - 1];
    }

    public static final int commonHashCode(@NotNull SegmentedByteString segmentedByteString) {
        t.j(segmentedByteString, "<this>");
        int hashCode$okio = segmentedByteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = segmentedByteString.getSegments$okio().length;
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (i10 < length) {
            int i13 = segmentedByteString.getDirectory$okio()[length + i10];
            int i14 = segmentedByteString.getDirectory$okio()[i10];
            byte[] bArr = segmentedByteString.getSegments$okio()[i10];
            int i15 = (i14 - i12) + i13;
            while (i13 < i15) {
                i11 = (i11 * 31) + bArr[i13];
                i13++;
            }
            i10++;
            i12 = i14;
        }
        segmentedByteString.setHashCode$okio(i11);
        return i11;
    }

    public static final byte commonInternalGet(@NotNull SegmentedByteString segmentedByteString, int i10) {
        t.j(segmentedByteString, "<this>");
        _UtilKt.checkOffsetAndCount(segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length - 1], i10, 1L);
        int iSegment = segment(segmentedByteString, i10);
        return segmentedByteString.getSegments$okio()[iSegment][(i10 - (iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1])) + segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment]];
    }

    @NotNull
    public static final ByteString commonSubstring(@NotNull SegmentedByteString segmentedByteString, int i10, int i11) {
        t.j(segmentedByteString, "<this>");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(segmentedByteString, i11);
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex=" + i10 + " < 0").toString());
        }
        if (iResolveDefaultParameter > segmentedByteString.size()) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + segmentedByteString.size() + ')').toString());
        }
        int i12 = iResolveDefaultParameter - i10;
        if (i12 < 0) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i10).toString());
        }
        if (i10 == 0 && iResolveDefaultParameter == segmentedByteString.size()) {
            return segmentedByteString;
        }
        if (i10 == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = segment(segmentedByteString, i10);
        int iSegment2 = segment(segmentedByteString, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) o.p(segmentedByteString.getSegments$okio(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i13 = iSegment;
            int i14 = 0;
            while (true) {
                iArr[i14] = Math.min(segmentedByteString.getDirectory$okio()[i13] - i10, i12);
                int i15 = i14 + 1;
                iArr[i14 + bArr.length] = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + i13];
                if (i13 == iSegment2) {
                    break;
                }
                i13++;
                i14 = i15;
            }
        }
        int i16 = iSegment != 0 ? segmentedByteString.getDirectory$okio()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i10 - i16);
        return new SegmentedByteString(bArr, iArr);
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull SegmentedByteString segmentedByteString) {
        t.j(segmentedByteString, "<this>");
        byte[] bArr = new byte[segmentedByteString.size()];
        int length = segmentedByteString.getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = segmentedByteString.getDirectory$okio()[length + i10];
            int i14 = segmentedByteString.getDirectory$okio()[i10];
            int i15 = i14 - i11;
            o.d(segmentedByteString.getSegments$okio()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    public static final void commonWrite(@NotNull SegmentedByteString segmentedByteString, @NotNull Buffer buffer, int i10, int i11) {
        t.j(segmentedByteString, "<this>");
        t.j(buffer, "buffer");
        int i12 = i10 + i11;
        int iSegment = segment(segmentedByteString, i10);
        while (i10 < i12) {
            int i13 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i14 = segmentedByteString.getDirectory$okio()[iSegment] - i13;
            int i15 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i10;
            int i16 = i15 + (i10 - i13);
            Segment segment = new Segment(segmentedByteString.getSegments$okio()[iSegment], i16, i16 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                t.g(segment2);
                Segment segment3 = segment2.prev;
                t.g(segment3);
                segment3.push(segment);
            }
            i10 += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + ((long) i11));
    }

    public static final int segment(@NotNull SegmentedByteString segmentedByteString, int i10) {
        t.j(segmentedByteString, "<this>");
        int iBinarySearch = binarySearch(segmentedByteString.getDirectory$okio(), i10 + 1, 0, segmentedByteString.getSegments$okio().length);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private static final void forEachSegment(SegmentedByteString segmentedByteString, int i10, int i11, q<? super byte[], ? super Integer, ? super Integer, l0> qVar) {
        int iSegment = segment(segmentedByteString, i10);
        while (i10 < i11) {
            int i12 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i13 = segmentedByteString.getDirectory$okio()[iSegment] - i12;
            int i14 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i11, i13 + i12) - i10;
            qVar.invoke(segmentedByteString.getSegments$okio()[iSegment], Integer.valueOf(i14 + (i10 - i12)), Integer.valueOf(iMin));
            i10 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonRangeEquals(@NotNull SegmentedByteString segmentedByteString, int i10, @NotNull byte[] other, int i11, int i12) {
        t.j(segmentedByteString, "<this>");
        t.j(other, "other");
        if (i10 < 0 || i10 > segmentedByteString.size() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iSegment = segment(segmentedByteString, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : segmentedByteString.getDirectory$okio()[iSegment - 1];
            int i15 = segmentedByteString.getDirectory$okio()[iSegment] - i14;
            int i16 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!_UtilKt.arrayRangeEquals(segmentedByteString.getSegments$okio()[iSegment], i16 + (i10 - i14), other, i11, iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
        return true;
    }
}
