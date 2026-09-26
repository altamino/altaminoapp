package z4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.perf.v1.m;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
final class d extends e {
    private static final y4.a logger = y4.a.e();
    private final m traceMetric;

    private boolean h(@NonNull m mVar) {
        return i(mVar, 0);
    }

    private boolean i(@Nullable m mVar, int i10) {
        if (mVar == null) {
            return false;
        }
        if (i10 > 1) {
            logger.j("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        }
        for (Map.Entry<String, Long> entry : mVar.y().entrySet()) {
            if (!l(entry.getKey())) {
                logger.j("invalid CounterId:" + entry.getKey());
                return false;
            }
            if (!m(entry.getValue())) {
                logger.j("invalid CounterValue:" + entry.getValue());
                return false;
            }
        }
        Iterator<m> it = mVar.F().iterator();
        while (it.hasNext()) {
            if (!i(it.next(), i10 + 1)) {
                return false;
            }
        }
        return true;
    }

    private boolean l(@Nullable String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            logger.j("counterId is empty");
            return false;
        }
        if (strTrim.length() <= 100) {
            return true;
        }
        logger.j("counterId exceeded max length 100");
        return false;
    }

    private boolean m(@Nullable Long l) {
        return l != null;
    }

    private boolean o(@Nullable m mVar, int i10) {
        if (mVar == null) {
            logger.j("TraceMetric is null");
            return false;
        }
        if (i10 > 1) {
            logger.j("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        }
        if (!q(mVar.getName())) {
            logger.j("invalid TraceId:" + mVar.getName());
            return false;
        }
        if (!p(mVar)) {
            logger.j("invalid TraceDuration:" + mVar.B());
            return false;
        }
        if (!mVar.G()) {
            logger.j("clientStartTimeUs is null.");
            return false;
        }
        if (!k(mVar) || n(mVar)) {
            Iterator<m> it = mVar.F().iterator();
            while (it.hasNext()) {
                if (!o(it.next(), i10 + 1)) {
                    return false;
                }
            }
            return g(mVar.z());
        }
        logger.j("non-positive totalFrames in screen trace " + mVar.getName());
        return false;
    }

    private boolean q(@Nullable String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return !strTrim.isEmpty() && strTrim.length() <= 100;
    }

    private boolean p(@Nullable m mVar) {
        return mVar != null && mVar.B() > 0;
    }

    @Override // z4.e
    public boolean c() {
        if (!o(this.traceMetric, 0)) {
            logger.j("Invalid Trace:" + this.traceMetric.getName());
            return false;
        }
        if (!j(this.traceMetric) || h(this.traceMetric)) {
            return true;
        }
        logger.j("Invalid Counters for Trace:" + this.traceMetric.getName());
        return false;
    }

    d(@NonNull m mVar) {
        this.traceMetric = mVar;
    }

    private boolean g(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            try {
                e.d(entry.getKey(), entry.getValue());
            } catch (IllegalArgumentException e) {
                logger.j(e.getLocalizedMessage());
                return false;
            }
        }
        return true;
    }

    private boolean j(@NonNull m mVar) {
        if (mVar.x() > 0) {
            return true;
        }
        Iterator<m> it = mVar.F().iterator();
        while (it.hasNext()) {
            if (it.next().x() > 0) {
                return true;
            }
        }
        return false;
    }

    private boolean k(@NonNull m mVar) {
        return mVar.getName().startsWith("_st_");
    }

    private boolean n(@NonNull m mVar) {
        Long l = mVar.y().get(com.google.firebase.perf.util.b.FRAMES_TOTAL.toString());
        if (l != null && l.compareTo((Long) 0L) > 0) {
            return true;
        }
        return false;
    }
}
