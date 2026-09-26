package androidx.media3.ui;

import android.app.PendingIntent;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class DefaultMediaDescriptionAdapter implements PlayerNotificationManager.MediaDescriptionAdapter {

    @Nullable
    private final PendingIntent pendingIntent;

    public DefaultMediaDescriptionAdapter(@Nullable PendingIntent pendingIntent) {
        this.pendingIntent = pendingIntent;
    }
}
