package com.google.zxing;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private final int height;
    private final int width;

    public int a() {
        return this.height;
    }

    public int b() {
        return this.width;
    }

    public int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.width == bVar.width && this.height == bVar.height) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return this.width + "x" + this.height;
    }

    public b(int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            this.width = i10;
            this.height = i11;
            return;
        }
        throw new IllegalArgumentException();
    }
}
