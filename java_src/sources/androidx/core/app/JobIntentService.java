package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class JobIntentService extends Service {
    static final boolean DEBUG = false;
    static final String TAG = "JobIntentService";
    final ArrayList<CompatWorkItem> mCompatQueue;
    WorkEnqueuer mCompatWorkEnqueuer;
    CommandProcessor mCurProcessor;
    CompatJobEngine mJobImpl;
    static final Object sLock = new Object();
    static final HashMap<ComponentName, WorkEnqueuer> sClassWorkEnqueuer = new HashMap<>();
    boolean mInterruptIfStopped = false;
    boolean mStopped = false;
    boolean mDestroyed = false;

    final class CommandProcessor extends AsyncTask<Void, Void, Void> {
        CommandProcessor() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                GenericWorkItem genericWorkItemA = JobIntentService.this.a();
                if (genericWorkItemA == null) {
                    return null;
                }
                JobIntentService.this.e(genericWorkItemA.getIntent());
                genericWorkItemA.complete();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r1) {
            JobIntentService.this.g();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r1) {
            JobIntentService.this.g();
        }
    }

    interface CompatJobEngine {
        IBinder a();

        GenericWorkItem b();
    }

    final class CompatWorkItem implements GenericWorkItem {
        final Intent mIntent;
        final int mStartId;

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public Intent getIntent() {
            return this.mIntent;
        }

        CompatWorkItem(Intent intent, int i10) {
            this.mIntent = intent;
            this.mStartId = i10;
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public void complete() {
            JobIntentService.this.stopSelf(this.mStartId);
        }
    }

    interface GenericWorkItem {
        void complete();

        Intent getIntent();
    }

    @RequiresApi
    static final class JobServiceEngineImpl extends JobServiceEngine implements CompatJobEngine {
        static final boolean DEBUG = false;
        static final String TAG = "JobServiceEngineImpl";
        final Object mLock;
        JobParameters mParams;
        final JobIntentService mService;

        final class WrapperWorkItem implements GenericWorkItem {
            final JobWorkItem mJobWork;

            WrapperWorkItem(JobWorkItem jobWorkItem) {
                this.mJobWork = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            public void complete() {
                synchronized (JobServiceEngineImpl.this.mLock) {
                    try {
                        JobParameters jobParameters = JobServiceEngineImpl.this.mParams;
                        if (jobParameters != null) {
                            jobParameters.completeWork(this.mJobWork);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            public Intent getIntent() {
                return this.mJobWork.getIntent();
            }
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        public GenericWorkItem b() {
            synchronized (this.mLock) {
                try {
                    JobParameters jobParameters = this.mParams;
                    if (jobParameters == null) {
                        return null;
                    }
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.mService.getClassLoader());
                    return new WrapperWorkItem(jobWorkItemDequeueWork);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean onStartJob(JobParameters jobParameters) {
            this.mParams = jobParameters;
            this.mService.c(false);
            return true;
        }

        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.mService.b();
            synchronized (this.mLock) {
                this.mParams = null;
            }
            return zB;
        }

        JobServiceEngineImpl(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.mLock = new Object();
            this.mService = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        public IBinder a() {
            return getBinder();
        }
    }

    static abstract class WorkEnqueuer {
        final ComponentName mComponentName;
        boolean mHasJobId;
        int mJobId;

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }

        void a(int i10) {
            if (!this.mHasJobId) {
                this.mHasJobId = true;
                this.mJobId = i10;
            } else {
                if (this.mJobId == i10) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i10 + " is different than previous " + this.mJobId);
            }
        }

        WorkEnqueuer(ComponentName componentName) {
            this.mComponentName = componentName;
        }
    }

    protected abstract void e(@NonNull Intent intent);

    public boolean f() {
        return true;
    }

    static final class CompatWorkEnqueuer extends WorkEnqueuer {
        private final Context mContext;
        private final PowerManager.WakeLock mLaunchWakeLock;
        boolean mLaunchingService;
        private final PowerManager.WakeLock mRunWakeLock;
        boolean mServiceProcessing;

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void b() {
            synchronized (this) {
                try {
                    if (this.mServiceProcessing) {
                        if (this.mLaunchingService) {
                            this.mLaunchWakeLock.acquire(60000L);
                        }
                        this.mServiceProcessing = false;
                        this.mRunWakeLock.release();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void c() {
            synchronized (this) {
                try {
                    if (!this.mServiceProcessing) {
                        this.mServiceProcessing = true;
                        this.mRunWakeLock.acquire(600000L);
                        this.mLaunchWakeLock.release();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void d() {
            synchronized (this) {
                this.mLaunchingService = false;
            }
        }

        CompatWorkEnqueuer(Context context, ComponentName componentName) {
            super(componentName);
            this.mContext = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.mLaunchWakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.mRunWakeLock = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }
    }

    @RequiresApi
    static final class JobWorkEnqueuer extends WorkEnqueuer {
        private final JobInfo mJobInfo;
        private final JobScheduler mJobScheduler;

        JobWorkEnqueuer(Context context, ComponentName componentName, int i10) {
            super(componentName);
            a(i10);
            this.mJobInfo = new JobInfo.Builder(i10, this.mComponentName).setOverrideDeadline(0L).build();
            this.mJobScheduler = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }
    }

    static WorkEnqueuer d(Context context, ComponentName componentName, boolean z6, int i10) {
        WorkEnqueuer compatWorkEnqueuer;
        HashMap<ComponentName, WorkEnqueuer> map = sClassWorkEnqueuer;
        WorkEnqueuer workEnqueuer = map.get(componentName);
        if (workEnqueuer == null) {
            if (Build.VERSION.SDK_INT < 26) {
                compatWorkEnqueuer = new CompatWorkEnqueuer(context, componentName);
            } else {
                if (!z6) {
                    throw new IllegalArgumentException("Can't be here without a job id");
                }
                compatWorkEnqueuer = new JobWorkEnqueuer(context, componentName, i10);
            }
            workEnqueuer = compatWorkEnqueuer;
            map.put(componentName, workEnqueuer);
        }
        return workEnqueuer;
    }

    GenericWorkItem a() {
        CompatJobEngine compatJobEngine = this.mJobImpl;
        if (compatJobEngine != null) {
            return compatJobEngine.b();
        }
        synchronized (this.mCompatQueue) {
            try {
                if (this.mCompatQueue.size() <= 0) {
                    return null;
                }
                return this.mCompatQueue.remove(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean b() {
        CommandProcessor commandProcessor = this.mCurProcessor;
        if (commandProcessor != null) {
            commandProcessor.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return f();
    }

    void c(boolean z6) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new CommandProcessor();
            WorkEnqueuer workEnqueuer = this.mCompatWorkEnqueuer;
            if (workEnqueuer != null && z6) {
                workEnqueuer.c();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void g() {
        ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.mCurProcessor = null;
                    ArrayList<CompatWorkItem> arrayList2 = this.mCompatQueue;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        c(false);
                    } else if (!this.mDestroyed) {
                        this.mCompatWorkEnqueuer.b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        CompatJobEngine compatJobEngine = this.mJobImpl;
        if (compatJobEngine != null) {
            return compatJobEngine.a();
        }
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i10, int i11) {
        if (this.mCompatQueue == null) {
            return 2;
        }
        this.mCompatWorkEnqueuer.d();
        synchronized (this.mCompatQueue) {
            ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new CompatWorkItem(intent, i11));
            c(true);
        }
        return 3;
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mCompatQueue = null;
        } else {
            this.mCompatQueue = new ArrayList<>();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.mJobImpl = new JobServiceEngineImpl(this);
            this.mCompatWorkEnqueuer = null;
        } else {
            this.mJobImpl = null;
            this.mCompatWorkEnqueuer = d(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mDestroyed = true;
                this.mCompatWorkEnqueuer.b();
            }
        }
    }
}
