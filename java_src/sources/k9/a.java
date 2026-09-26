package k9;

/* JADX INFO: loaded from: classes5.dex */
public class a extends org.bouncycastle.crypto.params.a {
    public static final String SHA3_256 = "SHA3-256";
    public static final String SHA512_256 = "SHA-512/256";
    private final String treeDigest;

    protected a(boolean z6, String str) {
        super(z6);
        this.treeDigest = str;
    }

    public String a() {
        return this.treeDigest;
    }
}
