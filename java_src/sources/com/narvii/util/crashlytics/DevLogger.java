package com.narvii.util.crashlytics;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.work.WorkRequest;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.navigator.Navigator;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.ABTest2;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.PendingIntentUtils;
import com.narvii.util.debug.ShowDebugTextFragment;
import com.narvii.util.log.LogEntry;
import com.narvii.util.log.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
public class DevLogger implements Logger {
    private int size;
    private long time0 = SystemClock.elapsedRealtime();
    private LinkedList<LogEntry> list = new LinkedList<>();

    public synchronized void appendTo(StringBuilder sb) {
        Iterator<LogEntry> it = this.list.iterator();
        while (it.hasNext()) {
            it.next().appendTo(sb);
        }
    }

    @Override // com.narvii.util.log.Logger
    public void log(int i10, String str, String str2, Throwable th) {
        synchronized (this) {
            try {
                LogEntry logEntryRemoveFirst = this.list.size() >= this.size ? this.list.removeFirst() : new LogEntry();
                logEntryRemoveFirst.time = SystemClock.elapsedRealtime() - this.time0;
                logEntryRemoveFirst.level = i10;
                logEntryRemoveFirst.tag = str;
                logEntryRemoveFirst.message = str2;
                logEntryRemoveFirst.error = th;
                this.list.addLast(logEntryRemoveFirst);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i10 == 6) {
            onError(str, str2, th);
        }
    }

    public DevLogger(int i10) {
        this.size = i10;
    }

    private void onError(String str, String str2, Throwable th) {
        NVApplication nVApplicationInstance = NVApplication.instance();
        try {
            NVToast.makeText(nVApplicationInstance, str2, 1).show();
        } catch (Exception unused) {
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(nVApplicationInstance);
        if (th == null) {
            th = Log.msgException(str2);
        }
        NotificationChannelHelper.setAlertChannel(builder);
        builder.E(str2);
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        builder.D(stringWriter.toString());
        builder.a0(R.drawable.ic_stat_notification_err);
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle(builder);
        bigTextStyle.x(stringWriter.toString());
        builder.f0(bigTextStyle);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://fragment/" + ShowDebugTextFragment.class.getName()));
        try {
            StringBuilder sb = new StringBuilder(stringWriter.toString());
            sb.append("\n\n");
            appendTo(sb);
            intent.putExtra("text", sb.toString());
        } catch (OutOfMemoryError e) {
            android.util.Log.e(Log.TAG, "OutOfMemory when build error log", e);
        }
        intent.addFlags(268435456);
        builder.C(PendingIntent.getActivity(nVApplicationInstance, 0, ((Navigator) NVApplication.instance().getService("navigator")).intentMapping(intent), PendingIntentUtils.INSTANCE.getCurrentImmutableFlag(134217728)));
        ((NotificationManager) nVApplicationInstance.getSystemService("notification")).notify((int) (SystemClock.elapsedRealtime() % WorkRequest.MIN_BACKOFF_MILLIS), builder.n());
    }

    public static String prefs(NVContext nVContext) {
        Context context = nVContext.getContext();
        StringBuilder sb = new StringBuilder();
        try {
            for (File file : new File(context.getFilesDir().getParentFile(), "shared_prefs").listFiles()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                fileInputStream.close();
                String str = new String(bArr);
                sb.append(file.getName());
                sb.append(":\n");
                sb.append(str);
                sb.append("\n\n");
            }
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    public static String summary(NVContext nVContext) {
        Context context = nVContext.getContext();
        PackageUtils packageUtils = new PackageUtils(context);
        StringBuilder sb = new StringBuilder();
        sb.append("appName: ");
        sb.append(packageUtils.getAppName());
        sb.append('\n');
        if (NVApplication.DEBUG) {
            sb.append("packageName: ");
            sb.append(context.getPackageName());
            sb.append('\n');
        }
        sb.append("appVersion: ");
        sb.append(packageUtils.getVersionName());
        sb.append('\n');
        sb.append("androidApi: ");
        sb.append(Build.VERSION.SDK_INT);
        sb.append('\n');
        sb.append("device: ");
        sb.append(Build.MODEL);
        sb.append(" (");
        sb.append(Build.MANUFACTURER);
        sb.append(")\n");
        sb.append("userAgent: ");
        sb.append(System.getProperty("http.agent"));
        sb.append('\n');
        AccountService accountService = (AccountService) nVContext.getService("account");
        if (accountService.hasAccount()) {
            sb.append("userId: ");
            sb.append(accountService.getUserId());
            sb.append('\n');
        }
        AuidService auidService = (AuidService) nVContext.getService("auid");
        sb.append("auid: ");
        sb.append(auidService.getAuid());
        sb.append('\n');
        sb.append(a0.a.n + ": ");
        sb.append(accountService.getDeviceId());
        sb.append('\n');
        if (accountService.getKeychainStatus() != 0) {
            sb.append("keychainStatus: ");
            sb.append(accountService.getKeychainStatus());
            sb.append('\n');
        }
        if (NVApplication.DEBUG) {
            sb.append("email: ");
            sb.append(accountService.getEmail());
            sb.append('\n');
        }
        if (accountService.hasAccount()) {
            sb.append("sid: ");
            sb.append(accountService.getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null));
            sb.append('\n');
        }
        SharedPreferences sharedPreferences = nVContext.getContext().getSharedPreferences("push", 0);
        sb.append("gcmToken: ");
        sb.append(sharedPreferences.getString("gcmToken", null));
        sb.append('\n');
        sb.append("ab: ");
        ABTest2.allTags(nVContext, sb);
        sb.append('\n');
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (configService.getCommunityId() > 0) {
            sb.append("communityId: ");
            sb.append(configService.getCommunityId());
            sb.append('\n');
        }
        return sb.toString();
    }
}
