package s9;

import org.bouncycastle.asn1.f;
import w8.b;

/* JADX INFO: loaded from: classes9.dex */
public class a {
    public static byte[] a(w8.a aVar, f fVar) {
        try {
            return b(new b(aVar, fVar));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(b bVar) {
        try {
            return bVar.a("DER");
        } catch (Exception unused) {
            return null;
        }
    }
}
