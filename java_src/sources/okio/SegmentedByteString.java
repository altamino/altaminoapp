package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okio.internal._SegmentedByteStringKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class SegmentedByteString extends ByteString {

    @NotNull
    private final transient int[] directory;

    @NotNull
    private final transient byte[][] segments;

    @Override // okio.ByteString
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final int[] getDirectory$okio() {
        return this.directory;
    }

    @NotNull
    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i10, @NotNull ByteString other, int i11, int i12) {
        kotlin.jvm.internal.t.j(other, "other");
        if (i10 < 0 || i10 > size() - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iSegment = _SegmentedByteStringKt.segment(this, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i15 = getDirectory$okio()[iSegment] - i14;
            int i16 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!other.rangeEquals(i11, getSegments$okio()[iSegment], i16 + (i10 - i14), iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(@NotNull byte[][] segments, @NotNull int[] directory) {
        super(ByteString.EMPTY.getData$okio());
        kotlin.jvm.internal.t.j(segments, "segments");
        kotlin.jvm.internal.t.j(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    @Override // okio.ByteString
    public void copyInto(int i10, @NotNull byte[] target, int i11, int i12) {
        kotlin.jvm.internal.t.j(target, "target");
        long j6 = i12;
        _UtilKt.checkOffsetAndCount(size(), i10, j6);
        _UtilKt.checkOffsetAndCount(target.length, i11, j6);
        int i13 = i12 + i10;
        int iSegment = _SegmentedByteStringKt.segment(this, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i15 = getDirectory$okio()[iSegment] - i14;
            int i16 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            int i17 = i16 + (i10 - i14);
            kotlin.collections.o.d(getSegments$okio()[iSegment], target, i11, i17, i17 + iMin);
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = getDirectory$okio()[length + i10];
            int i13 = getDirectory$okio()[i10];
            messageDigest.update(getSegments$okio()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] digestBytes = messageDigest.digest();
        kotlin.jvm.internal.t.i(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString hmac$okio(@NotNull String algorithm, @NotNull ByteString key) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        kotlin.jvm.internal.t.j(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments$okio().length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = getDirectory$okio()[length + i10];
                int i13 = getDirectory$okio()[i10];
                mac.update(getSegments$okio()[i10], i12, i13 - i11);
                i10++;
                i11 = i13;
            }
            byte[] bArrDoFinal = mac.doFinal();
            kotlin.jvm.internal.t.i(bArrDoFinal, "mac.doFinal()");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // okio.ByteString
    public int indexOf(@NotNull byte[] other, int i10) {
        kotlin.jvm.internal.t.j(other, "other");
        return toByteString().indexOf(other, i10);
    }

    @Override // okio.ByteString
    public int lastIndexOf(@NotNull byte[] other, int i10) {
        kotlin.jvm.internal.t.j(other, "other");
        return toByteString().lastIndexOf(other, i10);
    }

    @Override // okio.ByteString
    @NotNull
    public String string(@NotNull Charset charset) {
        kotlin.jvm.internal.t.j(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    public void write(@NotNull OutputStream out) throws IOException {
        kotlin.jvm.internal.t.j(out, "out");
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = getDirectory$okio()[length + i10];
            int i13 = getDirectory$okio()[i10];
            out.write(getSegments$okio()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
    }

    @Override // okio.ByteString
    public void write$okio(@NotNull Buffer buffer, int i10, int i11) {
        kotlin.jvm.internal.t.j(buffer, "buffer");
        int i12 = i10 + i11;
        int iSegment = _SegmentedByteStringKt.segment(this, i10);
        while (i10 < i12) {
            int i13 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i14 = getDirectory$okio()[iSegment] - i13;
            int i15 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i10;
            int i16 = i15 + (i10 - i13);
            Segment segment = new Segment(getSegments$okio()[iSegment], i16, i16 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                kotlin.jvm.internal.t.g(segment2);
                Segment segment3 = segment2.prev;
                kotlin.jvm.internal.t.g(segment3);
                segment3.push(segment);
            }
            i10 += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + ((long) i11));
    }

    private final Object writeReplace() {
        return toByteString();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        kotlin.jvm.internal.t.i(byteBufferAsReadOnlyBuffer, "wrap(toByteArray()).asReadOnlyBuffer()");
        return byteBufferAsReadOnlyBuffer;
    }

    @Override // okio.ByteString
    @NotNull
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    @NotNull
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio == 0) {
            int length = getSegments$okio().length;
            int i10 = 0;
            int i11 = 1;
            int i12 = 0;
            while (i10 < length) {
                int i13 = getDirectory$okio()[length + i10];
                int i14 = getDirectory$okio()[i10];
                byte[] bArr = getSegments$okio()[i10];
                int i15 = (i14 - i12) + i13;
                while (i13 < i15) {
                    i11 = (i11 * 31) + bArr[i13];
                    i13++;
                }
                i10++;
                i12 = i14;
            }
            setHashCode$okio(i11);
            return i11;
        }
        return hashCode$okio;
    }

    @Override // okio.ByteString
    @NotNull
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i10) {
        int i11;
        _UtilKt.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i10, 1L);
        int iSegment = _SegmentedByteStringKt.segment(this, i10);
        if (iSegment == 0) {
            i11 = 0;
        } else {
            i11 = getDirectory$okio()[iSegment - 1];
        }
        return getSegments$okio()[iSegment][(i10 - i11) + getDirectory$okio()[getSegments$okio().length + iSegment]];
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString substring(int i10, int i11) {
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i11);
        if (i10 >= 0) {
            if (iResolveDefaultParameter <= size()) {
                int i12 = iResolveDefaultParameter - i10;
                if (i12 >= 0) {
                    if (i10 == 0 && iResolveDefaultParameter == size()) {
                        return this;
                    }
                    if (i10 == iResolveDefaultParameter) {
                        return ByteString.EMPTY;
                    }
                    int iSegment = _SegmentedByteStringKt.segment(this, i10);
                    int iSegment2 = _SegmentedByteStringKt.segment(this, iResolveDefaultParameter - 1);
                    byte[][] bArr = (byte[][]) kotlin.collections.o.p(getSegments$okio(), iSegment, iSegment2 + 1);
                    int[] iArr = new int[bArr.length * 2];
                    int i13 = 0;
                    if (iSegment <= iSegment2) {
                        int i14 = iSegment;
                        int i15 = 0;
                        while (true) {
                            iArr[i15] = Math.min(getDirectory$okio()[i14] - i10, i12);
                            int i16 = i15 + 1;
                            iArr[i15 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i14];
                            if (i14 == iSegment2) {
                                break;
                            }
                            i14++;
                            i15 = i16;
                        }
                    }
                    if (iSegment != 0) {
                        i13 = getDirectory$okio()[iSegment - 1];
                    }
                    int length = bArr.length;
                    iArr[length] = iArr[length] + (i10 - i13);
                    return new SegmentedByteString(bArr, iArr);
                }
                throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i10).toString());
            }
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + size() + ')').toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i10 + " < 0").toString());
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = getDirectory$okio()[length + i10];
            int i14 = getDirectory$okio()[i10];
            int i15 = i14 - i11;
            kotlin.collections.o.d(getSegments$okio()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    @Override // okio.ByteString
    @NotNull
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i10, @NotNull byte[] other, int i11, int i12) {
        kotlin.jvm.internal.t.j(other, "other");
        if (i10 < 0 || i10 > size() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iSegment = _SegmentedByteStringKt.segment(this, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : getDirectory$okio()[iSegment - 1];
            int i15 = getDirectory$okio()[iSegment] - i14;
            int i16 = getDirectory$okio()[getSegments$okio().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!_UtilKt.arrayRangeEquals(getSegments$okio()[iSegment], i16 + (i10 - i14), other, i11, iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
        return true;
    }
}
