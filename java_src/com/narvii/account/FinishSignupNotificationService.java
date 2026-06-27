package com.narvii.account;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import com.narvii.amino.mastes.R;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.PackageUtils;

/* loaded from: classes2.dex */
public class FinishSignupNotificationService extends IntentService {
    public FinishSignupNotificationService() {
        super("finishSignup");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        try {
            NotificationCompat.Builder builder = new NotificationCompat.Builder(this);
            builder.setSmallIcon(R.drawable.ic_notify);
            builder.setColor(-16724355);
            NotificationChannelHelper.setAlertChannel(builder);
            PackageUtils packageUtils = new PackageUtils(this);
            builder.setContentTitle(packageUtils.getAppName());
            String string = getString(R.string.account_finish_signup_notification, new Object[]{packageUtils.getAppName()});
            builder.setContentText(string);
            builder.setTicker(string);
            if (Build.VERSION.SDK_INT >= 16) {
                NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle(builder);
                bigTextStyle.bigText(string);
                builder.setStyle(bigTextStyle);
            }
            builder.setDefaults(5);
            builder.setAutoCancel(true);
            Intent intent2 = new Intent(this, (Class<?>) LoginActivity.class);
            intent2.putExtra("signupWakeup", true);
            intent2.putExtra("Source", "Signup Wakeup");
            builder.setContentIntent(PendingIntent.getActivity(this, R.id.ALT | (65535 & ((int) SystemClock.elapsedRealtime())), intent2, 134217728));
            ((NotificationManager) getSystemService("notification")).notify(LoginActivity.NOTIFY_ID, builder.getNotification());
        } catch (Exception unused) {
        }
    }
}
