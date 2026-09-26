package k9;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a {
    private final byte[] keyData;

    public b(byte[] bArr) {
        super(true, null);
        this.keyData = org.bouncycastle.util.a.e(bArr);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.e(this.keyData);
    }

    public b(byte[] bArr, String str) {
        super(true, str);
        this.keyData = org.bouncycastle.util.a.e(bArr);
    }
}
