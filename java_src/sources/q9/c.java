package q9;

import e9.f;
import e9.g;
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

/* JADX INFO: loaded from: classes11.dex */
public class c extends KeyFactorySpi implements a9.b {
    public PrivateKey a(v8.b bVar) throws IOException {
        f fVarP = f.p(bVar.s());
        return new a(fVarP.q(), fVarP.j(), fVarP.r(), fVarP.m(), fVarP.t(), fVarP.s());
    }

    public PublicKey b(w8.b bVar) throws IOException {
        g gVarR = g.r(bVar.q());
        return new b(gVarR.q(), gVarR.j(), gVarR.p(), gVarR.m());
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof u9.a) {
            return new a((u9.a) keySpec);
        }
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return a(v8.b.m(z.t(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof u9.b) {
            return new b((u9.b) keySpec);
        }
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return b(w8.b.m(((X509EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + keySpec + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof a) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
            if (u9.a.class.isAssignableFrom(cls)) {
                a aVar = (a) key;
                return new u9.a(aVar.c(), aVar.a(), aVar.d(), aVar.b(), aVar.f(), aVar.e());
            }
        } else {
            if (!(key instanceof b)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
            if (u9.b.class.isAssignableFrom(cls)) {
                b bVar = (b) key;
                return new u9.b(bVar.d(), bVar.a(), bVar.c(), bVar.b());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + cls + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof a) || (key instanceof b)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }
}
