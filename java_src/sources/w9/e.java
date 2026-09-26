package w9;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import org.bouncycastle.util.h;

/* JADX INFO: loaded from: classes10.dex */
public class e extends BufferedWriter {
    private static final int LINE_LENGTH = 64;
    private char[] buf;
    private final int nlLength;

    public e(Writer writer) {
        super(writer);
        this.buf = new char[64];
        String strD = h.d();
        this.nlLength = strD != null ? strD.length() : 2;
    }

    private void a(byte[] bArr) throws IOException {
        char[] cArr;
        int i10;
        byte[] bArrA = org.bouncycastle.util.encoders.a.a(bArr);
        int length = 0;
        while (length < bArrA.length) {
            int i11 = 0;
            while (true) {
                cArr = this.buf;
                if (i11 == cArr.length || (i10 = length + i11) >= bArrA.length) {
                    break;
                }
                cArr[i11] = (char) bArrA[i10];
                i11++;
            }
            write(cArr, 0, i11);
            newLine();
            length += this.buf.length;
        }
    }

    private void d(String str) throws IOException {
        write("-----END " + str + "-----");
        newLine();
    }

    private void e(String str) throws IOException {
        write("-----BEGIN " + str + "-----");
        newLine();
    }

    public void b(d dVar) throws IOException {
        c cVarA = dVar.a();
        e(cVarA.d());
        if (!cVarA.c().isEmpty()) {
            for (b bVar : cVarA.c()) {
                write(bVar.b());
                write(": ");
                write(bVar.c());
                newLine();
            }
            newLine();
        }
        a(cVarA.b());
        d(cVarA.d());
    }
}
