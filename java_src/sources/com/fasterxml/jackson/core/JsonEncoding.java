package com.fasterxml.jackson.core;

import org.apache.commons.compress.utils.CharsetNames;

/* JADX INFO: loaded from: classes11.dex */
public enum JsonEncoding {
    UTF8("UTF-8", false, 8),
    UTF16_BE(CharsetNames.UTF_16BE, true, 16),
    UTF16_LE("UTF-16LE", false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);

    protected final boolean _bigEndian;
    protected final int _bits;
    protected final String _javaName;

    public int bits() {
        return this._bits;
    }

    public String getJavaName() {
        return this._javaName;
    }

    public boolean isBigEndian() {
        return this._bigEndian;
    }

    JsonEncoding(String str, boolean z6, int i10) {
        this._javaName = str;
        this._bigEndian = z6;
        this._bits = i10;
    }
}
