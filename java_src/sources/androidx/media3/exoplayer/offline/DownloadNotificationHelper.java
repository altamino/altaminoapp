package androidx.media3.exoplayer.offline;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class DownloadNotificationHelper {

    @StringRes
    private static final int NULL_STRING_ID = 0;
    private final NotificationCompat.Builder notificationBuilder;

    @RequiresApi
    private static final class Api31 {
        @DoNotInline
        @SuppressLint({"WrongConstant"})
        public static void a(NotificationCompat.Builder builder) {
            builder.J(1);
        }

        private Api31() {
        }
    }

    public DownloadNotificationHelper(Context context, String str) {
        this.notificationBuilder = new NotificationCompat.Builder(context.getApplicationContext(), str);
    }
}
