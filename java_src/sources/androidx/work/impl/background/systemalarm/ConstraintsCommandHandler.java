package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Logger;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
class ConstraintsCommandHandler {
    private static final String TAG = Logger.i("ConstraintsCmdHandler");
    private final Context mContext;
    private final SystemAlarmDispatcher mDispatcher;
    private final int mStartId;
    private final WorkConstraintsTrackerImpl mWorkConstraintsTracker;

    @WorkerThread
    void a() {
        List<WorkSpec> listQ = this.mDispatcher.g().p().M().q();
        ConstraintProxy.a(this.mContext, listQ);
        this.mWorkConstraintsTracker.a(listQ);
        ArrayList<WorkSpec> arrayList = new ArrayList(listQ.size());
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (WorkSpec workSpec : listQ) {
            String str = workSpec.id;
            if (jCurrentTimeMillis >= workSpec.c() && (!workSpec.h() || this.mWorkConstraintsTracker.d(str))) {
                arrayList.add(workSpec);
            }
        }
        for (WorkSpec workSpec2 : arrayList) {
            String str2 = workSpec2.id;
            Intent intentB = CommandHandler.b(this.mContext, WorkSpecKt.a(workSpec2));
            Logger.e().a(TAG, "Creating a delay_met command for workSpec with id (" + str2 + ")");
            this.mDispatcher.f().b().execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, intentB, this.mStartId));
        }
        this.mWorkConstraintsTracker.reset();
    }

    ConstraintsCommandHandler(@NonNull Context context, int startId, @NonNull SystemAlarmDispatcher dispatcher) {
        this.mContext = context;
        this.mStartId = startId;
        this.mDispatcher = dispatcher;
        this.mWorkConstraintsTracker = new WorkConstraintsTrackerImpl(dispatcher.g().o(), (WorkConstraintsCallback) null);
    }
}
