package com.linkedin.urls.detection;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    protected static final int MAX_BACKTRACK_MULTIPLIER = 10;
    private static final int MINIMUM_BACKTRACK_LENGTH = 20;
    private final char[] _content;
    private int _index = 0;
    private int _backtracked = 0;

    private void b(int i10) {
    }

    public int d() {
        return this._index;
    }

    public boolean a(int i10) {
        return this._content.length >= this._index + i10;
    }

    public boolean c() {
        return this._content.length <= this._index;
    }

    public String e(int i10, int i11) {
        StringBuilder sb = new StringBuilder();
        while (i10 < i11) {
            sb.append(this._content[i10]);
            i10++;
        }
        return sb.toString();
    }

    public int f() {
        return this._content.length;
    }

    public void g() {
        this._backtracked++;
        this._index--;
        b(1);
    }

    public String h(int i10) {
        return new String(this._content, this._index, i10);
    }

    public char j() {
        char[] cArr = this._content;
        int i10 = this._index;
        this._index = i10 + 1;
        char c7 = cArr[i10];
        if (a.o(c7)) {
            return ' ';
        }
        return c7;
    }

    public void k(int i10) {
        int iMax = Math.max(this._index - i10, 0);
        this._backtracked += iMax;
        this._index = i10;
        b(iMax);
    }

    public d(String str) {
        this._content = str.toCharArray();
    }

    public char i(int i10) {
        if (a(i10)) {
            return this._content[this._index + i10];
        }
        throw new ArrayIndexOutOfBoundsException();
    }
}
