package org.slf4j.helpers;

import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
abstract class d implements org.slf4j.a, Serializable {
    private static final long serialVersionUID = 7535258609338176893L;
    protected String name;

    @Override // org.slf4j.a
    public String getName() {
        return this.name;
    }

    d() {
    }

    protected Object readResolve() throws ObjectStreamException {
        return org.slf4j.b.j(getName());
    }
}
