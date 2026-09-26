package org.slf4j.event;

/* JADX INFO: loaded from: classes4.dex */
public enum b {
    ERROR(40, "ERROR"),
    WARN(30, "WARN"),
    INFO(20, "INFO"),
    DEBUG(10, "DEBUG"),
    TRACE(0, "TRACE");

    private int levelInt;
    private String levelStr;

    @Override // java.lang.Enum
    public String toString() {
        return this.levelStr;
    }

    b(int i10, String str) {
        this.levelInt = i10;
        this.levelStr = str;
    }
}
