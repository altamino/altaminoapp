package l9;

/* JADX INFO: loaded from: classes6.dex */
public class p extends org.bouncycastle.crypto.params.a {
    public static final String SHAKE128 = "SHAKE128";
    public static final String SHAKE256 = "SHAKE256";
    public static final String SHA_256 = "SHA-256";
    public static final String SHA_512 = "SHA-512";
    private final String treeDigest;

    public p(boolean z6, String str) {
        super(z6);
        this.treeDigest = str;
    }

    public String a() {
        return this.treeDigest;
    }
}
