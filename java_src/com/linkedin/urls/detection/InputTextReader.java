package com.linkedin.urls.detection;

/* loaded from: classes2.dex */
public class InputTextReader {
    protected static final int MAX_BACKTRACK_MULTIPLIER = 10;
    private static final int MINIMUM_BACKTRACK_LENGTH = 20;
    private final char[] _content;
    private int _index = 0;
    private int _backtracked = 0;

    private void checkBacktrackLoop(int i) {
    }

    public InputTextReader(String str) {
        this._content = str.toCharArray();
    }

    public char read() {
        char[] cArr = this._content;
        int i = this._index;
        this._index = i + 1;
        char c = cArr[i];
        if (CharUtils.isWhiteSpace(c)) {
            return ' ';
        }
        return c;
    }

    public String peek(int i) {
        return new String(this._content, this._index, i);
    }

    public char peekChar(int i) {
        if (!canReadChars(i)) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this._content[this._index + i];
    }

    public boolean canReadChars(int i) {
        return this._content.length >= this._index + i;
    }

    public boolean eof() {
        return this._content.length <= this._index;
    }

    public int getPosition() {
        return this._index;
    }

    public int getTotalLength() {
        return this._content.length;
    }

    public void seek(int i) {
        int iMax = Math.max(this._index - i, 0);
        this._backtracked += iMax;
        this._index = i;
        checkBacktrackLoop(iMax);
    }

    public void goBack() {
        this._backtracked++;
        this._index--;
        checkBacktrackLoop(1);
    }

    public String getRangeContent(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        while (i < i2) {
            sb.append(this._content[i]);
            i++;
        }
        return sb.toString();
    }
}
