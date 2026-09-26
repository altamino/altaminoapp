package com.google.firebase.perf.application;

import android.app.Activity;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.core.app.FrameMetricsAggregator;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.metrics.g;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class d {
    private static final String FRAME_METRICS_AGGREGATOR_CLASSNAME = "androidx.core.app.FrameMetricsAggregator";
    private static final y4.a logger = y4.a.e();
    private final Activity activity;
    private final Map<Fragment, g.a> fragmentSnapshotMap;
    private final FrameMetricsAggregator frameMetricsAggregator;
    private boolean isRecording;

    public d(Activity activity) {
        this(activity, new FrameMetricsAggregator(), new HashMap());
    }

    static boolean a() {
        return true;
    }

    @VisibleForTesting
    d(Activity activity, FrameMetricsAggregator frameMetricsAggregator, Map<Fragment, g.a> map) {
        this.isRecording = false;
        this.activity = activity;
        this.frameMetricsAggregator = frameMetricsAggregator;
        this.fragmentSnapshotMap = map;
    }

    private com.google.firebase.perf.util.g<g.a> b() {
        if (!this.isRecording) {
            logger.a("No recording has been started.");
            return com.google.firebase.perf.util.g.a();
        }
        SparseIntArray[] sparseIntArrayArrB = this.frameMetricsAggregator.b();
        if (sparseIntArrayArrB == null) {
            logger.a("FrameMetricsAggregator.mMetrics is uninitialized.");
            return com.google.firebase.perf.util.g.a();
        }
        if (sparseIntArrayArrB[0] != null) {
            return com.google.firebase.perf.util.g.e(g.a(sparseIntArrayArrB));
        }
        logger.a("FrameMetricsAggregator.mMetrics[TOTAL_INDEX] is uninitialized.");
        return com.google.firebase.perf.util.g.a();
    }

    public void c() {
        if (this.isRecording) {
            logger.b("FrameMetricsAggregator is already recording %s", this.activity.getClass().getSimpleName());
        } else {
            this.frameMetricsAggregator.a(this.activity);
            this.isRecording = true;
        }
    }

    public void d(Fragment fragment) {
        if (!this.isRecording) {
            logger.a("Cannot start sub-recording because FrameMetricsAggregator is not recording");
            return;
        }
        if (this.fragmentSnapshotMap.containsKey(fragment)) {
            logger.b("Cannot start sub-recording because one is already ongoing with the key %s", fragment.getClass().getSimpleName());
            return;
        }
        com.google.firebase.perf.util.g<g.a> gVarB = b();
        if (gVarB.d()) {
            this.fragmentSnapshotMap.put(fragment, gVarB.c());
        } else {
            logger.b("startFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
        }
    }

    public com.google.firebase.perf.util.g<g.a> e() {
        if (!this.isRecording) {
            logger.a("Cannot stop because no recording was started");
            return com.google.firebase.perf.util.g.a();
        }
        if (!this.fragmentSnapshotMap.isEmpty()) {
            logger.a("Sub-recordings are still ongoing! Sub-recordings should be stopped first before stopping Activity screen trace.");
            this.fragmentSnapshotMap.clear();
        }
        com.google.firebase.perf.util.g<g.a> gVarB = b();
        try {
            this.frameMetricsAggregator.c(this.activity);
        } catch (IllegalArgumentException | NullPointerException e) {
            if ((e instanceof NullPointerException) && Build.VERSION.SDK_INT > 28) {
                throw e;
            }
            logger.k("View not hardware accelerated. Unable to collect FrameMetrics. %s", e.toString());
            gVarB = com.google.firebase.perf.util.g.a();
        }
        this.frameMetricsAggregator.d();
        this.isRecording = false;
        return gVarB;
    }

    public com.google.firebase.perf.util.g<g.a> f(Fragment fragment) {
        if (!this.isRecording) {
            logger.a("Cannot stop sub-recording because FrameMetricsAggregator is not recording");
            return com.google.firebase.perf.util.g.a();
        }
        if (!this.fragmentSnapshotMap.containsKey(fragment)) {
            logger.b("Sub-recording associated with key %s was not started or does not exist", fragment.getClass().getSimpleName());
            return com.google.firebase.perf.util.g.a();
        }
        g.a aVarRemove = this.fragmentSnapshotMap.remove(fragment);
        com.google.firebase.perf.util.g<g.a> gVarB = b();
        if (gVarB.d()) {
            return com.google.firebase.perf.util.g.e(gVarB.c().a(aVarRemove));
        }
        logger.b("stopFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
        return com.google.firebase.perf.util.g.a();
    }
}
