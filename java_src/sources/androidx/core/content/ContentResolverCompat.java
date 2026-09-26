package androidx.core.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public final class ContentResolverCompat {

    @RequiresApi
    static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            return contentResolver.query(uri, strArr, str, strArr2, str2, cancellationSignal);
        }
    }

    @Nullable
    public static Cursor a(@NonNull ContentResolver contentResolver, @NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2, @Nullable androidx.core.os.CancellationSignal cancellationSignal) throws Exception {
        Object objB;
        if (cancellationSignal != null) {
            try {
                objB = cancellationSignal.b();
            } catch (Exception e) {
                if (e instanceof OperationCanceledException) {
                    throw new androidx.core.os.OperationCanceledException();
                }
                throw e;
            }
        } else {
            objB = null;
        }
        return Api16Impl.a(contentResolver, uri, strArr, str, strArr2, str2, (CancellationSignal) objB);
    }

    private ContentResolverCompat() {
    }
}
