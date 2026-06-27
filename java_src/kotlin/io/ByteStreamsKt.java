package kotlin.io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IOStreams.kt */
/* loaded from: classes4.dex */
public final class ByteStreamsKt {
    public static /* synthetic */ long copyTo$default(InputStream inputStream, OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return copyTo(inputStream, outputStream, i);
    }

    public static final long copyTo(InputStream copyTo, OutputStream out, int i) throws IOException {
        Intrinsics.checkParameterIsNotNull(copyTo, "$this$copyTo");
        Intrinsics.checkParameterIsNotNull(out, "out");
        byte[] bArr = new byte[i];
        int i2 = copyTo.read(bArr);
        long j = 0;
        while (i2 >= 0) {
            out.write(bArr, 0, i2);
            j += i2;
            i2 = copyTo.read(bArr);
        }
        return j;
    }

    public static final byte[] readBytes(InputStream readBytes) {
        Intrinsics.checkParameterIsNotNull(readBytes, "$this$readBytes");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, readBytes.available()));
        copyTo$default(readBytes, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkExpressionValueIsNotNull(byteArray, "buffer.toByteArray()");
        return byteArray;
    }
}
