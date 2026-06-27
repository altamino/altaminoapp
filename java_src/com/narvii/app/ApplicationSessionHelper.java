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

/* loaded from: classes.dex */
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

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
    }

    public static int getSessionId() {
        return sessionId;
    }

    public static int getTaskId() {
        return taskId;
    }

    static void setNewTask(int i) {
        if (i != taskId) {
            if (i == 0) {
                Log.w("quit task " + taskId);
            } else if (masterCid != 0 || mainCCid != 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("new task ");
                sb.append(i);
                sb.append(" overrides old tasks ");
                sb.append(taskId);
                sb.append(" (");
                sb.append(masterCid == 0 ? "" : "master");
                sb.append(mainCCid != 0 ? "main" : "");
                sb.append(")");
                Log.w(sb.toString());
            } else {
                Log.i("new task " + i);
            }
            taskId = i;
            masterCid = 0;
            mainCCid = 0L;
        }
    }

    public static boolean hasMasterStacked() {
        return masterCid != 0;
    }

    public static boolean hasMainStacked() {
        return mainCCid != 0;
    }

    public static int getMainCommunityId() {
        return (int) (mainCCid & 4294967295L);
    }

    static boolean restore(NVActivity nVActivity, Bundle bundle) {
        int i;
        if (bundle != null && (i = bundle.getInt("__procId", 0)) != procId) {
            procId = i;
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

    static void save(NVActivity nVActivity, Bundle bundle) {
        bundle.putInt("__procId", procId);
        bundle.putInt("__procSessionId", sessionId);
        bundle.putInt("__procTaskId", taskId);
        bundle.putInt("__procMasterCid", masterCid);
        bundle.putLong("__procMainCCid", mainCCid);
        bundle.putLong("__procPauseTime", SystemClock.elapsedRealtime());
    }

    private static boolean resetApp(final NVContext nVContext, long j) {
        if (!RESET_ENABLED) {
            return false;
        }
        if ((nVContext.getContext() instanceof Activity) && ((Activity) nVContext.getContext()).getTaskId() != taskId) {
            return false;
        }
        if (((nVContext instanceof NVActivity) && nVContext.getContextId() == newCreateActivityCid) || j <= 3600000) {
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
        nVContext.startActivity(launchIntentForPackage);
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(0, 0);
        }
        taskId = 0;
        masterCid = 0;
        mainCCid = 0L;
    }

    public static void masterOpened(NVActivity nVActivity) {
        if (masterCid == 0 && nVActivity.getTaskId() == taskId) {
            masterCid = (int) nVActivity.getContextId();
        }
    }

    public static void masterFinished(NVActivity nVActivity) {
        if (nVActivity.getTaskId() == taskId) {
            if (masterCid == ((int) nVActivity.getContextId())) {
                masterCid = 0;
            }
        }
    }

    public static void mainOpened(NVActivity nVActivity) {
        if (mainCCid == 0 && nVActivity.getTaskId() == taskId) {
            mainCCid = (nVActivity.getContextId() << 32) | (4294967295L & ((ConfigService) nVActivity.getService("config")).getCommunityId());
        }
    }

    public static void mainFinished(NVActivity nVActivity) {
        if (nVActivity.getTaskId() == taskId) {
            if (mainCCid == ((nVActivity.getContextId() << 32) | (4294967295L & ((ConfigService) nVActivity.getService("config")).getCommunityId()))) {
                mainCCid = 0L;
            }
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
    public void start(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
        if (nVContext instanceof Application) {
            lastPauseTime = 0L;
            lastPauseDuration = 0L;
            sessionId = (int) Utils.generateUniqueLongId();
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
        if (lastPauseTime != 0) {
            lastPauseDuration = SystemClock.elapsedRealtime() - lastPauseTime;
            lastPauseTime = 0L;
            if (lastPauseDuration > SESSION_DURATION) {
                sessionId = (int) Utils.generateUniqueLongId();
                return;
            }
            return;
        }
        lastPauseDuration = 0L;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
        if (nVContext instanceof Application) {
            lastPauseTime = SystemClock.elapsedRealtime();
            lastPauseDuration = 0L;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ApplicationSessionHelper applicationSessionHelper) {
        if (nVContext instanceof Application) {
            lastPauseTime = 0L;
            lastPauseDuration = 0L;
        }
    }
}
