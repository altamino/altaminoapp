package l9;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public final class u implements Serializable {
    private static final long serialVersionUID = 1;
    private final int height;
    private final byte[] value;

    protected u(int i10, byte[] bArr) {
        this.height = i10;
        this.value = bArr;
    }

    public int a() {
        return this.height;
    }

    public byte[] b() {
        return a0.c(this.value);
    }
}
