package org.a.b.a;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class a implements c {
    private final List<org.a.b.a> a = new ArrayList();

    @Override // org.a.b.a.b
    public final boolean a(org.a.b.a aVar) {
        this.a.add(aVar);
        return true;
    }

    @Override // org.a.b.a.c
    public final List<org.a.b.a> a() {
        return this.a;
    }
}
