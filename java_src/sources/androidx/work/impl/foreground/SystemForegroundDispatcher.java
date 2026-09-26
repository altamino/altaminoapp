package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class SystemForegroundDispatcher implements WorkConstraintsCallback, ExecutionListener {
    private static final String ACTION_CANCEL_WORK = "ACTION_CANCEL_WORK";
    private static final String ACTION_NOTIFY = "ACTION_NOTIFY";
    private static final String ACTION_START_FOREGROUND = "ACTION_START_FOREGROUND";
    private static final String ACTION_STOP_FOREGROUND = "ACTION_STOP_FOREGROUND";
    private static final String KEY_FOREGROUND_SERVICE_TYPE = "KEY_FOREGROUND_SERVICE_TYPE";
    private static final String KEY_GENERATION = "KEY_GENERATION";
    private static final String KEY_NOTIFICATION = "KEY_NOTIFICATION";
    private static final String KEY_NOTIFICATION_ID = "KEY_NOTIFICATION_ID";
    private static final String KEY_WORKSPEC_ID = "KEY_WORKSPEC_ID";
    static final String TAG = Logger.i("SystemFgDispatcher");

    @Nullable
    private Callback mCallback;
    final WorkConstraintsTracker mConstraintsTracker;
    private Context mContext;
    WorkGenerationalId mCurrentForegroundId;
    final Map<WorkGenerationalId, ForegroundInfo> mForegroundInfoById;
    final Object mLock = new Object();
    private final TaskExecutor mTaskExecutor;
    final Set<WorkSpec> mTrackedWorkSpecs;
    private WorkManagerImpl mWorkManagerImpl;
    final Map<WorkGenerationalId, WorkSpec> mWorkSpecById;

    interface Callback {
        void a(int notificationId, @NonNull Notification notification);

        void c(int notificationId, int notificationType, @NonNull Notification notification);

        void d(int notificationId);

        void stop();
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void f(@NonNull List<WorkSpec> workSpecs) {
    }

    @MainThread
    void l() {
        this.mCallback = null;
        synchronized (this.mLock) {
            this.mConstraintsTracker.reset();
        }
        this.mWorkManagerImpl.m().n(this);
    }

    @NonNull
    public static Intent c(@NonNull Context context, @NonNull WorkGenerationalId id, @NonNull ForegroundInfo info) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(ACTION_NOTIFY);
        intent.putExtra(KEY_NOTIFICATION_ID, info.c());
        intent.putExtra(KEY_FOREGROUND_SERVICE_TYPE, info.a());
        intent.putExtra(KEY_NOTIFICATION, info.b());
        intent.putExtra(KEY_WORKSPEC_ID, id.b());
        intent.putExtra(KEY_GENERATION, id.a());
        return intent;
    }

    @NonNull
    public static Intent d(@NonNull Context context, @NonNull WorkGenerationalId id, @NonNull ForegroundInfo info) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(ACTION_START_FOREGROUND);
        intent.putExtra(KEY_WORKSPEC_ID, id.b());
        intent.putExtra(KEY_GENERATION, id.a());
        intent.putExtra(KEY_NOTIFICATION_ID, info.c());
        intent.putExtra(KEY_FOREGROUND_SERVICE_TYPE, info.a());
        intent.putExtra(KEY_NOTIFICATION, info.b());
        return intent;
    }

    @NonNull
    public static Intent g(@NonNull Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(ACTION_STOP_FOREGROUND);
        return intent;
    }

    @MainThread
    private void i(@NonNull Intent intent) {
        int iA = 0;
        int intExtra = intent.getIntExtra(KEY_NOTIFICATION_ID, 0);
        int intExtra2 = intent.getIntExtra(KEY_FOREGROUND_SERVICE_TYPE, 0);
        String stringExtra = intent.getStringExtra(KEY_WORKSPEC_ID);
        WorkGenerationalId workGenerationalId = new WorkGenerationalId(stringExtra, intent.getIntExtra(KEY_GENERATION, 0));
        Notification notification = (Notification) intent.getParcelableExtra(KEY_NOTIFICATION);
        Logger.e().a(TAG, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
        if (notification == null || this.mCallback == null) {
            return;
        }
        this.mForegroundInfoById.put(workGenerationalId, new ForegroundInfo(intExtra, notification, intExtra2));
        if (this.mCurrentForegroundId == null) {
            this.mCurrentForegroundId = workGenerationalId;
            this.mCallback.c(intExtra, intExtra2, notification);
            return;
        }
        this.mCallback.a(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator<Map.Entry<WorkGenerationalId, ForegroundInfo>> it = this.mForegroundInfoById.entrySet().iterator();
        while (it.hasNext()) {
            iA |= it.next().getValue().a();
        }
        ForegroundInfo foregroundInfo = this.mForegroundInfoById.get(this.mCurrentForegroundId);
        if (foregroundInfo != null) {
            this.mCallback.c(foregroundInfo.c(), iA, foregroundInfo.b());
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    @MainThread
    /* JADX INFO: renamed from: e */
    public void l(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        Map.Entry<WorkGenerationalId, ForegroundInfo> entry;
        synchronized (this.mLock) {
            try {
                WorkSpec workSpecRemove = this.mWorkSpecById.remove(id);
                if (workSpecRemove != null && this.mTrackedWorkSpecs.remove(workSpecRemove)) {
                    this.mConstraintsTracker.a(this.mTrackedWorkSpecs);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ForegroundInfo foregroundInfoRemove = this.mForegroundInfoById.remove(id);
        if (id.equals(this.mCurrentForegroundId) && this.mForegroundInfoById.size() > 0) {
            Iterator<Map.Entry<WorkGenerationalId, ForegroundInfo>> it = this.mForegroundInfoById.entrySet().iterator();
            Map.Entry<WorkGenerationalId, ForegroundInfo> next = it.next();
            while (true) {
                entry = next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.mCurrentForegroundId = entry.getKey();
            if (this.mCallback != null) {
                ForegroundInfo value = entry.getValue();
                this.mCallback.c(value.c(), value.a(), value.b());
                this.mCallback.d(value.c());
            }
        }
        Callback callback = this.mCallback;
        if (foregroundInfoRemove == null || callback == null) {
            return;
        }
        Logger.e().a(TAG, "Removing Notification (id: " + foregroundInfoRemove.c() + ", workSpecId: " + id + ", notificationType: " + foregroundInfoRemove.a());
        callback.d(foregroundInfoRemove.c());
    }

    @MainThread
    void n(@NonNull Callback callback) {
        if (this.mCallback != null) {
            Logger.e().c(TAG, "A callback already exists.");
        } else {
            this.mCallback = callback;
        }
    }

    SystemForegroundDispatcher(@NonNull Context context) {
        this.mContext = context;
        WorkManagerImpl workManagerImplK = WorkManagerImpl.k(context);
        this.mWorkManagerImpl = workManagerImplK;
        this.mTaskExecutor = workManagerImplK.q();
        this.mCurrentForegroundId = null;
        this.mForegroundInfoById = new LinkedHashMap();
        this.mTrackedWorkSpecs = new HashSet();
        this.mWorkSpecById = new HashMap();
        this.mConstraintsTracker = new WorkConstraintsTrackerImpl(this.mWorkManagerImpl.o(), this);
        this.mWorkManagerImpl.m().g(this);
    }

    @MainThread
    private void h(@NonNull Intent intent) {
        Logger.e().f(TAG, "Stopping foreground work for " + intent);
        String stringExtra = intent.getStringExtra(KEY_WORKSPEC_ID);
        if (stringExtra != null && !TextUtils.isEmpty(stringExtra)) {
            this.mWorkManagerImpl.f(UUID.fromString(stringExtra));
        }
    }

    @MainThread
    private void j(@NonNull Intent intent) {
        Logger.e().f(TAG, "Started foreground service " + intent);
        final String stringExtra = intent.getStringExtra(KEY_WORKSPEC_ID);
        this.mTaskExecutor.a(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundDispatcher.1
            @Override // java.lang.Runnable
            public void run() {
                WorkSpec workSpecH = SystemForegroundDispatcher.this.mWorkManagerImpl.m().h(stringExtra);
                if (workSpecH == null || !workSpecH.h()) {
                    return;
                }
                synchronized (SystemForegroundDispatcher.this.mLock) {
                    SystemForegroundDispatcher.this.mWorkSpecById.put(WorkSpecKt.a(workSpecH), workSpecH);
                    SystemForegroundDispatcher.this.mTrackedWorkSpecs.add(workSpecH);
                    SystemForegroundDispatcher systemForegroundDispatcher = SystemForegroundDispatcher.this;
                    systemForegroundDispatcher.mConstraintsTracker.a(systemForegroundDispatcher.mTrackedWorkSpecs);
                }
            }
        });
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void a(@NonNull List<WorkSpec> workSpecs) {
        if (!workSpecs.isEmpty()) {
            for (WorkSpec workSpec : workSpecs) {
                String str = workSpec.id;
                Logger.e().a(TAG, "Constraints unmet for WorkSpec " + str);
                this.mWorkManagerImpl.x(WorkSpecKt.a(workSpec));
            }
        }
    }

    @MainThread
    void k(@NonNull Intent intent) {
        Logger.e().f(TAG, "Stopping foreground service");
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.stop();
        }
    }

    void m(@NonNull Intent intent) {
        String action = intent.getAction();
        if (ACTION_START_FOREGROUND.equals(action)) {
            j(intent);
            i(intent);
        } else if (ACTION_NOTIFY.equals(action)) {
            i(intent);
        } else if (ACTION_CANCEL_WORK.equals(action)) {
            h(intent);
        } else if (ACTION_STOP_FOREGROUND.equals(action)) {
            k(intent);
        }
    }
}
