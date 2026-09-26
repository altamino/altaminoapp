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

/* JADX INFO: loaded from: classes9.dex */
public final class HashingSink extends ForwardingSink {

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
        public final HashingSink hmacSha1(@NotNull Sink sink, @NotNull ByteString key) {
            kotlin.jvm.internal.t.j(sink, "sink");
            kotlin.jvm.internal.t.j(key, "key");
            return new HashingSink(sink, key, "HmacSHA1");
        }

        @NotNull
        public final HashingSink hmacSha256(@NotNull Sink sink, @NotNull ByteString key) {
            kotlin.jvm.internal.t.j(sink, "sink");
            kotlin.jvm.internal.t.j(key, "key");
            return new HashingSink(sink, key, "HmacSHA256");
        }

        @NotNull
        public final HashingSink hmacSha512(@NotNull Sink sink, @NotNull ByteString key) {
            kotlin.jvm.internal.t.j(sink, "sink");
            kotlin.jvm.internal.t.j(key, "key");
            return new HashingSink(sink, key, "HmacSHA512");
        }

        @NotNull
        public final HashingSink md5(@NotNull Sink sink) {
            kotlin.jvm.internal.t.j(sink, "sink");
            return new HashingSink(sink, "MD5");
        }

        @NotNull
        public final HashingSink sha1(@NotNull Sink sink) {
            kotlin.jvm.internal.t.j(sink, "sink");
            return new HashingSink(sink, "SHA-1");
        }

        @NotNull
        public final HashingSink sha256(@NotNull Sink sink) {
            kotlin.jvm.internal.t.j(sink, "sink");
            return new HashingSink(sink, l9.p.SHA_256);
        }

        @NotNull
        public final HashingSink sha512(@NotNull Sink sink) {
            kotlin.jvm.internal.t.j(sink, "sink");
            return new HashingSink(sink, l9.p.SHA_512);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(@NotNull Sink sink, @NotNull MessageDigest digest) {
        super(sink);
        kotlin.jvm.internal.t.j(sink, "sink");
        kotlin.jvm.internal.t.j(digest, "digest");
        this.messageDigest = digest;
        this.mac = null;
    }

    @NotNull
    public static final HashingSink hmacSha1(@NotNull Sink sink, @NotNull ByteString byteString) {
        return Companion.hmacSha1(sink, byteString);
    }

    @NotNull
    public static final HashingSink hmacSha256(@NotNull Sink sink, @NotNull ByteString byteString) {
        return Companion.hmacSha256(sink, byteString);
    }

    @NotNull
    public static final HashingSink hmacSha512(@NotNull Sink sink, @NotNull ByteString byteString) {
        return Companion.hmacSha512(sink, byteString);
    }

    @NotNull
    public static final HashingSink md5(@NotNull Sink sink) {
        return Companion.md5(sink);
    }

    @NotNull
    public static final HashingSink sha1(@NotNull Sink sink) {
        return Companion.sha1(sink);
    }

    @NotNull
    public static final HashingSink sha256(@NotNull Sink sink) {
        return Companion.sha256(sink);
    }

    @NotNull
    public static final HashingSink sha512(@NotNull Sink sink) {
        return Companion.sha512(sink);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSink(@NotNull Sink sink, @NotNull String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(sink, "sink");
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        kotlin.jvm.internal.t.i(messageDigest, "getInstance(algorithm)");
        this(sink, messageDigest);
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

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@NotNull Buffer source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        _UtilKt.checkOffsetAndCount(source.size(), 0L, j6);
        Segment segment = source.head;
        kotlin.jvm.internal.t.g(segment);
        long j10 = 0;
        while (j10 < j6) {
            int iMin = (int) Math.min(j6 - j10, segment.limit - segment.pos);
            MessageDigest messageDigest = this.messageDigest;
            if (messageDigest != null) {
                messageDigest.update(segment.data, segment.pos, iMin);
            } else {
                Mac mac = this.mac;
                kotlin.jvm.internal.t.g(mac);
                mac.update(segment.data, segment.pos, iMin);
            }
            j10 += (long) iMin;
            segment = segment.next;
            kotlin.jvm.internal.t.g(segment);
        }
        super.write(source, j6);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(@NotNull Sink sink, @NotNull Mac mac) {
        super(sink);
        kotlin.jvm.internal.t.j(sink, "sink");
        kotlin.jvm.internal.t.j(mac, "mac");
        this.mac = mac;
        this.messageDigest = null;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_hash, reason: not valid java name */
    public final ByteString m1799deprecated_hash() {
        return hash();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSink(@NotNull Sink sink, @NotNull ByteString key, @NotNull String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.t.j(sink, "sink");
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(algorithm, "algorithm");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            l0 l0Var = l0.INSTANCE;
            kotlin.jvm.internal.t.i(mac, "try {\n      Mac.getInsta…rgumentException(e)\n    }");
            this(sink, mac);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
