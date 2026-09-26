package com.google.firebase.perf.application;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.g;
import com.google.firebase.perf.util.j;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes10.dex */
public class c extends FragmentManager.FragmentLifecycleCallbacks {
    private static final y4.a logger = y4.a.e();
    private final d activityFramesRecorder;
    private final a appStateMonitor;
    private final com.google.firebase.perf.util.a clock;
    private final WeakHashMap<Fragment, Trace> fragmentToTraceMap = new WeakHashMap<>();
    private final k transportManager;

    public String a(Fragment fragment) {
        return "_st_" + fragment.getClass().getSimpleName();
    }

    public c(com.google.firebase.perf.util.a aVar, k kVar, a aVar2, d dVar) {
        this.clock = aVar;
        this.transportManager = kVar;
        this.appStateMonitor = aVar2;
        this.activityFramesRecorder = dVar;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentPaused(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        super.onFragmentPaused(fragmentManager, fragment);
        y4.a aVar = logger;
        aVar.b("FragmentMonitor %s.onFragmentPaused ", fragment.getClass().getSimpleName());
        if (!this.fragmentToTraceMap.containsKey(fragment)) {
            aVar.k("FragmentMonitor: missed a fragment trace from %s", fragment.getClass().getSimpleName());
            return;
        }
        Trace trace = this.fragmentToTraceMap.get(fragment);
        this.fragmentToTraceMap.remove(fragment);
        g<com.google.firebase.perf.metrics.g.a> gVarF = this.activityFramesRecorder.f(fragment);
        if (!gVarF.d()) {
            aVar.k("onFragmentPaused: recorder failed to trace %s", fragment.getClass().getSimpleName());
        } else {
            j.a(trace, gVarF.c());
            trace.stop();
        }
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentResumed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        String simpleName;
        super.onFragmentResumed(fragmentManager, fragment);
        logger.b("FragmentMonitor %s.onFragmentResumed", fragment.getClass().getSimpleName());
        Trace trace = new Trace(a(fragment), this.transportManager, this.clock, this.appStateMonitor);
        trace.start();
        if (fragment.getParentFragment() == null) {
            simpleName = "No parent";
        } else {
            simpleName = fragment.getParentFragment().getClass().getSimpleName();
        }
        trace.putAttribute("Parent_fragment", simpleName);
        if (fragment.getActivity() != null) {
            trace.putAttribute("Hosting_activity", fragment.getActivity().getClass().getSimpleName());
        }
        this.fragmentToTraceMap.put(fragment, trace);
        this.activityFramesRecorder.d(fragment);
    }
}
