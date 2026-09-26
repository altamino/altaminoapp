package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.collections.d0;
import kotlin.collections.p;
import kotlin.collections.w;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.v0;
import kotlin.text.u;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class CertificatePinner {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final CertificatePinner DEFAULT = new Builder().build();

    @Nullable
    private final CertificateChainCleaner certificateChainCleaner;

    @NotNull
    private final Set<Pin> pins;

    public static final class Builder {

        @NotNull
        private final List<Pin> pins = new ArrayList();

        @NotNull
        public final List<Pin> getPins() {
            return this.pins;
        }

        @NotNull
        public final Builder add(@NotNull String pattern, @NotNull String... pins) {
            t.j(pattern, "pattern");
            t.j(pins, "pins");
            int length = pins.length;
            int i10 = 0;
            while (i10 < length) {
                String str = pins[i10];
                i10++;
                getPins().add(new Pin(pattern, str));
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final CertificatePinner build() {
            return new CertificatePinner(d0.Y0(this.pins), null, 2, 0 == true ? 1 : 0);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final String pin(@NotNull Certificate certificate) {
            t.j(certificate, "certificate");
            if (certificate instanceof X509Certificate) {
                return t.s("sha256/", sha256Hash((X509Certificate) certificate).base64());
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates".toString());
        }

        @NotNull
        public final ByteString sha1Hash(@NotNull X509Certificate x509Certificate) {
            t.j(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            t.i(encoded, "publicKey.encoded");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha1();
        }

        @NotNull
        public final ByteString sha256Hash(@NotNull X509Certificate x509Certificate) {
            t.j(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            t.i(encoded, "publicKey.encoded");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha256();
        }
    }

    public static final class Pin {

        @NotNull
        private final ByteString hash;

        @NotNull
        private final String hashAlgorithm;

        @NotNull
        private final String pattern;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return t.e(this.pattern, pin.pattern) && t.e(this.hashAlgorithm, pin.hashAlgorithm) && t.e(this.hash, pin.hash);
        }

        @NotNull
        public final ByteString getHash() {
            return this.hash;
        }

        @NotNull
        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        @NotNull
        public final String getPattern() {
            return this.pattern;
        }

        public Pin(@NotNull String pattern, @NotNull String pin) {
            t.j(pattern, "pattern");
            t.j(pin, "pin");
            if ((!kotlin.text.t.K(pattern, "*.", false, 2, null) || u.c0(pattern, "*", 1, false, 4, null) != -1) && ((!kotlin.text.t.K(pattern, "**.", false, 2, null) || u.c0(pattern, "*", 2, false, 4, null) != -1) && u.c0(pattern, "*", 0, false, 6, null) != -1)) {
                throw new IllegalArgumentException(t.s("Unexpected pattern: ", pattern).toString());
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(pattern);
            if (canonicalHost == null) {
                throw new IllegalArgumentException(t.s("Invalid pattern: ", pattern));
            }
            this.pattern = canonicalHost;
            if (kotlin.text.t.K(pin, "sha1/", false, 2, null)) {
                this.hashAlgorithm = "sha1";
                ByteString.Companion companion = ByteString.Companion;
                String strSubstring = pin.substring(5);
                t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                ByteString byteStringDecodeBase64 = companion.decodeBase64(strSubstring);
                if (byteStringDecodeBase64 == null) {
                    throw new IllegalArgumentException(t.s("Invalid pin hash: ", pin));
                }
                this.hash = byteStringDecodeBase64;
                return;
            }
            if (!kotlin.text.t.K(pin, "sha256/", false, 2, null)) {
                throw new IllegalArgumentException(t.s("pins must start with 'sha256/' or 'sha1/': ", pin));
            }
            this.hashAlgorithm = "sha256";
            ByteString.Companion companion2 = ByteString.Companion;
            String strSubstring2 = pin.substring(7);
            t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            ByteString byteStringDecodeBase65 = companion2.decodeBase64(strSubstring2);
            if (byteStringDecodeBase65 == null) {
                throw new IllegalArgumentException(t.s("Invalid pin hash: ", pin));
            }
            this.hash = byteStringDecodeBase65;
        }

        public int hashCode() {
            return (((this.pattern.hashCode() * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        public final boolean matchesCertificate(@NotNull X509Certificate certificate) {
            t.j(certificate, "certificate");
            String str = this.hashAlgorithm;
            if (t.e(str, "sha256")) {
                return t.e(this.hash, CertificatePinner.Companion.sha256Hash(certificate));
            }
            if (t.e(str, "sha1")) {
                return t.e(this.hash, CertificatePinner.Companion.sha1Hash(certificate));
            }
            return false;
        }

        public final boolean matchesHostname(@NotNull String hostname) {
            t.j(hostname, "hostname");
            if (kotlin.text.t.K(this.pattern, "**.", false, 2, null)) {
                int length = this.pattern.length() - 3;
                int length2 = hostname.length() - length;
                if (!kotlin.text.t.B(hostname, hostname.length() - length, this.pattern, 3, length, false, 16, null)) {
                    return false;
                }
                if (length2 != 0 && hostname.charAt(length2 - 1) != '.') {
                    return false;
                }
            } else {
                if (!kotlin.text.t.K(this.pattern, "*.", false, 2, null)) {
                    return t.e(hostname, this.pattern);
                }
                int length3 = this.pattern.length() - 1;
                int length4 = hostname.length() - length3;
                if (!kotlin.text.t.B(hostname, hostname.length() - length3, this.pattern, 1, length3, false, 16, null) || u.h0(hostname, '.', length4 - 1, false, 4, null) != -1) {
                    return false;
                }
            }
            return true;
        }

        @NotNull
        public String toString() {
            return this.hashAlgorithm + '/' + this.hash.base64();
        }
    }

    /* JADX INFO: renamed from: okhttp3.CertificatePinner$check$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<List<? extends X509Certificate>> {
        final /* synthetic */ String $hostname;
        final /* synthetic */ List<Certificate> $peerCertificates;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(List<? extends Certificate> list, String str) {
            super(0);
            this.$peerCertificates = list;
            this.$hostname = str;
        }

        @Override // e8.a
        @NotNull
        public final List<? extends X509Certificate> invoke() {
            CertificateChainCleaner certificateChainCleaner$okhttp = CertificatePinner.this.getCertificateChainCleaner$okhttp();
            List<Certificate> listClean = certificateChainCleaner$okhttp == null ? null : certificateChainCleaner$okhttp.clean(this.$peerCertificates, this.$hostname);
            if (listClean == null) {
                listClean = this.$peerCertificates;
            }
            List<Certificate> list = listClean;
            ArrayList arrayList = new ArrayList(w.x(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add((X509Certificate) ((Certificate) it.next()));
            }
            return arrayList;
        }
    }

    public CertificatePinner(@NotNull Set<Pin> pins, @Nullable CertificateChainCleaner certificateChainCleaner) {
        t.j(pins, "pins");
        this.pins = pins;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    @NotNull
    public static final String pin(@NotNull Certificate certificate) {
        return Companion.pin(certificate);
    }

    @NotNull
    public static final ByteString sha1Hash(@NotNull X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    @NotNull
    public static final ByteString sha256Hash(@NotNull X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public final void check(@NotNull String hostname, @NotNull List<? extends Certificate> peerCertificates) throws SSLPeerUnverifiedException {
        t.j(hostname, "hostname");
        t.j(peerCertificates, "peerCertificates");
        check$okhttp(hostname, new AnonymousClass1(peerCertificates, hostname));
    }

    @Nullable
    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    @NotNull
    public final Set<Pin> getPins() {
        return this.pins;
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i10, k kVar) {
        this(set, (i10 & 2) != 0 ? null : certificateChainCleaner);
    }

    public final void check(@NotNull String hostname, @NotNull Certificate... peerCertificates) throws SSLPeerUnverifiedException {
        t.j(hostname, "hostname");
        t.j(peerCertificates, "peerCertificates");
        check(hostname, p.t0(peerCertificates));
    }

    public final void check$okhttp(@NotNull String hostname, @NotNull e8.a<? extends List<? extends X509Certificate>> cleanedPeerCertificatesFn) throws SSLPeerUnverifiedException {
        t.j(hostname, "hostname");
        t.j(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List<Pin> listFindMatchingPins = findMatchingPins(hostname);
        if (listFindMatchingPins.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> listInvoke = cleanedPeerCertificatesFn.invoke();
        for (X509Certificate x509Certificate : listInvoke) {
            ByteString byteStringSha256Hash = null;
            ByteString byteStringSha1Hash = null;
            for (Pin pin : listFindMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                if (t.e(hashAlgorithm, "sha256")) {
                    if (byteStringSha256Hash == null) {
                        byteStringSha256Hash = Companion.sha256Hash(x509Certificate);
                    }
                    if (t.e(pin.getHash(), byteStringSha256Hash)) {
                        return;
                    }
                } else {
                    if (!t.e(hashAlgorithm, "sha1")) {
                        throw new AssertionError(t.s("unsupported hashAlgorithm: ", pin.getHashAlgorithm()));
                    }
                    if (byteStringSha1Hash == null) {
                        byteStringSha1Hash = Companion.sha1Hash(x509Certificate);
                    }
                    if (t.e(pin.getHash(), byteStringSha1Hash)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : listInvoke) {
            sb.append("\n    ");
            sb.append(Companion.pin(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(hostname);
        sb.append(":");
        for (Pin pin2 : listFindMatchingPins) {
            sb.append("\n    ");
            sb.append(pin2);
        }
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(string);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (t.e(certificatePinner.pins, this.pins) && t.e(certificatePinner.certificateChainCleaner, this.certificateChainCleaner)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<Pin> findMatchingPins(@NotNull String hostname) {
        t.j(hostname, "hostname");
        Set<Pin> set = this.pins;
        List<Pin> listM = kotlin.collections.v.m();
        for (Object obj : set) {
            if (((Pin) obj).matchesHostname(hostname)) {
                if (listM.isEmpty()) {
                    listM = new ArrayList<>();
                }
                v0.c(listM).add(obj);
            }
        }
        return listM;
    }

    public int hashCode() {
        int iHashCode = (1517 + this.pins.hashCode()) * 41;
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return iHashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    @NotNull
    public final CertificatePinner withCertificateChainCleaner$okhttp(@NotNull CertificateChainCleaner certificateChainCleaner) {
        t.j(certificateChainCleaner, "certificateChainCleaner");
        return t.e(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }
}
