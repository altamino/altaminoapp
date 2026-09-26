package y;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.io.StringWriter;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.security.auth.x500.X500Principal;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.text.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.threeten.bp.f;
import org.threeten.bp.r;
import org.threeten.bp.u;
import w7.l0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final e f3368a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final AtomicBoolean f3369b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final m f3370c = o.a(a.q);

    @NotNull
    private static final m d = o.a(b.q);

    static final class a extends v implements e8.a<KeyStore> {
        public static final a q = new a();

        a() {
            super(0);
        }

        @Override // e8.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final KeyStore invoke() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return keyStore;
        }
    }

    static final class b extends v implements e8.a<Signature> {
        public static final b q = new b();

        b() {
            super(0);
        }

        @Override // e8.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Signature invoke() {
            return Signature.getInstance("SHA256withECDSA");
        }
    }

    private final String[] a(Certificate[] certificateArr) throws IOException {
        String[] strArr = new String[certificateArr.length];
        int length = certificateArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            Certificate certificate = certificateArr[i10];
            int i12 = i11 + 1;
            StringWriter stringWriter = new StringWriter();
            w9.e eVar = new w9.e(stringWriter);
            try {
                eVar.b(new w9.c("CERTIFICATE", certificate.getEncoded()));
                l0 l0Var = l0.INSTANCE;
                kotlin.io.c.a(eVar, null);
                String string = stringWriter.toString();
                t.i(string, "toString(...)");
                strArr[i11] = w.f1(string, 1);
                i10++;
                i11 = i12;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.c.a(eVar, th);
                    throw th2;
                }
            }
        }
        return strArr;
    }

    private final KeyPair e(Context context, String str, u uVar) {
        try {
            return d(this, context, str, false, uVar, false, 16, null);
        } catch (Exception e) {
            FirebaseAnalytics.getInstance(context).c("ka_kp_gen_with_att_fail", "true");
            t(context, e);
            return null;
        }
    }

    @Nullable
    public static final String[] c(@NotNull Context context, @NotNull String alias) {
        Certificate[] certificateChain;
        t.j(context, "context");
        t.j(alias, "alias");
        e eVar = f3368a;
        eVar.m(context);
        if (f(eVar, context, alias, null, 4, null) == null || (certificateChain = eVar.g().getCertificateChain(alias)) == null) {
            return null;
        }
        return (String[]) p.J(eVar.a(certificateChain)).toArray(new String[0]);
    }

    static /* synthetic */ KeyPair d(e eVar, Context context, String str, boolean z6, u uVar, boolean z10, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            z10 = false;
        }
        return eVar.b(context, str, z6, uVar, z10);
    }

    static /* synthetic */ KeyPair f(e eVar, Context context, String str, u uVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            uVar = null;
        }
        return eVar.e(context, str, uVar);
    }

    private final KeyStore g() {
        Object value = f3370c.getValue();
        t.i(value, "getValue(...)");
        return (KeyStore) value;
    }

    private final u h() {
        return u.G(r.q("UTC"));
    }

    private final Signature j() {
        Object value = d.getValue();
        t.i(value, "getValue(...)");
        return (Signature) value;
    }

    private final boolean k(Context context) {
        return Build.VERSION.SDK_INT >= 31 && context.getPackageManager().hasSystemFeature("android.software.device_id_attestation");
    }

    private final boolean l(Context context) {
        return Build.VERSION.SDK_INT >= 28 && context.getPackageManager().hasSystemFeature("android.hardware.strongbox_keystore");
    }

    public static final void n() {
        f3369b.set(true);
    }

    public static final boolean o() {
        return f3369b.getAndSet(false);
    }

    @SuppressLint({"WrongConstant"})
    private final void p(KeyGenParameterSpec.Builder builder, int i10) {
        if (Build.VERSION.SDK_INT >= 30) {
            builder.setUserAuthenticationParameters(i10, 2);
        } else {
            builder.setUserAuthenticationValidityDurationSeconds(i10);
        }
    }

    @Nullable
    public static final String q(@NotNull byte[] dataToSign, @NotNull String alias) throws NoSuchAlgorithmException, UnrecoverableKeyException, SignatureException, InvalidKeyException, KeyStoreException {
        t.j(dataToSign, "dataToSign");
        t.j(alias, "alias");
        e eVar = f3368a;
        Key key = eVar.g().getKey(alias, null);
        PrivateKey privateKey = key instanceof PrivateKey ? (PrivateKey) key : null;
        if (privateKey != null) {
            Signature signatureJ = eVar.j();
            signatureJ.initSign(privateKey);
            signatureJ.update(dataToSign);
            byte[] bArrSign = signatureJ.sign();
            if (bArrSign != null) {
                String strEncodeToString = Base64.encodeToString(bArrSign, 0);
                t.g(strEncodeToString);
                return kotlin.text.t.G(strEncodeToString, "\n", "", false, 4, null);
            }
        }
        return null;
    }

    public static final void r() {
        f3369b.set(true);
    }

    private final void u(Context context, u uVar, u uVar2) {
        u uVarI = u.I(f.EPOCH, r.q("UTC"));
        if (uVar.q(uVarI) || uVar2.q(uVarI)) {
            FirebaseAnalytics.getInstance(context).c("ka_kp_gen_incorrect_date", "Device date is wrong");
        }
    }

    private e() {
    }

    private final KeyPair b(Context context, String str, boolean z6, u uVar, boolean z10) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        u uVarH = h();
        if (uVar == null) {
            uVar = i();
        }
        t.g(uVarH);
        t.g(uVar);
        u(context, uVarH, uVar);
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC", "AndroidKeyStore");
        t.i(keyPairGenerator, "getInstance(...)");
        KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder(str, 4);
        builder.setCertificateSubject(new X500Principal("CN=" + str));
        builder.setDigests(l9.p.SHA_256);
        e eVar = f3368a;
        builder.setCertificateNotBefore(eVar.s(uVarH));
        builder.setCertificateNotAfter(eVar.s(uVar));
        if (Build.VERSION.SDK_INT >= 24 && !z6) {
            String string = eVar.s(uVarH).toString();
            t.i(string, "toString(...)");
            byte[] bytes = string.getBytes(kotlin.text.d.UTF_8);
            t.i(bytes, "getBytes(...)");
            builder.setAttestationChallenge(bytes);
        }
        builder.setKeyValidityStart(eVar.s(uVarH));
        builder.setKeyValidityEnd(eVar.s(uVar));
        builder.setUserAuthenticationRequired(z10);
        if (z10) {
            eVar.p(builder, 30);
        }
        if (eVar.l(context)) {
            builder.setIsStrongBoxBacked(true);
        }
        if (eVar.k(context)) {
            builder.setDevicePropertiesAttestationIncluded(true);
        }
        KeyGenParameterSpec keyGenParameterSpecBuild = builder.build();
        t.i(keyGenParameterSpecBuild, "run(...)");
        keyPairGenerator.initialize(keyGenParameterSpecBuild);
        return keyPairGenerator.genKeyPair();
    }

    private final u i() {
        return h().N(3L);
    }

    private final void m(Context context) {
        u5.a.a(context);
    }

    private final Date s(u uVar) {
        return org.threeten.bp.c.a(uVar.u());
    }

    private final void t(Context context, Exception exc) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
        t.i(firebaseAnalytics, "getInstance(...)");
        firebaseAnalytics.c("ka_kp_generation_failed", "true");
        firebaseAnalytics.c("ka_kp_gen_exception", exc.getClass().toString());
        String localizedMessage = exc.getLocalizedMessage();
        if (localizedMessage != null) {
            String strSubstring = localizedMessage.substring(0, j8.o.j(localizedMessage.length(), 36));
            t.i(strSubstring, "substring(...)");
            firebaseAnalytics.c("ka_kp_gen_exception_msg", strSubstring);
        }
    }
}
