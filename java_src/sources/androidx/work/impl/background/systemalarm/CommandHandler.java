package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class CommandHandler implements ExecutionListener {
    static final String ACTION_CONSTRAINTS_CHANGED = "ACTION_CONSTRAINTS_CHANGED";
    static final String ACTION_DELAY_MET = "ACTION_DELAY_MET";
    static final String ACTION_EXECUTION_COMPLETED = "ACTION_EXECUTION_COMPLETED";
    static final String ACTION_RESCHEDULE = "ACTION_RESCHEDULE";
    static final String ACTION_SCHEDULE_WORK = "ACTION_SCHEDULE_WORK";
    static final String ACTION_STOP_WORK = "ACTION_STOP_WORK";
    private static final String KEY_NEEDS_RESCHEDULE = "KEY_NEEDS_RESCHEDULE";
    private static final String KEY_WORKSPEC_GENERATION = "KEY_WORKSPEC_GENERATION";
    private static final String KEY_WORKSPEC_ID = "KEY_WORKSPEC_ID";
    private static final String TAG = Logger.i("CommandHandler");
    static final long WORK_PROCESSING_TIME_IN_MS = 600000;
    private final Context mContext;
    private final StartStopTokens mStartStopTokens;
    private final Map<WorkGenerationalId, DelayMetCommandHandler> mPendingDelayMet = new HashMap();
    private final Object mLock = new Object();

    private static boolean n(@Nullable Bundle bundle, @NonNull String... keys) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : keys) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    static Intent a(@NonNull Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(ACTION_CONSTRAINTS_CHANGED);
        return intent;
    }

    static Intent b(@NonNull Context context, @NonNull WorkGenerationalId id) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(ACTION_DELAY_MET);
        return r(intent, id);
    }

    static Intent c(@NonNull Context context, @NonNull WorkGenerationalId id, boolean needsReschedule) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(ACTION_EXECUTION_COMPLETED);
        intent.putExtra(KEY_NEEDS_RESCHEDULE, needsReschedule);
        return r(intent, id);
    }

    static Intent d(@NonNull Context context, @NonNull WorkGenerationalId id) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(ACTION_SCHEDULE_WORK);
        return r(intent, id);
    }

    static Intent f(@NonNull Context context, @NonNull WorkGenerationalId id) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(ACTION_STOP_WORK);
        return r(intent, id);
    }

    static Intent g(@NonNull Context context, @NonNull String workSpecId) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction(ACTION_STOP_WORK);
        intent.putExtra(KEY_WORKSPEC_ID, workSpecId);
        return intent;
    }

    private void i(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        synchronized (this.mLock) {
            try {
                WorkGenerationalId workGenerationalIdQ = q(intent);
                Logger loggerE = Logger.e();
                String str = TAG;
                loggerE.a(str, "Handing delay met for " + workGenerationalIdQ);
                if (this.mPendingDelayMet.containsKey(workGenerationalIdQ)) {
                    Logger.e().a(str, "WorkSpec " + workGenerationalIdQ + " is is already being handled for ACTION_DELAY_MET");
                } else {
                    DelayMetCommandHandler delayMetCommandHandler = new DelayMetCommandHandler(this.mContext, startId, dispatcher, this.mStartStopTokens.d(workGenerationalIdQ));
                    this.mPendingDelayMet.put(workGenerationalIdQ, delayMetCommandHandler);
                    delayMetCommandHandler.g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static WorkGenerationalId q(@NonNull Intent intent) {
        return new WorkGenerationalId(intent.getStringExtra(KEY_WORKSPEC_ID), intent.getIntExtra(KEY_WORKSPEC_GENERATION, 0));
    }

    @Override // androidx.work.impl.ExecutionListener
    /* JADX INFO: renamed from: e */
    public void l(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        synchronized (this.mLock) {
            try {
                DelayMetCommandHandler delayMetCommandHandlerRemove = this.mPendingDelayMet.remove(id);
                this.mStartStopTokens.b(id);
                if (delayMetCommandHandlerRemove != null) {
                    delayMetCommandHandlerRemove.h(needsReschedule);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean o() {
        boolean z6;
        synchronized (this.mLock) {
            z6 = !this.mPendingDelayMet.isEmpty();
        }
        return z6;
    }

    CommandHandler(@NonNull Context context, @NonNull StartStopTokens startStopTokens) {
        this.mContext = context;
        this.mStartStopTokens = startStopTokens;
    }

    private void h(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        Logger.e().a(TAG, "Handling constraints changed " + intent);
        new ConstraintsCommandHandler(this.mContext, startId, dispatcher).a();
    }

    private void j(@NonNull Intent intent, int startId) {
        WorkGenerationalId workGenerationalIdQ = q(intent);
        boolean z6 = intent.getExtras().getBoolean(KEY_NEEDS_RESCHEDULE);
        Logger.e().a(TAG, "Handling onExecutionCompleted " + intent + ", " + startId);
        l(workGenerationalIdQ, z6);
    }

    private void k(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        Logger.e().a(TAG, "Handling reschedule " + intent + ", " + startId);
        dispatcher.g().t();
    }

    private void l(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        WorkGenerationalId workGenerationalIdQ = q(intent);
        Logger loggerE = Logger.e();
        String str = TAG;
        loggerE.a(str, "Handling schedule work for " + workGenerationalIdQ);
        WorkDatabase workDatabaseP = dispatcher.g().p();
        workDatabaseP.e();
        try {
            WorkSpec workSpecS = workDatabaseP.M().s(workGenerationalIdQ.b());
            if (workSpecS == null) {
                Logger.e().k(str, "Skipping scheduling " + workGenerationalIdQ + " because it's no longer in the DB");
                return;
            }
            if (workSpecS.state.b()) {
                Logger.e().k(str, "Skipping scheduling " + workGenerationalIdQ + "because it is finished.");
                return;
            }
            long jC = workSpecS.c();
            if (!workSpecS.h()) {
                Logger.e().a(str, "Setting up Alarms for " + workGenerationalIdQ + "at " + jC);
                Alarms.c(this.mContext, workDatabaseP, workGenerationalIdQ, jC);
            } else {
                Logger.e().a(str, "Opportunistically setting an alarm for " + workGenerationalIdQ + "at " + jC);
                Alarms.c(this.mContext, workDatabaseP, workGenerationalIdQ, jC);
                dispatcher.f().b().execute(new SystemAlarmDispatcher.AddRunnable(dispatcher, a(this.mContext), startId));
            }
            workDatabaseP.D();
        } finally {
            workDatabaseP.i();
        }
    }

    private void m(@NonNull Intent intent, @NonNull SystemAlarmDispatcher dispatcher) {
        List<StartStopToken> listC;
        Bundle extras = intent.getExtras();
        String string = extras.getString(KEY_WORKSPEC_ID);
        if (extras.containsKey(KEY_WORKSPEC_GENERATION)) {
            int i10 = extras.getInt(KEY_WORKSPEC_GENERATION);
            listC = new ArrayList<>(1);
            StartStopToken startStopTokenB = this.mStartStopTokens.b(new WorkGenerationalId(string, i10));
            if (startStopTokenB != null) {
                listC.add(startStopTokenB);
            }
        } else {
            listC = this.mStartStopTokens.c(string);
        }
        for (StartStopToken startStopToken : listC) {
            Logger.e().a(TAG, "Handing stopWork work for " + string);
            dispatcher.g().y(startStopToken);
            Alarms.a(this.mContext, dispatcher.g().p(), startStopToken.a());
            dispatcher.l(startStopToken.a(), false);
        }
    }

    private static Intent r(@NonNull Intent intent, @NonNull WorkGenerationalId id) {
        intent.putExtra(KEY_WORKSPEC_ID, id.b());
        intent.putExtra(KEY_WORKSPEC_GENERATION, id.a());
        return intent;
    }

    @WorkerThread
    void p(@NonNull Intent intent, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        String action = intent.getAction();
        if (ACTION_CONSTRAINTS_CHANGED.equals(action)) {
            h(intent, startId, dispatcher);
            return;
        }
        if (ACTION_RESCHEDULE.equals(action)) {
            k(intent, startId, dispatcher);
            return;
        }
        if (!n(intent.getExtras(), KEY_WORKSPEC_ID)) {
            Logger.e().c(TAG, "Invalid request for " + action + " , requires " + KEY_WORKSPEC_ID + " .");
            return;
        }
        if (ACTION_SCHEDULE_WORK.equals(action)) {
            l(intent, startId, dispatcher);
            return;
        }
        if (ACTION_DELAY_MET.equals(action)) {
            i(intent, startId, dispatcher);
            return;
        }
        if (ACTION_STOP_WORK.equals(action)) {
            m(intent, dispatcher);
            return;
        }
        if (ACTION_EXECUTION_COMPLETED.equals(action)) {
            j(intent, startId);
            return;
        }
        Logger.e().k(TAG, "Ignoring intent " + intent);
    }
}
