package androidx.exifinterface.media;

import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.system.ErrnoException;
import android.system.Os;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes8.dex */
class ExifInterfaceUtils {
    private static final String TAG = "ExifInterfaceUtils";

    static boolean e(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void a(FileDescriptor fileDescriptor) throws ErrnoException {
            Os.close(fileDescriptor);
        }

        @DoNotInline
        static FileDescriptor b(FileDescriptor fileDescriptor) throws ErrnoException {
            return Os.dup(fileDescriptor);
        }

        @DoNotInline
        static long c(FileDescriptor fileDescriptor, long j6, int i10) throws ErrnoException {
            return Os.lseek(fileDescriptor, j6, i10);
        }
    }

    @RequiresApi
    static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static void a(MediaMetadataRetriever mediaMetadataRetriever, MediaDataSource mediaDataSource) {
            mediaMetadataRetriever.setDataSource(mediaDataSource);
        }
    }

    static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b7 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b7)));
        }
        return sb.toString();
    }

    static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    static long[] d(Object obj) {
        if (!(obj instanceof int[])) {
            if (obj instanceof long[]) {
                return (long[]) obj;
            }
            return null;
        }
        int[] iArr = (int[]) obj;
        long[] jArr = new long[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            jArr[i10] = iArr[i10];
        }
        return jArr;
    }

    private ExifInterfaceUtils() {
    }

    static void b(FileDescriptor fileDescriptor) {
        try {
            Api21Impl.a(fileDescriptor);
        } catch (Exception unused) {
            Log.e(TAG, "Error closing fd.");
        }
    }
}
