package k9;

/* JADX INFO: loaded from: classes5.dex */
public class c extends a {
    private final byte[] keyData;

    public c(byte[] bArr) {
        super(false, null);
        this.keyData = org.bouncycastle.util.a.e(bArr);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.e(this.keyData);
    }

    public c(byte[] bArr, String str) {
        super(false, str);
        this.keyData = org.bouncycastle.util.a.e(bArr);
    }
}
