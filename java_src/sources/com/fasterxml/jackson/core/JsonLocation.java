package com.fasterxml.jackson.core;

import java.io.Serializable;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes11.dex */
public class JsonLocation implements Serializable {
    public static final JsonLocation NA = new JsonLocation("N/A", -1, -1, -1, -1);
    private static final long serialVersionUID = 1;
    final int _columnNr;
    final int _lineNr;
    final transient Object _sourceRef;
    final long _totalBytes;
    final long _totalChars;

    public JsonLocation(Object obj, long j6, int i10, int i11) {
        this(obj, -1L, j6, i10, i11);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof JsonLocation)) {
            return false;
        }
        JsonLocation jsonLocation = (JsonLocation) obj;
        Object obj2 = this._sourceRef;
        if (obj2 == null) {
            if (jsonLocation._sourceRef != null) {
                return false;
            }
        } else if (!obj2.equals(jsonLocation._sourceRef)) {
            return false;
        }
        return this._lineNr == jsonLocation._lineNr && this._columnNr == jsonLocation._columnNr && this._totalChars == jsonLocation._totalChars && getByteOffset() == jsonLocation.getByteOffset();
    }

    public long getByteOffset() {
        return this._totalBytes;
    }

    public long getCharOffset() {
        return this._totalChars;
    }

    public int getColumnNr() {
        return this._columnNr;
    }

    public int getLineNr() {
        return this._lineNr;
    }

    public Object getSourceRef() {
        return this._sourceRef;
    }

    public JsonLocation(Object obj, long j6, long j10, int i10, int i11) {
        this._sourceRef = obj;
        this._totalBytes = j6;
        this._totalChars = j10;
        this._lineNr = i10;
        this._columnNr = i11;
    }

    public int hashCode() {
        Object obj = this._sourceRef;
        return ((((obj == null ? 1 : obj.hashCode()) ^ this._lineNr) + this._columnNr) ^ ((int) this._totalChars)) + ((int) this._totalBytes);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(80);
        sb.append("[Source: ");
        Object obj = this._sourceRef;
        if (obj == null) {
            sb.append("UNKNOWN");
        } else {
            sb.append(obj.toString());
        }
        sb.append("; line: ");
        sb.append(this._lineNr);
        sb.append(", column: ");
        sb.append(this._columnNr);
        sb.append(b.END_LIST);
        return sb.toString();
    }
}
