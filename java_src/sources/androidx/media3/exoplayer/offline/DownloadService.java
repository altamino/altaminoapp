package androidx.media3.exoplayer.offline;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.NotificationUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.scheduler.Requirements;
import androidx.media3.exoplayer.scheduler.Scheduler;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public abstract class DownloadService extends Service {
    public static final String ACTION_ADD_DOWNLOAD = "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD";
    public static final String ACTION_INIT = "androidx.media3.exoplayer.downloadService.action.INIT";
    public static final String ACTION_PAUSE_DOWNLOADS = "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS";
    public static final String ACTION_REMOVE_ALL_DOWNLOADS = "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS";
    public static final String ACTION_REMOVE_DOWNLOAD = "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD";
    private static final String ACTION_RESTART = "androidx.media3.exoplayer.downloadService.action.RESTART";
    public static final String ACTION_RESUME_DOWNLOADS = "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS";
    public static final String ACTION_SET_REQUIREMENTS = "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS";
    public static final String ACTION_SET_STOP_REASON = "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON";
    public static final long DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL = 1000;
    public static final int FOREGROUND_NOTIFICATION_ID_NONE = 0;
    public static final String KEY_CONTENT_ID = "content_id";
    public static final String KEY_DOWNLOAD_REQUEST = "download_request";
    public static final String KEY_FOREGROUND = "foreground";
    public static final String KEY_REQUIREMENTS = "requirements";
    public static final String KEY_STOP_REASON = "stop_reason";
    private static final String TAG = "DownloadService";
    private static final HashMap<Class<? extends DownloadService>, DownloadManagerHelper> downloadManagerHelpers = new HashMap<>();

    @StringRes
    private final int channelDescriptionResourceId;

    @Nullable
    private final String channelId;

    @StringRes
    private final int channelNameResourceId;
    private DownloadManagerHelper downloadManagerHelper;

    @Nullable
    private final ForegroundNotificationUpdater foregroundNotificationUpdater;
    private boolean isDestroyed;
    private boolean isStopped;
    private int lastStartId;
    private boolean startedInForeground;
    private boolean taskRemoved;

    /* JADX INFO: Access modifiers changed from: private */
    static final class DownloadManagerHelper implements DownloadManager.Listener {
        private final Context context;
        private final DownloadManager downloadManager;

        @Nullable
        private DownloadService downloadService;
        private final boolean foregroundAllowed;
        private Requirements scheduledRequirements;

        @Nullable
        private final Scheduler scheduler;
        private final Class<? extends DownloadService> serviceClass;

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public /* synthetic */ void c(DownloadManager downloadManager, boolean z6) {
            i.a(this, downloadManager, z6);
        }

        private DownloadManagerHelper(Context context, DownloadManager downloadManager, boolean z6, @Nullable Scheduler scheduler, Class<? extends DownloadService> cls) {
            this.context = context;
            this.downloadManager = downloadManager;
            this.foregroundAllowed = z6;
            this.scheduler = scheduler;
            this.serviceClass = cls;
            downloadManager.d(this);
            q();
        }

        private void k() {
            Requirements requirements = new Requirements(0);
            if (o(requirements)) {
                this.scheduler.cancel();
                this.scheduledRequirements = requirements;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(DownloadService downloadService) {
            downloadService.q(this.downloadManager.e());
        }

        private void n() {
            if (this.foregroundAllowed) {
                try {
                    Util.g1(this.context, DownloadService.k(this.context, this.serviceClass, DownloadService.ACTION_RESTART));
                    return;
                } catch (IllegalStateException unused) {
                    Log.i(DownloadService.TAG, "Failed to restart (foreground launch restriction)");
                    return;
                }
            }
            try {
                this.context.startService(DownloadService.k(this.context, this.serviceClass, DownloadService.ACTION_INIT));
            } catch (IllegalStateException unused2) {
                Log.i(DownloadService.TAG, "Failed to restart (process is idle)");
            }
        }

        private boolean o(Requirements requirements) {
            return !Util.c(this.scheduledRequirements, requirements);
        }

        private boolean p() {
            DownloadService downloadService = this.downloadService;
            return downloadService == null || downloadService.m();
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void a(DownloadManager downloadManager, boolean z6) {
            if (z6 || downloadManager.f() || !p()) {
                return;
            }
            List<Download> listE = downloadManager.e();
            for (int i10 = 0; i10 < listE.size(); i10++) {
                if (listE.get(i10).state == 0) {
                    n();
                    return;
                }
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void b(DownloadManager downloadManager, Download download) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.p();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void e(DownloadManager downloadManager, Download download, @Nullable Exception exc) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.o(download);
            }
            if (p() && DownloadService.n(download.state)) {
                Log.i(DownloadService.TAG, "DownloadService wasn't running. Restarting.");
                n();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public final void f(DownloadManager downloadManager) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.r();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void g(DownloadManager downloadManager) {
            DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.q(downloadManager.e());
            }
        }

        public void j(final DownloadService downloadService) {
            Assertions.g(this.downloadService == null);
            this.downloadService = downloadService;
            if (this.downloadManager.k()) {
                Util.y().postAtFrontOfQueue(new Runnable() { // from class: androidx.media3.exoplayer.offline.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f570a.m(downloadService);
                    }
                });
            }
        }

        public void l(DownloadService downloadService) {
            Assertions.g(this.downloadService == downloadService);
            this.downloadService = null;
        }

        public boolean q() {
            boolean zL = this.downloadManager.l();
            if (this.scheduler == null) {
                return !zL;
            }
            if (!zL) {
                k();
                return true;
            }
            Requirements requirementsH = this.downloadManager.h();
            if (!this.scheduler.b(requirementsH).equals(requirementsH)) {
                k();
                return false;
            }
            if (!o(requirementsH)) {
                return true;
            }
            if (this.scheduler.a(requirementsH, this.context.getPackageName(), DownloadService.ACTION_RESTART)) {
                this.scheduledRequirements = requirementsH;
                return true;
            }
            Log.i(DownloadService.TAG, "Failed to schedule restart");
            k();
            return false;
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.Listener
        public void d(DownloadManager downloadManager, Requirements requirements, int i10) {
            q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ForegroundNotificationUpdater {
        private final Handler handler = new Handler(Looper.getMainLooper());
        private boolean notificationDisplayed;
        private final int notificationId;
        private boolean periodicUpdatesStarted;
        private final long updateInterval;

        public void d() {
            this.periodicUpdatesStarted = true;
            f();
        }

        public void e() {
            this.periodicUpdatesStarted = false;
            this.handler.removeCallbacksAndMessages(null);
        }

        public ForegroundNotificationUpdater(int i10, long j6) {
            this.notificationId = i10;
            this.updateInterval = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            DownloadManager downloadManager = ((DownloadManagerHelper) Assertions.e(DownloadService.this.downloadManagerHelper)).downloadManager;
            Notification notificationJ = DownloadService.this.j(downloadManager.e(), downloadManager.g());
            if (this.notificationDisplayed) {
                ((NotificationManager) DownloadService.this.getSystemService("notification")).notify(this.notificationId, notificationJ);
            } else {
                DownloadService.this.startForeground(this.notificationId, notificationJ);
                this.notificationDisplayed = true;
            }
            if (this.periodicUpdatesStarted) {
                this.handler.removeCallbacksAndMessages(null);
                this.handler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.offline.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f572a.f();
                    }
                }, this.updateInterval);
            }
        }

        public void b() {
            if (this.notificationDisplayed) {
                f();
            }
        }

        public void c() {
            if (this.notificationDisplayed) {
                return;
            }
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        return this.isStopped;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n(int i10) {
        return i10 == 2 || i10 == 5 || i10 == 7;
    }

    protected abstract DownloadManager i();

    protected abstract Notification j(List<Download> list, int i10);

    @Nullable
    protected abstract Scheduler l();

    @Override // android.app.Service
    public void onDestroy() {
        this.isDestroyed = true;
        ((DownloadManagerHelper) Assertions.e(this.downloadManagerHelper)).l(this);
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.e();
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.taskRemoved = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent k(Context context, Class<? extends DownloadService> cls, String str) {
        return new Intent(context, cls).setAction(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Download download) {
        if (this.foregroundNotificationUpdater != null) {
            if (n(download.state)) {
                this.foregroundNotificationUpdater.d();
            } else {
                this.foregroundNotificationUpdater.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(List<Download> list) {
        if (this.foregroundNotificationUpdater != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (n(list.get(i10).state)) {
                    this.foregroundNotificationUpdater.d();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.e();
        }
        if (((DownloadManagerHelper) Assertions.e(this.downloadManagerHelper)).q()) {
            if (Util.SDK_INT >= 28 || !this.taskRemoved) {
                this.isStopped |= stopSelfResult(this.lastStartId);
            } else {
                stopSelf();
                this.isStopped = true;
            }
        }
    }

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = this.channelId;
        if (str != null) {
            NotificationUtil.a(this, str, this.channelNameResourceId, this.channelDescriptionResourceId, 2);
        }
        Class<?> cls = getClass();
        HashMap<Class<? extends DownloadService>, DownloadManagerHelper> map = downloadManagerHelpers;
        DownloadManagerHelper downloadManagerHelper = map.get(cls);
        if (downloadManagerHelper == null) {
            boolean z6 = this.foregroundNotificationUpdater != null;
            Scheduler schedulerL = (z6 && (Util.SDK_INT < 31)) ? l() : null;
            DownloadManager downloadManagerI = i();
            downloadManagerI.v();
            downloadManagerHelper = new DownloadManagerHelper(getApplicationContext(), downloadManagerI, z6, schedulerL, cls);
            map.put((Class<? extends DownloadService>) cls, downloadManagerHelper);
        }
        this.downloadManagerHelper = downloadManagerHelper;
        downloadManagerHelper.j(this);
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i10, int i11) {
        String action;
        String stringExtra;
        ForegroundNotificationUpdater foregroundNotificationUpdater;
        this.lastStartId = i11;
        this.taskRemoved = false;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra(KEY_CONTENT_ID);
            this.startedInForeground |= intent.getBooleanExtra(KEY_FOREGROUND, false) || ACTION_RESTART.equals(action);
        } else {
            action = null;
            stringExtra = null;
        }
        if (action == null) {
            action = ACTION_INIT;
        }
        DownloadManager downloadManager = ((DownloadManagerHelper) Assertions.e(this.downloadManagerHelper)).downloadManager;
        switch (action) {
            case "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON":
                if (!((Intent) Assertions.e(intent)).hasExtra(KEY_STOP_REASON)) {
                    Log.c(TAG, "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                } else {
                    downloadManager.y(stringExtra, intent.getIntExtra(KEY_STOP_REASON, 0));
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD":
                if (stringExtra != null) {
                    downloadManager.u(stringExtra);
                    break;
                } else {
                    Log.c(TAG, "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.RESTART":
            case "androidx.media3.exoplayer.downloadService.action.INIT":
                break;
            case "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS":
                downloadManager.v();
                break;
            case "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS":
                downloadManager.t();
                break;
            case "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD":
                DownloadRequest downloadRequest = (DownloadRequest) ((Intent) Assertions.e(intent)).getParcelableExtra(KEY_DOWNLOAD_REQUEST);
                if (downloadRequest != null) {
                    downloadManager.c(downloadRequest, intent.getIntExtra(KEY_STOP_REASON, 0));
                    break;
                } else {
                    Log.c(TAG, "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS":
                Requirements requirements = (Requirements) ((Intent) Assertions.e(intent)).getParcelableExtra(KEY_REQUIREMENTS);
                if (requirements != null) {
                    downloadManager.x(requirements);
                    break;
                } else {
                    Log.c(TAG, "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS":
                downloadManager.s();
                break;
            default:
                Log.c(TAG, "Ignored unrecognized action: " + action);
                break;
        }
        if (Util.SDK_INT >= 26 && this.startedInForeground && (foregroundNotificationUpdater = this.foregroundNotificationUpdater) != null) {
            foregroundNotificationUpdater.c();
        }
        this.isStopped = false;
        if (downloadManager.j()) {
            r();
        }
        return 1;
    }
}
