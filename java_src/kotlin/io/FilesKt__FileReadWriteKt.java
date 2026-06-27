package kotlin.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileReadWrite.kt */
/* loaded from: classes4.dex */
public class FilesKt__FileReadWriteKt extends FilesKt__FilePathComponentsKt {
    public static final byte[] readBytes(File readBytes) throws IOException {
        Intrinsics.checkParameterIsNotNull(readBytes, "$this$readBytes");
        FileInputStream fileInputStream = new FileInputStream(readBytes);
        int i = 0;
        try {
            long length = readBytes.length();
            if (length > Integer.MAX_VALUE) {
                throw new OutOfMemoryError("File " + readBytes + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i2 = (int) length;
            byte[] bArrCopyOf = new byte[i2];
            while (i2 > 0) {
                int i3 = fileInputStream.read(bArrCopyOf, i, i2);
                if (i3 < 0) {
                    break;
                }
                i2 -= i3;
                i += i3;
            }
            if (i2 != 0) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i);
                Intrinsics.checkExpressionValueIsNotNull(bArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
            }
            CloseableKt.closeFinally(fileInputStream, null);
            return bArrCopyOf;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static final void writeBytes(File writeBytes, byte[] array) throws IOException {
        Intrinsics.checkParameterIsNotNull(writeBytes, "$this$writeBytes");
        Intrinsics.checkParameterIsNotNull(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(writeBytes);
        try {
            fileOutputStream.write(array);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } finally {
        }
    }

    public static String readText(File readText, Charset charset) {
        Intrinsics.checkParameterIsNotNull(readText, "$this$readText");
        Intrinsics.checkParameterIsNotNull(charset, "charset");
        return new String(readBytes(readText), charset);
    }

    public static void writeText(File writeText, String text, Charset charset) throws IOException {
        Intrinsics.checkParameterIsNotNull(writeText, "$this$writeText");
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        writeBytes(writeText, bytes);
    }
}
