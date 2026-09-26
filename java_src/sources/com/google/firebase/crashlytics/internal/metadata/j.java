package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.model.f0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class j {
    static final String ROLLOUTS_STATE = "rolloutsState";
    private final int maxEntries;
    private final List<i> rolloutsState = new ArrayList();

    public synchronized List<i> b() {
        return Collections.unmodifiableList(new ArrayList(this.rolloutsState));
    }

    public synchronized boolean c(List<i> list) {
        this.rolloutsState.clear();
        if (list.size() <= this.maxEntries) {
            return this.rolloutsState.addAll(list);
        }
        com.google.firebase.crashlytics.internal.g.f().k("Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.maxEntries);
        return this.rolloutsState.addAll(list.subList(0, this.maxEntries));
    }

    public j(int i10) {
        this.maxEntries = i10;
    }

    public List<f0.e.d.AbstractC0251e> a() {
        List<i> listB = b();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < listB.size(); i10++) {
            arrayList.add(listB.get(i10).h());
        }
        return arrayList;
    }
}
