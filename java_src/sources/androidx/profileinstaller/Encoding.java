package androidx.profileinstaller;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
class Encoding {
    static final int SIZEOF_BYTE = 8;
    static final int UINT_16_SIZE = 2;
    static final int UINT_32_SIZE = 4;
    static final int UINT_8_SIZE = 1;

    static int h(@NonNull InputStream inputStream) throws IOException {
        return (int) g(inputStream, 2);
    }

    static long i(@NonNull InputStream inputStream) throws IOException {
        return g(inputStream, 4);
    }

    static int j(@NonNull InputStream inputStream) throws IOException {
        return (int) g(inputStream, 1);
    }

    static void m(@NonNull OutputStream outputStream, byte[] bArr) throws IOException {
        q(outputStream, bArr.length);
        byte[] bArrB = b(bArr);
        q(outputStream, bArrB.length);
        outputStream.write(bArrB);
    }

    static void p(@NonNull OutputStream outputStream, int i10) throws IOException {
        o(outputStream, i10, 2);
    }

    static void q(@NonNull OutputStream outputStream, long j6) throws IOException {
        o(outputStream, j6, 4);
    }

    static void r(@NonNull OutputStream outputStream, int i10) throws IOException {
        o(outputStream, i10, 1);
    }

    static int a(int i10) {
        return ((i10 + 7) & (-8)) / 8;
    }

    static byte[] b(@NonNull byte[] bArr) throws IOException {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                try {
                    deflaterOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            deflater.end();
            throw th3;
        }
    }

    @NonNull
    static RuntimeException c(@Nullable String str) {
        return new IllegalStateException(str);
    }

    @NonNull
    static byte[] d(@NonNull InputStream inputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = inputStream.read(bArr, i11, i10 - i11);
            if (i12 < 0) {
                throw c("Not enough bytes to read: " + i10);
            }
            i11 += i12;
        }
        return bArr;
    }

    @NonNull
    static byte[] e(@NonNull InputStream inputStream, int i10, int i11) throws IOException {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i11];
            byte[] bArr2 = new byte[2048];
            int i12 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i12 < i10) {
                int i13 = inputStream.read(bArr2);
                if (i13 < 0) {
                    throw c("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i10 + " bytes");
                }
                inflater.setInput(bArr2, 0, i13);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i11 - iInflate);
                    i12 += i13;
                } catch (DataFormatException e) {
                    throw c(e.getMessage());
                }
            }
            if (i12 == i10) {
                if (!inflater.finished()) {
                    throw c("Inflater did not finish");
                }
                inflater.end();
                return bArr;
            }
            throw c("Didn't read enough bytes during decompression. expected=" + i10 + " actual=" + i12);
        } catch (Throwable th) {
            inflater.end();
            throw th;
        }
    }

    @NonNull
    static String f(InputStream inputStream, int i10) throws IOException {
        return new String(d(inputStream, i10), StandardCharsets.UTF_8);
    }

    static int k(@NonNull String str) {
        return str.getBytes(StandardCharsets.UTF_8).length;
    }

    static void l(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[512];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i10);
            }
        }
    }

    static void n(@NonNull OutputStream outputStream, @NonNull String str) throws IOException {
        outputStream.write(str.getBytes(StandardCharsets.UTF_8));
    }

    static void o(@NonNull OutputStream outputStream, long j6, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) ((j6 >> (i11 * 8)) & 255);
        }
        outputStream.write(bArr);
    }

    private Encoding() {
    }

    static long g(@NonNull InputStream inputStream, int i10) throws IOException {
        byte[] bArrD = d(inputStream, i10);
        long j6 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j6 += ((long) (bArrD[i11] & 255)) << (i11 * 8);
        }
        return j6;
    }
}
