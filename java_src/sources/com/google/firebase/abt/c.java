package com.google.firebase.abt;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class c {

    @VisibleForTesting
    static final String ABT_PREFERENCES = "com.google.firebase.abt";

    @VisibleForTesting
    static final String ORIGIN_LAST_KNOWN_START_TIME_KEY_FORMAT = "%s_lastKnownExperimentStartTime";
    private final o4.b<com.google.firebase.analytics.connector.a> analyticsConnector;

    @Nullable
    private Integer maxUserProperties = null;
    private final String originService;

    private void a(com.google.firebase.analytics.connector.a.c cVar) {
        this.analyticsConnector.get().f(cVar);
    }

    private void b(List<b> list) {
        ArrayDeque arrayDeque = new ArrayDeque(f());
        int i10 = i();
        for (b bVar : list) {
            while (arrayDeque.size() >= i10) {
                k(((com.google.firebase.analytics.connector.a.c) arrayDeque.pollFirst()).name);
            }
            com.google.firebase.analytics.connector.a.c cVarF = bVar.f(this.originService);
            a(cVarF);
            arrayDeque.offer(cVarF);
        }
    }

    private static List<b> c(List<Map<String, String>> list) throws a {
        ArrayList arrayList = new ArrayList();
        Iterator<Map<String, String>> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b.b(it.next()));
        }
        return arrayList;
    }

    @WorkerThread
    private List<com.google.firebase.analytics.connector.a.c> f() {
        return this.analyticsConnector.get().d(this.originService, "");
    }

    private ArrayList<b> g(List<b> list, List<b> list2) {
        ArrayList<b> arrayList = new ArrayList<>();
        for (b bVar : list) {
            if (!d(list2, bVar)) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    private ArrayList<com.google.firebase.analytics.connector.a.c> h(List<b> list, List<b> list2) {
        ArrayList<com.google.firebase.analytics.connector.a.c> arrayList = new ArrayList<>();
        for (b bVar : list) {
            if (!d(list2, bVar)) {
                arrayList.add(bVar.f(this.originService));
            }
        }
        return arrayList;
    }

    @WorkerThread
    private int i() {
        if (this.maxUserProperties == null) {
            this.maxUserProperties = Integer.valueOf(this.analyticsConnector.get().c(this.originService));
        }
        return this.maxUserProperties.intValue();
    }

    private void k(String str) {
        this.analyticsConnector.get().clearConditionalUserProperty(str, null, null);
    }

    private void o() throws a {
        if (this.analyticsConnector.get() == null) {
            throw new a("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }

    public c(Context context, o4.b<com.google.firebase.analytics.connector.a> bVar, String str) {
        this.analyticsConnector = bVar;
        this.originService = str;
    }

    private boolean d(List<b> list, b bVar) {
        String strC = bVar.c();
        String strE = bVar.e();
        for (b bVar2 : list) {
            if (bVar2.c().equals(strC) && bVar2.e().equals(strE)) {
                return true;
            }
        }
        return false;
    }

    private void l(Collection<com.google.firebase.analytics.connector.a.c> collection) {
        Iterator<com.google.firebase.analytics.connector.a.c> it = collection.iterator();
        while (it.hasNext()) {
            k(it.next().name);
        }
    }

    private void n(List<b> list) throws a {
        if (list.isEmpty()) {
            j();
            return;
        }
        List<b> listE = e();
        l(h(listE, list));
        b(g(list, listE));
    }

    @WorkerThread
    public List<b> e() throws a {
        o();
        List<com.google.firebase.analytics.connector.a.c> listF = f();
        ArrayList arrayList = new ArrayList();
        Iterator<com.google.firebase.analytics.connector.a.c> it = listF.iterator();
        while (it.hasNext()) {
            arrayList.add(b.a(it.next()));
        }
        return arrayList;
    }

    @WorkerThread
    public void j() throws a {
        o();
        l(f());
    }

    @WorkerThread
    public void m(List<Map<String, String>> list) throws a {
        o();
        if (list != null) {
            n(c(list));
            return;
        }
        throw new IllegalArgumentException("The replacementExperiments list is null.");
    }
}
