package com.fasterxml.jackson.core;

import org.slf4j.a;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JsonStreamContext {
    protected static final int TYPE_ARRAY = 1;
    protected static final int TYPE_OBJECT = 2;
    protected static final int TYPE_ROOT = 0;
    protected int _index;
    protected int _type;

    protected JsonStreamContext() {
    }

    public final int getCurrentIndex() {
        int i10 = this._index;
        if (i10 < 0) {
            return 0;
        }
        return i10;
    }

    public abstract String getCurrentName();

    public final int getEntryCount() {
        return this._index + 1;
    }

    public abstract JsonStreamContext getParent();

    public final String getTypeDesc() {
        int i10 = this._type;
        if (i10 == 0) {
            return a.ROOT_LOGGER_NAME;
        }
        if (i10 != 1) {
            return i10 != 2 ? "?" : "OBJECT";
        }
        return "ARRAY";
    }

    public final boolean inArray() {
        return this._type == 1;
    }

    public final boolean inObject() {
        return this._type == 2;
    }

    public final boolean inRoot() {
        return this._type == 0;
    }
}
