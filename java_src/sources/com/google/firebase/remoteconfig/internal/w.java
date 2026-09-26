package com.google.firebase.remoteconfig.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes11.dex */
public class w implements c5.n {
    private static final String ILLEGAL_ARGUMENT_STRING_FORMAT = "[Value: %s] cannot be converted to a %s.";
    private final int source;
    private final String value;

    @Override // c5.n
    public int c() {
        return this.source;
    }

    private void g() {
        if (this.value == null) {
            throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
        }
    }

    @Override // c5.n
    public long a() {
        if (this.source == 0) {
            return 0L;
        }
        String strF = f();
        try {
            return Long.valueOf(strF).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format(ILLEGAL_ARGUMENT_STRING_FORMAT, strF, "long"), e);
        }
    }

    @Override // c5.n
    public double b() {
        if (this.source == 0) {
            return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        }
        String strF = f();
        try {
            return Double.valueOf(strF).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format(ILLEGAL_ARGUMENT_STRING_FORMAT, strF, "double"), e);
        }
    }

    @Override // c5.n
    public String d() {
        if (this.source == 0) {
            return "";
        }
        g();
        return this.value;
    }

    @Override // c5.n
    public boolean e() throws IllegalArgumentException {
        if (this.source == 0) {
            return false;
        }
        String strF = f();
        if (o.TRUE_REGEX.matcher(strF).matches()) {
            return true;
        }
        if (o.FALSE_REGEX.matcher(strF).matches()) {
            return false;
        }
        throw new IllegalArgumentException(String.format(ILLEGAL_ARGUMENT_STRING_FORMAT, strF, TypedValues.Custom.S_BOOLEAN));
    }

    w(String str, int i10) {
        this.value = str;
        this.source = i10;
    }

    private String f() {
        return d().trim();
    }
}
