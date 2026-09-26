package org.jsoup.parser;

/* JADX INFO: loaded from: classes9.dex */
public class ParseError {
    private String errorMsg;
    private int pos;

    ParseError(int i10, String str) {
        this.pos = i10;
        this.errorMsg = str;
    }

    public String getErrorMessage() {
        return this.errorMsg;
    }

    public int getPosition() {
        return this.pos;
    }

    ParseError(int i10, String str, Object... objArr) {
        this.errorMsg = String.format(str, objArr);
        this.pos = i10;
    }

    public String toString() {
        return this.pos + ": " + this.errorMsg;
    }
}
