package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okio.internal._ByteStringKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class ByteString implements Serializable, Comparable<ByteString> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;

    @NotNull
    private final byte[] data;
    private transient int hashCode;

    @Nullable
    private transient String utf8;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final ByteString m1789deprecated_of(@NotNull ByteBuffer buffer) {
            kotlin.jvm.internal.t.j(buffer, "buffer");
            return of(buffer);
        }

        @NotNull
        public final ByteString of(@NotNull ByteBuffer byteBuffer) {
            kotlin.jvm.internal.t.j(byteBuffer, "<this>");
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }

        private Companion() {
        }

        public static /* synthetic */ ByteString encodeString$default(Companion companion, String str, Charset charset, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                charset = kotlin.text.d.UTF_8;
            }
            return companion.encodeString(str, charset);
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = _UtilKt.getDEFAULT__ByteString_size();
            }
            return companion.of(bArr, i10, i11);
        }

        @Nullable
        /* JADX INFO: renamed from: -deprecated_decodeBase64, reason: not valid java name */
        public final ByteString m1785deprecated_decodeBase64(@NotNull String string) {
            kotlin.jvm.internal.t.j(string, "string");
            return decodeBase64(string);
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_decodeHex, reason: not valid java name */
        public final ByteString m1786deprecated_decodeHex(@NotNull String string) {
            kotlin.jvm.internal.t.j(string, "string");
            return decodeHex(string);
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_encodeString, reason: not valid java name */
        public final ByteString m1787deprecated_encodeString(@NotNull String string, @NotNull Charset charset) {
            kotlin.jvm.internal.t.j(string, "string");
            kotlin.jvm.internal.t.j(charset, "charset");
            return encodeString(string, charset);
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_encodeUtf8, reason: not valid java name */
        public final ByteString m1788deprecated_encodeUtf8(@NotNull String string) {
            kotlin.jvm.internal.t.j(string, "string");
            return encodeUtf8(string);
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final ByteString m1790deprecated_of(@NotNull byte[] array, int i10, int i11) {
            kotlin.jvm.internal.t.j(array, "array");
            return of(array, i10, i11);
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_read, reason: not valid java name */
        public final ByteString m1791deprecated_read(@NotNull InputStream inputstream, int i10) {
            kotlin.jvm.internal.t.j(inputstream, "inputstream");
            return read(inputstream, i10);
        }

        @Nullable
        public final ByteString decodeBase64(@NotNull String str) {
            kotlin.jvm.internal.t.j(str, "<this>");
            byte[] bArrDecodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
            if (bArrDecodeBase64ToArray != null) {
                return new ByteString(bArrDecodeBase64ToArray);
            }
            return null;
        }

        @NotNull
        public final ByteString decodeHex(@NotNull String str) {
            kotlin.jvm.internal.t.j(str, "<this>");
            if (str.length() % 2 != 0) {
                throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = i10 * 2;
                bArr[i10] = (byte) ((_ByteStringKt.decodeHexDigit(str.charAt(i11)) << 4) + _ByteStringKt.decodeHexDigit(str.charAt(i11 + 1)));
            }
            return new ByteString(bArr);
        }

        @NotNull
        public final ByteString encodeString(@NotNull String str, @NotNull Charset charset) {
            kotlin.jvm.internal.t.j(str, "<this>");
            kotlin.jvm.internal.t.j(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            kotlin.jvm.internal.t.i(bytes, "this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        @NotNull
        public final ByteString encodeUtf8(@NotNull String str) {
            kotlin.jvm.internal.t.j(str, "<this>");
            ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
            byteString.setUtf8$okio(str);
            return byteString;
        }

        @NotNull
        public final ByteString read(@NotNull InputStream inputStream, int i10) throws IOException {
            kotlin.jvm.internal.t.j(inputStream, "<this>");
            if (i10 < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + i10).toString());
            }
            byte[] bArr = new byte[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = inputStream.read(bArr, i11, i10 - i11);
                if (i12 == -1) {
                    throw new EOFException();
                }
                i11 += i12;
            }
            return new ByteString(bArr);
        }

        @NotNull
        public final ByteString of(@NotNull byte... data) {
            kotlin.jvm.internal.t.j(data, "data");
            byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
            kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, size)");
            return new ByteString(bArrCopyOf);
        }

        @NotNull
        public final ByteString of(@NotNull byte[] bArr, int i10, int i11) {
            kotlin.jvm.internal.t.j(bArr, "<this>");
            int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(bArr, i11);
            _UtilKt.checkOffsetAndCount(bArr.length, i10, iResolveDefaultParameter);
            return new ByteString(kotlin.collections.o.n(bArr, i10, iResolveDefaultParameter + i10));
        }
    }

    @Nullable
    public static final ByteString decodeBase64(@NotNull String str) {
        return Companion.decodeBase64(str);
    }

    @NotNull
    public static final ByteString decodeHex(@NotNull String str) {
        return Companion.decodeHex(str);
    }

    @NotNull
    public static final ByteString encodeString(@NotNull String str, @NotNull Charset charset) {
        return Companion.encodeString(str, charset);
    }

    @NotNull
    public static final ByteString encodeUtf8(@NotNull String str) {
        return Companion.encodeUtf8(str);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return byteString.indexOf(byteString2, i10);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.lastIndexOf(byteString2, i10);
    }

    @NotNull
    public static final ByteString of(@NotNull ByteBuffer byteBuffer) {
        return Companion.of(byteBuffer);
    }

    @NotNull
    public static final ByteString read(@NotNull InputStream inputStream, int i10) throws IOException {
        return Companion.read(inputStream, i10);
    }

    public final boolean endsWith(@NotNull ByteString suffix) {
        kotlin.jvm.internal.t.j(suffix, "suffix");
        return rangeEquals(size() - suffix.size(), suffix, 0, suffix.size());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final byte[] getData$okio() {
        return this.data;
    }

    public final int getHashCode$okio() {
        return this.hashCode;
    }

    @Nullable
    public final String getUtf8$okio() {
        return this.utf8;
    }

    public final int indexOf(@NotNull ByteString other) {
        kotlin.jvm.internal.t.j(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    public final int lastIndexOf(@NotNull ByteString other) {
        kotlin.jvm.internal.t.j(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    public boolean rangeEquals(int i10, @NotNull ByteString other, int i11, int i12) {
        kotlin.jvm.internal.t.j(other, "other");
        return other.rangeEquals(i11, getData$okio(), i10, i12);
    }

    public final void setHashCode$okio(int i10) {
        this.hashCode = i10;
    }

    public final void setUtf8$okio(@Nullable String str) {
        this.utf8 = str;
    }

    public final boolean startsWith(@NotNull ByteString prefix) {
        kotlin.jvm.internal.t.j(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.size());
    }

    @NotNull
    public final ByteString substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    @NotNull
    public ByteString toAsciiLowercase() {
        byte b7;
        for (int i10 = 0; i10 < getData$okio().length; i10++) {
            byte b10 = getData$okio()[i10];
            byte b11 = (byte) 65;
            if (b10 >= b11 && b10 <= (b7 = (byte) 90)) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b12 = bArrCopyOf[i11];
                    if (b12 >= b11 && b12 <= b7) {
                        bArrCopyOf[i11] = (byte) (b12 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return this;
    }

    @NotNull
    public ByteString toAsciiUppercase() {
        byte b7;
        for (int i10 = 0; i10 < getData$okio().length; i10++) {
            byte b10 = getData$okio()[i10];
            byte b11 = (byte) 97;
            if (b10 >= b11 && b10 <= (b7 = (byte) 122)) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b12 = bArrCopyOf[i11];
                    if (b12 >= b11 && b12 <= b7) {
                        bArrCopyOf[i11] = (byte) (b12 - 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return this;
    }

    public ByteString(@NotNull byte[] data) {
        kotlin.jvm.internal.t.j(data, "data");
        this.data = data;
    }

    public static /* synthetic */ void copyInto$default(ByteString byteString, int i10, byte[] bArr, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
        }
        if ((i13 & 1) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        byteString.copyInto(i10, bArr, i11, i12);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return byteString.indexOf(bArr, i10);
    }

    @NotNull
    public static final ByteString of(@NotNull byte... bArr) {
        return Companion.of(bArr);
    }

    public static /* synthetic */ ByteString substring$default(ByteString byteString, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
        }
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.substring(i10, i11);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    @NotNull
    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(this.data).asReadOnlyBuffer();
        kotlin.jvm.internal.t.i(byteBufferAsReadOnlyBuffer, "wrap(data).asReadOnlyBuffer()");
        return byteBufferAsReadOnlyBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        if (r0 < r1) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
    
        if (r7 < r8) goto L9;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int compareTo(@NotNull ByteString other) {
        kotlin.jvm.internal.t.j(other, "other");
        int size = size();
        int size2 = other.size();
        int iMin = Math.min(size, size2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int i11 = getByte(i10) & 255;
            int i12 = other.getByte(i10) & 255;
            if (i11 == i12) {
            }
        }
        if (size == size2) {
            return 0;
        }
    }

    public void copyInto(int i10, @NotNull byte[] target, int i11, int i12) {
        kotlin.jvm.internal.t.j(target, "target");
        kotlin.collections.o.d(getData$okio(), target, i11, i10, i12 + i10);
    }

    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(this.data, 0, size());
        byte[] digestBytes = messageDigest.digest();
        kotlin.jvm.internal.t.i(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    public final boolean endsWith(@NotNull byte[] suffix) {
        kotlin.jvm.internal.t.j(suffix, "suffix");
        return rangeEquals(size() - suffix.length, suffix, 0, suffix.length);
    }

    @NotNull
    public ByteString hmac$okio(@NotNull String algorithm, @NotNull ByteString key) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        kotlin.jvm.internal.t.j(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            byte[] bArrDoFinal = mac.doFinal(this.data);
            kotlin.jvm.internal.t.i(bArrDoFinal, "mac.doFinal(data)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @NotNull
    public ByteString hmacSha1(@NotNull ByteString key) {
        kotlin.jvm.internal.t.j(key, "key");
        return hmac$okio("HmacSHA1", key);
    }

    @NotNull
    public ByteString hmacSha256(@NotNull ByteString key) {
        kotlin.jvm.internal.t.j(key, "key");
        return hmac$okio("HmacSHA256", key);
    }

    @NotNull
    public ByteString hmacSha512(@NotNull ByteString key) {
        kotlin.jvm.internal.t.j(key, "key");
        return hmac$okio("HmacSHA512", key);
    }

    public final int indexOf(@NotNull byte[] other) {
        kotlin.jvm.internal.t.j(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    public final int lastIndexOf(@NotNull byte[] other) {
        kotlin.jvm.internal.t.j(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    @NotNull
    public final ByteString md5() {
        return digest$okio("MD5");
    }

    public boolean rangeEquals(int i10, @NotNull byte[] other, int i11, int i12) {
        kotlin.jvm.internal.t.j(other, "other");
        return i10 >= 0 && i10 <= getData$okio().length - i12 && i11 >= 0 && i11 <= other.length - i12 && _UtilKt.arrayRangeEquals(getData$okio(), i10, other, i11, i12);
    }

    @NotNull
    public final ByteString sha1() {
        return digest$okio("SHA-1");
    }

    @NotNull
    public final ByteString sha256() {
        return digest$okio(l9.p.SHA_256);
    }

    @NotNull
    public final ByteString sha512() {
        return digest$okio(l9.p.SHA_512);
    }

    public final boolean startsWith(@NotNull byte[] prefix) {
        kotlin.jvm.internal.t.j(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.length);
    }

    @NotNull
    public String string(@NotNull Charset charset) {
        kotlin.jvm.internal.t.j(charset, "charset");
        return new String(this.data, charset);
    }

    @NotNull
    public final ByteString substring(int i10) {
        return substring$default(this, i10, 0, 2, null);
    }

    public void write(@NotNull OutputStream out) throws IOException {
        kotlin.jvm.internal.t.j(out, "out");
        out.write(this.data);
    }

    public void write$okio(@NotNull Buffer buffer, int i10, int i11) {
        kotlin.jvm.internal.t.j(buffer, "buffer");
        _ByteStringKt.commonWrite(this, buffer, i10, i11);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.lastIndexOf(bArr, i10);
    }

    @NotNull
    public static final ByteString of(@NotNull byte[] bArr, int i10, int i11) {
        return Companion.of(bArr, i10, i11);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException {
        ByteString byteString = Companion.read(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, byteString.data);
    }

    /* JADX INFO: renamed from: -deprecated_getByte, reason: not valid java name */
    public final byte m1783deprecated_getByte(int i10) {
        return getByte(i10);
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m1784deprecated_size() {
        return size();
    }

    @NotNull
    public String base64() {
        return _Base64Kt.encodeBase64$default(getData$okio(), null, 1, null);
    }

    @NotNull
    public String base64Url() {
        return _Base64Kt.encodeBase64(getData$okio(), _Base64Kt.getBASE64_URL_SAFE());
    }

    public final byte getByte(int i10) {
        return internalGet$okio(i10);
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio == 0) {
            int iHashCode = Arrays.hashCode(getData$okio());
            setHashCode$okio(iHashCode);
            return iHashCode;
        }
        return hashCode$okio;
    }

    @NotNull
    public String hex() {
        char[] cArr = new char[getData$okio().length * 2];
        int i10 = 0;
        for (byte b7 : getData$okio()) {
            int i11 = i10 + 1;
            cArr[i10] = _ByteStringKt.getHEX_DIGIT_CHARS()[(b7 >> 4) & 15];
            i10 += 2;
            cArr[i11] = _ByteStringKt.getHEX_DIGIT_CHARS()[b7 & com.google.common.base.c.SI];
        }
        return kotlin.text.t.q(cArr);
    }

    public final int indexOf(@NotNull ByteString other, int i10) {
        kotlin.jvm.internal.t.j(other, "other");
        return indexOf(other.internalArray$okio(), i10);
    }

    @NotNull
    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i10) {
        return getData$okio()[i10];
    }

    public final int lastIndexOf(@NotNull ByteString other, int i10) {
        kotlin.jvm.internal.t.j(other, "other");
        return lastIndexOf(other.internalArray$okio(), i10);
    }

    public final int size() {
        return getSize$okio();
    }

    @NotNull
    public ByteString substring(int i10, int i11) {
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i11);
        if (i10 >= 0) {
            if (iResolveDefaultParameter <= getData$okio().length) {
                if (iResolveDefaultParameter - i10 >= 0) {
                    return (i10 == 0 && iResolveDefaultParameter == getData$okio().length) ? this : new ByteString(kotlin.collections.o.n(getData$okio(), i10, iResolveDefaultParameter));
                }
                throw new IllegalArgumentException("endIndex < beginIndex".toString());
            }
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0".toString());
    }

    @NotNull
    public byte[] toByteArray() {
        byte[] data$okio = getData$okio();
        byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
        kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    @NotNull
    public String toString() {
        ByteString byteString;
        String str;
        if (getData$okio().length != 0) {
            int iCodePointIndexToCharIndex = _ByteStringKt.codePointIndexToCharIndex(getData$okio(), 64);
            if (iCodePointIndexToCharIndex == -1) {
                if (getData$okio().length <= 64) {
                    str = "[hex=" + hex() + kotlinx.serialization.json.internal.b.END_LIST;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("[size=");
                    sb.append(getData$okio().length);
                    sb.append(" hex=");
                    int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, 64);
                    if (iResolveDefaultParameter <= getData$okio().length) {
                        if (iResolveDefaultParameter >= 0) {
                            if (iResolveDefaultParameter == getData$okio().length) {
                                byteString = this;
                            } else {
                                byteString = new ByteString(kotlin.collections.o.n(getData$okio(), 0, iResolveDefaultParameter));
                            }
                            sb.append(byteString.hex());
                            sb.append("…]");
                            return sb.toString();
                        }
                        throw new IllegalArgumentException("endIndex < beginIndex".toString());
                    }
                    throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
                }
            } else {
                String strUtf8 = utf8();
                String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
                kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strG = kotlin.text.t.G(kotlin.text.t.G(kotlin.text.t.G(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
                if (iCodePointIndexToCharIndex < strUtf8.length()) {
                    return "[size=" + getData$okio().length + " text=" + strG + "…]";
                }
                return "[text=" + strG + kotlinx.serialization.json.internal.b.END_LIST;
            }
        } else {
            str = "[size=0]";
        }
        return str;
    }

    @NotNull
    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio == null) {
            String utf8String = _JvmPlatformKt.toUtf8String(internalArray$okio());
            setUtf8$okio(utf8String);
            return utf8String;
        }
        return utf8$okio;
    }

    public int indexOf(@NotNull byte[] other, int i10) {
        kotlin.jvm.internal.t.j(other, "other");
        int length = getData$okio().length - other.length;
        int iMax = Math.max(i10, 0);
        if (iMax <= length) {
            while (!_UtilKt.arrayRangeEquals(getData$okio(), iMax, other, 0, other.length)) {
                if (iMax != length) {
                    iMax++;
                }
            }
            return iMax;
        }
        return -1;
    }

    public int lastIndexOf(@NotNull byte[] other, int i10) {
        kotlin.jvm.internal.t.j(other, "other");
        for (int iMin = Math.min(_UtilKt.resolveDefaultParameter(this, i10), getData$okio().length - other.length); -1 < iMin; iMin--) {
            if (_UtilKt.arrayRangeEquals(getData$okio(), iMin, other, 0, other.length)) {
                return iMin;
            }
        }
        return -1;
    }
}
