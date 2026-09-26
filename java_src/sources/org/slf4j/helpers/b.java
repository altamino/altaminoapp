package org.slf4j.helpers;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a {
    public static final b NOP_LOGGER = new b();
    private static final long serialVersionUID = -517220405410904473L;

    @Override // org.slf4j.a
    public final void a(String str) {
    }

    @Override // org.slf4j.a
    public final void b(String str) {
    }

    @Override // org.slf4j.helpers.a, org.slf4j.helpers.d, org.slf4j.a
    public String getName() {
        return "NOP";
    }

    protected b() {
    }
}
