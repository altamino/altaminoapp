package com.google.android.play.integrity.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class p {
    public static final List a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            r rVar = (r) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", rVar.a());
            bundle.putLong("event_timestamp", rVar.b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static final void b(int i10, List list) {
        list.add(r.c(i10, System.currentTimeMillis()));
    }
}
