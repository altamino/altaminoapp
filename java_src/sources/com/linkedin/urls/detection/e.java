package com.linkedin.urls.detection;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    private final StringBuilder _buffer = new StringBuilder();
    private final d _reader;
    private int _startIndex;

    public int f() {
        return this._startIndex;
    }

    public void a(char c7) {
        if (this._buffer.length() == 0) {
            this._startIndex = this._reader.d() - 1;
        }
        this._buffer.append(c7);
    }

    char b(int i10) {
        return this._buffer.charAt(i10);
    }

    public StringBuilder c(int i10, int i11) {
        if (i10 == 0) {
            this._startIndex += i11;
        }
        return this._buffer.delete(i10, i11);
    }

    public StringBuilder d(int i10) {
        return this._buffer.deleteCharAt(i10);
    }

    public String e() {
        return this._buffer.toString();
    }

    public int g(String str) {
        return this._buffer.lastIndexOf(str);
    }

    public int h() {
        return this._buffer.length();
    }

    public StringBuilder i(int i10, int i11, String str) {
        if (i10 == 0) {
            this._startIndex += (str.length() + i10) - i11;
        }
        return this._buffer.replace(i10, i11, str);
    }

    public String j(int i10) {
        return this._buffer.substring(i10);
    }

    public String k(int i10, int i11) {
        return this._buffer.substring(i10, i11);
    }

    public e(d dVar) {
        this._reader = dVar;
    }
}
