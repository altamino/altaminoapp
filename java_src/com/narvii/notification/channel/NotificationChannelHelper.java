package com.narvii.notification.channel;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.services.AutostartServiceProvider;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class NotificationChannelHelper implements AutostartServiceProvider<Object> {
    public static final String CHANNEL_ALERT = "alert";
    public static final String CHANNEL_BROADCAST = "broadcast";
    public static final String CHANNEL_CHAT = "chat";
    public static final String CHANNEL_COMMUNITY_MANAGEMENT = "community-management";
    public static final String CHANNEL_NORMAL = "normal";
    NVContext nvContext;

    @Retention(RetentionPolicy.SOURCE)
    @interface ChannelId {
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        this.nvContext = nVContext;
        if (NVApplication.CLIENT_TYPE == 200) {
            initACMNotificationChannels();
        } else if (NVApplication.isStoryEditorApp()) {
            initStoryEditorNotificationChannels();
        } else {
            initNotificationChannels();
        }
        return this;
    }

    private void initStoryEditorNotificationChannels() {
        if (NVApplication.DEBUG) {
            createNotificationChannel(CHANNEL_ALERT, R.string.notification_channel_alert, 3);
        }
    }

    private void initACMNotificationChannels() {
        createNotificationChannel(CHANNEL_COMMUNITY_MANAGEMENT, R.string.notification_channel_community_management, 4);
    }

    private void createNotificationChannel(String str, int i, int i2) {
        createNotificationChannel(str, i, 0, i2);
    }

    private void createNotificationChannel(String str, int i, int i2, int i3) {
        Context context = this.nvContext.getContext();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(str, context.getString(i), i3);
            if (i2 != 0) {
                notificationChannel.setDescription(context.getString(i2));
            }
            if (i3 > 2) {
                notificationChannel.enableLights(true);
                notificationChannel.setVibrationPattern(new long[]{0, 240});
            }
            ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        }
    }

    public static void setChannelId(NotificationCompat.Builder builder, String str) {
        if (Build.VERSION.SDK_INT < 26 || builder == null) {
            return;
        }
        builder.setChannelId(str);
    }

    public static void setNormalChannel(NotificationCompat.Builder builder) {
        setChannelId(builder, CHANNEL_NORMAL);
    }

    public static void setAlertChannel(NotificationCompat.Builder builder) {
        setChannelId(builder, CHANNEL_ALERT);
    }

    private void initNotificationChannels() {
        createNotificationChannel("chat", R.string.notification_channel_chat, 4);
        createNotificationChannel(CHANNEL_ALERT, R.string.notification_channel_alert, 3);
        createNotificationChannel(CHANNEL_BROADCAST, R.string.notification_channel_broadcast, 4);
        createNotificationChannel(CHANNEL_NORMAL, R.string.notification_channel_normal, 2);
    }
}
