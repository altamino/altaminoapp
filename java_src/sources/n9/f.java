package n9;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes10.dex */
public class f extends KeyFactorySpi implements a9.b {
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.4.1";

    @Override // java.security.KeyFactorySpi
    protected PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            v8.b bVarM = v8.b.m(z.t(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!e9.e.mcEliece.s(bVarM.p().j())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
                }
                e9.c cVarP = e9.c.p(bVarM.s());
                return new c(new g9.f(cVarP.r(), cVarP.q(), cVarP.j(), cVarP.m(), cVarP.s(), cVarP.t(), cVarP.u()));
            } catch (IOException unused) {
                throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec.");
            }
        } catch (IOException e) {
            throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec: " + e);
        }
    }

    @Override // java.security.KeyFactorySpi
    protected PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            w8.b bVarM = w8.b.m(z.t(((X509EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (!e9.e.mcEliece.s(bVarM.j().j())) {
                    throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
                }
                e9.d dVarM = e9.d.m(bVarM.q());
                return new d(new g9.g(dVarM.p(), dVarM.q(), dVarM.j()));
            } catch (IOException e) {
                throw new InvalidKeySpecException("Unable to decode X509EncodedKeySpec: " + e.getMessage());
            }
        } catch (IOException e2) {
            throw new InvalidKeySpecException(e2.toString());
        }
    }

    @Override // java.security.KeyFactorySpi
    protected KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        return null;
    }

    @Override // java.security.KeyFactorySpi
    protected Key engineTranslateKey(Key key) throws InvalidKeyException {
        return null;
    }
}
