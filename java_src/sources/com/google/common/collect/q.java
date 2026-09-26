package com.google.common.collect;

/* JADX INFO: loaded from: classes.dex */
class q extends e0<Object, Object> {
    static final q INSTANCE = new q();
    private static final long serialVersionUID = 0;

    private Object readResolve() {
        return INSTANCE;
    }

    private q() {
        super(b0.m(), 0, null);
    }
}
