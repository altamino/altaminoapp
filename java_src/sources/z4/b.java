package z4;

import com.google.firebase.perf.v1.g;

/* JADX INFO: loaded from: classes10.dex */
final class b extends e {
    private final g gaugeMetric;

    @Override // z4.e
    public boolean c() {
        return this.gaugeMetric.hasSessionId() && (this.gaugeMetric.q() > 0 || this.gaugeMetric.p() > 0 || (this.gaugeMetric.t() && this.gaugeMetric.s().l()));
    }

    b(g gVar) {
        this.gaugeMetric = gVar;
    }
}
