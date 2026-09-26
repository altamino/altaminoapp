package androidx.browser.trusted;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
@RestrictTo
class NotificationApiHelperForO {
    @Nullable
    static Notification a(Context context, NotificationManager notificationManager, Notification notification, String str, String str2) {
        notificationManager.createNotificationChannel(f.a(str, str2, 3));
        if (notificationManager.getNotificationChannel(str).getImportance() == 0) {
            return null;
        }
        Notification.Builder builderRecoverBuilder = Notification.Builder.recoverBuilder(context, notification);
        builderRecoverBuilder.setChannelId(str);
        return builderRecoverBuilder.build();
    }

    private NotificationApiHelperForO() {
    }

    static boolean b(NotificationManager notificationManager, String str) {
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
        if (notificationChannel != null && notificationChannel.getImportance() == 0) {
            return false;
        }
        return true;
    }
}
