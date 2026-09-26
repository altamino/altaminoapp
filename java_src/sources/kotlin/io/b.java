package kotlin.io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class b {
    public static final long a(@NotNull InputStream inputStream, @NotNull OutputStream out, int i10) throws IOException {
        t.j(inputStream, "<this>");
        t.j(out, "out");
        byte[] bArr = new byte[i10];
        int i11 = inputStream.read(bArr);
        long j6 = 0;
        while (i11 >= 0) {
            out.write(bArr, 0, i11);
            j6 += (long) i11;
            i11 = inputStream.read(bArr);
        }
        return j6;
    }

    public static /* synthetic */ long b(InputStream inputStream, OutputStream outputStream, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        return a(inputStream, outputStream, i10);
    }

    @NotNull
    public static final byte[] c(@NotNull InputStream inputStream) {
        t.j(inputStream, "<this>");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        b(inputStream, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        t.i(byteArray, "toByteArray(...)");
        return byteArray;
    }
}
