package org.a.a;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* loaded from: classes4.dex */
public final class c {
    private final b a;

    public c(List<d> list) {
        this.a = new b(list);
    }

    public final List<d> a(List<d> list) {
        Collections.sort(list, new f());
        TreeSet treeSet = new TreeSet();
        for (d dVar : list) {
            if (!treeSet.contains(dVar)) {
                treeSet.addAll(this.a.a(dVar));
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            list.remove((d) it.next());
        }
        Collections.sort(list, new e());
        return list;
    }
}
