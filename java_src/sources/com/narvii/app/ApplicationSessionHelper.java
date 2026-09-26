package com.narvii.app;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.widget.Toast;
import com.narvii.config.ConfigService;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class ApplicationSessionHelper implements AutostartServiceProvider<ApplicationSessionHelper> {
    public static final long RESET_DURATION = 3600000;
    public static boolean RESET_ENABLED = false;
    public static final long SESSION_DURATION = 1200000;
    private static long lastPauseDuration;
    private static long lastPauseTime;
    protected static long mainCCid;
    protected static int masterCid;
    private static long newCreateActivityCid;
    private static int procId = Process.myPid();
    private static int sessionId;
    private static int taskId;

    public static int getMainCommunityId() {
        return (int) (4294967295L & mainCCid);
    }

    public static int getSessionId() {
        return sessionId;
    }

    public static int getTaskId() {
        return taskId;
    }

    public static boolean hasMainStacked() {
        return mainCCid != 0;
    }

    public static boolean hasMasterStacked() {
        return masterCid != 0;
    }

    private static boolean resetApp(final NVContext nVContext, long j6) {
        if (!RESET_ENABLED) {
            return false;
        }
        if ((nVContext.getContext() instanceof Activity) && ((Activity) nVContext.getContext()).getTaskId() != taskId) {
            return false;
        }
        if (((nVContext instanceof NVActivity) && nVContext.getContextId() == newCreateActivityCid) || j6 <= 3600000) {
            return false;
        }
        sessionId = (int) Utils.generateUniqueLongId();
        Utils.post(new Runnable() { // from class: com.narvii.app.ApplicationSessionHelper.1
            @Override // java.lang.Runnable
            public void run() {
                ApplicationSessionHelper.resetApp(nVContext);
                if (NVApplication.DEBUG) {
                    Toast.makeText(nVContext.getContext(), "RESET!", 0).show();
                }
            }
        });
        return true;
    }

    static boolean restore(NVActivity nVActivity, Bundle bundle) {
        int i10;
        if (bundle != null && (i10 = bundle.getInt("__procId", 0)) != procId) {
            procId = i10;
            sessionId = bundle.getInt("__procSessionId", 0);
            taskId = bundle.getInt("__procTaskId", 0);
            masterCid = bundle.getInt("__procMasterCid");
            mainCCid = bundle.getLong("__procMainCCid");
            lastPauseDuration = SystemClock.elapsedRealtime() - bundle.getLong("__procPauseTime", 0L);
            lastPauseTime = 0L;
            nVActivity.restoreProcess = true;
            Log.w("session " + sessionId + " restored, pauseDuration=" + lastPauseDuration + "ms, taskId=" + taskId + ", masterCid=" + masterCid + ", mainCCid=" + mainCCid);
            if (lastPauseDuration > SESSION_DURATION) {
                sessionId = (int) Utils.generateUniqueLongId();
            }
            if (resetApp(nVActivity, lastPauseDuration)) {
                lastPauseDuration = 0L;
                return true;
            }
        }
        return false;
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
    }

    public static void mainOpened(NVActivity nVActivity) {
        if (mainCCid == 0 && nVActivity.getTaskId() == taskId) {
            mainCCid = (nVActivity.getContextId() << 32) | (((long) ((ConfigService) nVActivity.getService("config")).getCommunityId()) & 4294967295L);
        }
    }

    public static void masterOpened(NVActivity nVActivity) {
        if (masterCid == 0 && nVActivity.getTaskId() == taskId) {
            masterCid = (int) nVActivity.getContextId();
        }
    }

    static void save(NVActivity nVActivity, Bundle bundle) {
        bundle.putInt("__procId", procId);
        bundle.putInt("__procSessionId", sessionId);
        bundle.putInt("__procTaskId", taskId);
        bundle.putInt("__procMasterCid", masterCid);
        bundle.putLong("__procMainCCid", mainCCid);
        bundle.putLong("__procPauseTime", SystemClock.elapsedRealtime());
    }

    static void setNewTask(int i10) {
        if (i10 != taskId) {
            if (i10 == 0) {
                Log.w("quit task " + taskId);
            } else if (masterCid == 0 && mainCCid == 0) {
                Log.i("new task " + i10);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("new task ");
                sb.append(i10);
                sb.append(" overrides old tasks ");
                sb.append(taskId);
                sb.append(" (");
                sb.append(masterCid == 0 ? "" : "master");
                sb.append(mainCCid != 0 ? "main" : "");
                sb.append(")");
                Log.w(sb.toString());
            }
            taskId = i10;
            masterCid = 0;
            mainCCid = 0L;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public ApplicationSessionHelper create(NVContext nVContext) {
        if ((nVContext instanceof NVActivity) && ((NVActivity) nVContext).newCreate) {
            newCreateActivityCid = nVContext.getContextId();
        }
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
        if (nVContext instanceof Application) {
            lastPauseTime = SystemClock.elapsedRealtime();
            lastPauseDuration = 0L;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
        if (!(nVContext instanceof Application)) {
            if (resetApp(nVContext, lastPauseDuration)) {
                lastPauseDuration = 0L;
                return;
            } else {
                if ((nVContext instanceof NVActivity) && nVContext.getContextId() == newCreateActivityCid) {
                    newCreateActivityCid = 0L;
                    return;
                }
                return;
            }
        }
        if (lastPauseTime == 0) {
            lastPauseDuration = 0L;
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - lastPauseTime;
        lastPauseDuration = jElapsedRealtime;
        lastPauseTime = 0L;
        if (jElapsedRealtime > SESSION_DURATION) {
            sessionId = (int) Utils.generateUniqueLongId();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
        if (nVContext instanceof Application) {
            lastPauseTime = 0L;
            lastPauseDuration = 0L;
            sessionId = (int) Utils.generateUniqueLongId();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
        if (nVContext instanceof Application) {
            lastPauseTime = 0L;
            lastPauseDuration = 0L;
        }
    }

    public static void mainFinished(NVActivity nVActivity) {
        if (nVActivity.getTaskId() == taskId) {
            if (mainCCid == ((nVActivity.getContextId() << 32) | (((long) ((ConfigService) nVActivity.getService("config")).getCommunityId()) & 4294967295L))) {
                mainCCid = 0L;
            }
        }
    }

    public static void masterFinished(NVActivity nVActivity) {
        if (nVActivity.getTaskId() == taskId) {
            if (masterCid == ((int) nVActivity.getContextId())) {
                masterCid = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void resetApp(NVContext nVContext) {
        Context context = nVContext.getContext();
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage == null) {
            return;
        }
        launchIntentForPackage.putExtra("noSplash", true);
        launchIntentForPackage.putExtra("__noInheritance", true);
        launchIntentForPackage.putExtra("__noMapping", true);
        launchIntentForPackage.setFlags(268468224);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, launchIntentForPackage);
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(0, 0);
        }
        taskId = 0;
        masterCid = 0;
        mainCCid = 0L;
    }
}
