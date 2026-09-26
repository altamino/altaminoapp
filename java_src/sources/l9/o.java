package l9;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o {
    private final int keyAndMask;
    private final int layerAddress;
    private final long treeAddress;
    private final int type;

    protected static abstract class a<T extends a> {
        private final int type;
        private int layerAddress = 0;
        private long treeAddress = 0;
        private int keyAndMask = 0;

        protected a(int i10) {
            this.type = i10;
        }

        protected abstract T e();

        protected T f(int i10) {
            this.keyAndMask = i10;
            return (T) e();
        }

        protected T g(int i10) {
            this.layerAddress = i10;
            return (T) e();
        }

        protected T h(long j6) {
            this.treeAddress = j6;
            return (T) e();
        }
    }

    protected o(a aVar) {
        this.layerAddress = aVar.layerAddress;
        this.treeAddress = aVar.treeAddress;
        this.type = aVar.type;
        this.keyAndMask = aVar.keyAndMask;
    }

    public final int a() {
        return this.keyAndMask;
    }

    protected final int b() {
        return this.layerAddress;
    }

    protected final long c() {
        return this.treeAddress;
    }

    protected byte[] d() {
        byte[] bArr = new byte[32];
        org.bouncycastle.util.f.c(this.layerAddress, bArr, 0);
        org.bouncycastle.util.f.h(this.treeAddress, bArr, 4);
        org.bouncycastle.util.f.c(this.type, bArr, 12);
        org.bouncycastle.util.f.c(this.keyAndMask, bArr, 28);
        return bArr;
    }
}
