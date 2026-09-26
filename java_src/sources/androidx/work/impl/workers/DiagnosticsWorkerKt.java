package androidx.work.impl.workers;

import androidx.work.Logger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.model.WorkTagDao;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class DiagnosticsWorkerKt {

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("DiagnosticsWrkr");
        t.i(strI, "tagWithPrefix(\"DiagnosticsWrkr\")");
        TAG = strI;
    }

    private static final String c(WorkSpec workSpec, String str, Integer num, String str2) {
        return '\n' + workSpec.id + "\t " + workSpec.workerClassName + "\t " + num + "\t " + workSpec.state.name() + "\t " + str + "\t " + str2 + '\t';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String d(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List<WorkSpec> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        for (WorkSpec workSpec : list) {
            SystemIdInfo systemIdInfoD = systemIdInfoDao.d(WorkSpecKt.a(workSpec));
            sb.append(c(workSpec, d0.t0(workNameDao.b(workSpec.id), ",", null, null, 0, null, null, 62, null), systemIdInfoD != null ? Integer.valueOf(systemIdInfoD.systemId) : null, d0.t0(workTagDao.b(workSpec.id), ",", null, null, 0, null, null, 62, null)));
        }
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
