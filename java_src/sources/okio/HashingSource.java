package okio;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class HashingSource extends ForwardingSource {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private final Mac mac;

    @Nullable
    private final MessageDigest messageDigest;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final HashingSource hmacSha1(@NotNull Source source, @NotNull ByteString key) {
            kotlin.jvm.internal.t.j(source, "source");
            kotlin.jvm.internal.t.j(key, "key");
            return new HashingSource(source, key, "HmacSHA1");
        }

        @NotNull
        public final HashingSource hmacSha256(@NotNull Source source, @NotNull ByteString key) {
            kotlin.jvm.internal.t.j(source, "source");
            kotlin.jvm.internal.t.j(key, "key");
            return new HashingSource(source, key, "HmacSHA256");
        }

        @NotNull
        public final HashingSource hmacSha512(@NotNull Source source, @NotNull ByteString key) {
            kotlin.jvm.internal.t.j(source, "source");
            kotlin.jvm.internal.t.j(key, "key");
            return new HashingSource(source, key, "HmacSHA512");
        }

        @NotNull
        public final HashingSource md5(@NotNull Source source) {
            kotlin.jvm.internal.t.j(source, "source");
            return new HashingSource(source, "MD5");
        }

        @NotNull
        public final HashingSource sha1(@NotNull Source source) {
            kotlin.jvm.internal.t.j(source, "source");
            return new HashingSource(source, "SHA-1");
        }

        @NotNull
        public final HashingSource sha256(@NotNull Source source) {
            kotlin.jvm.internal.t.j(source, "source");
            return new HashingSource(source, l9.p.SHA_256);
        }

        @NotNull
        public final HashingSource sha512(@NotNull Source source) {
            kotlin.jvm.internal.t.j(source, "source");
            return new HashingSource(source, l9.p.SHA_512);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(@NotNull Source source, @NotNull MessageDigest digest) {
        super(source);
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(digest, "digest");
        this.messageDigest = digest;
        this.mac = null;
    }

    @NotNull
    public static final HashingSource hmacSha1(@NotNull Source source, @NotNull ByteString byteString) {
        return Companion.hmacSha1(source, byteString);
    }

    @NotNull
    public static final HashingSource hmacSha256(@NotNull Source source, @NotNull ByteString byteString) {
        return Companion.hmacSha256(source, byteString);
    }

    @NotNull
    public static final HashingSource hmacSha512(@NotNull Source source, @NotNull ByteString byteString) {
        return Companion.hmacSha512(source, byteString);
    }

    @NotNull
    public static final HashingSource md5(@NotNull Source source) {
        return Companion.md5(source);
    }

    @NotNull
    public static final HashingSource sha1(@NotNull Source source) {
        return Companion.sha1(source);
    }

    @NotNull
    public static final HashingSource sha256(@NotNull Source source) {
        return Companion.sha256(source);
    }

    @NotNull
    public static final HashingSource sha512(@NotNull Source source) {
        return Companion.sha512(source);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSource(@NotNull Source source, @NotNull String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        kotlin.jvm.internal.t.i(messageDigest, "getInstance(algorithm)");
        this(source, messageDigest);
    }

    @NotNull
    public final ByteString hash() {
        byte[] result;
        MessageDigest messageDigest = this.messageDigest;
        if (messageDigest != null) {
            result = messageDigest.digest();
        } else {
            Mac mac = this.mac;
            kotlin.jvm.internal.t.g(mac);
            result = mac.doFinal();
        }
        kotlin.jvm.internal.t.i(result, "result");
        return new ByteString(result);
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(@NotNull Buffer sink, long j6) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        long j10 = super.read(sink, j6);
        if (j10 != -1) {
            long size = sink.size() - j10;
            long size2 = sink.size();
            Segment segment = sink.head;
            kotlin.jvm.internal.t.g(segment);
            while (size2 > size) {
                segment = segment.prev;
                kotlin.jvm.internal.t.g(segment);
                size2 -= (long) (segment.limit - segment.pos);
            }
            while (size2 < sink.size()) {
                int i10 = (int) ((((long) segment.pos) + size) - size2);
                MessageDigest messageDigest = this.messageDigest;
                if (messageDigest != null) {
                    messageDigest.update(segment.data, i10, segment.limit - i10);
                } else {
                    Mac mac = this.mac;
                    kotlin.jvm.internal.t.g(mac);
                    mac.update(segment.data, i10, segment.limit - i10);
                }
                size2 += (long) (segment.limit - segment.pos);
                segment = segment.next;
                kotlin.jvm.internal.t.g(segment);
                size = size2;
            }
        }
        return j10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(@NotNull Source source, @NotNull Mac mac) {
        super(source);
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(mac, "mac");
        this.mac = mac;
        this.messageDigest = null;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_hash, reason: not valid java name */
    public final ByteString m1800deprecated_hash() {
        return hash();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSource(@NotNull Source source, @NotNull ByteString key, @NotNull String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            l0 l0Var = l0.INSTANCE;
            kotlin.jvm.internal.t.i(mac, "try {\n      Mac.getInsta…rgumentException(e)\n    }");
            this(source, mac);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
