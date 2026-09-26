package com.google.firebase.perf.metrics;

import androidx.annotation.NonNull;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.v1.k;
import com.google.firebase.perf.v1.m;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
class i {
    private final Trace trace;

    i(@NonNull Trace trace) {
        this.trace = trace;
    }

    m a() {
        m.b bVarQ = m.L().r(this.trace.h()).p(this.trace.k().i()).q(this.trace.k().h(this.trace.g()));
        for (Counter counter : this.trace.e().values()) {
            bVarQ.n(counter.e(), counter.c());
        }
        List<Trace> listL = this.trace.l();
        if (!listL.isEmpty()) {
            Iterator<Trace> it = listL.iterator();
            while (it.hasNext()) {
                bVarQ.k(new i(it.next()).a());
            }
        }
        bVarQ.m(this.trace.getAttributes());
        k[] kVarArrE = PerfSession.e(this.trace.i());
        if (kVarArrE != null) {
            bVarQ.d(Arrays.asList(kVarArrE));
        }
        return bVarQ.build();
    }
}
