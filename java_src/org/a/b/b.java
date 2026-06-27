package org.a.b;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes4.dex */
public final class b {
    final int a;
    final Map<Character, b> b;
    b c;
    private final b d;
    private Set<String> e;

    public b() {
        this(0);
    }

    private b(int i) {
        this.b = new HashMap();
        this.a = i;
        this.d = i == 0 ? this : null;
    }

    final b a(Character ch, boolean z) {
        b bVar;
        b bVar2 = this.b.get(ch);
        return (z || bVar2 != null || (bVar = this.d) == null) ? bVar2 : bVar;
    }

    public final b a(String str) {
        b bVar = this;
        for (char c : str.toCharArray()) {
            Character chValueOf = Character.valueOf(c);
            b bVarA = bVar.a(chValueOf, true);
            if (bVarA == null) {
                bVarA = new b(bVar.a + 1);
                bVar.b.put(chValueOf, bVarA);
            }
            bVar = bVarA;
        }
        return bVar;
    }

    public final void b(String str) {
        if (this.e == null) {
            this.e = new TreeSet();
        }
        this.e.add(str);
    }

    public final void a(Collection<String> collection) {
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public final Collection<String> a() {
        Set<String> set = this.e;
        return set == null ? Collections.emptyList() : set;
    }
}
