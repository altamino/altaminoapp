package b9;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.math.ec.c;
import org.bouncycastle.math.ec.f;

/* JADX INFO: loaded from: classes10.dex */
public class a implements AlgorithmParameterSpec {
    private f G;
    private c curve;
    private BigInteger h;
    private BigInteger n;
    private byte[] seed;

    public a(c cVar, f fVar, BigInteger bigInteger) {
        this.curve = cVar;
        this.G = fVar.q();
        this.n = bigInteger;
        this.h = BigInteger.valueOf(1L);
        this.seed = null;
    }

    public c a() {
        return this.curve;
    }

    public f b() {
        return this.G;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return a().d(aVar.a()) && b().c(aVar.b());
    }

    public int hashCode() {
        return a().hashCode() ^ b().hashCode();
    }

    public a(c cVar, f fVar, BigInteger bigInteger, BigInteger bigInteger2) {
        this.curve = cVar;
        this.G = fVar.q();
        this.n = bigInteger;
        this.h = bigInteger2;
        this.seed = null;
    }

    public a(c cVar, f fVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.curve = cVar;
        this.G = fVar.q();
        this.n = bigInteger;
        this.h = bigInteger2;
        this.seed = bArr;
    }
}
