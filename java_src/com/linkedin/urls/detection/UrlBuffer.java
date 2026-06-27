package com.linkedin.urls.detection;

/* loaded from: classes2.dex */
public class UrlBuffer {
    private final StringBuilder _buffer = new StringBuilder();
    private final InputTextReader _reader;
    private int _startIndex;

    public UrlBuffer(InputTextReader inputTextReader) {
        this._reader = inputTextReader;
    }

    public void append(char c) {
        if (this._buffer.length() == 0) {
            this._startIndex = this._reader.getPosition() - 1;
        }
        this._buffer.append(c);
    }

    public int length() {
        return this._buffer.length();
    }

    public String substring(int i) {
        return this._buffer.substring(i);
    }

    public String substring(int i, int i2) {
        return this._buffer.substring(i, i2);
    }

    public StringBuilder delete(int i, int i2) {
        if (i == 0) {
            this._startIndex += i2;
        }
        return this._buffer.delete(i, i2);
    }

    public StringBuilder deleteCharAt(int i) {
        return this._buffer.deleteCharAt(i);
    }

    char charAt(int i) {
        return this._buffer.charAt(i);
    }

    public StringBuilder replace(int i, int i2, String str) {
        if (i == 0) {
            this._startIndex += (str.length() + i) - i2;
        }
        return this._buffer.replace(i, i2, str);
    }

    public int lastIndexOf(String str) {
        return this._buffer.lastIndexOf(str);
    }

    public int getStartIndex() {
        return this._startIndex;
    }

    public String getBufferString() {
        return this._buffer.toString();
    }
}
