package l9;

/* JADX INFO: loaded from: classes6.dex */
final class j extends o {
    private static final int TYPE = 0;
    private final int chainAddress;
    private final int hashAddress;
    private final int otsAddress;

    protected static class b extends o.a<b> {
        private int chainAddress;
        private int hashAddress;
        private int otsAddress;

        protected b() {
            super(0);
            this.otsAddress = 0;
            this.chainAddress = 0;
            this.hashAddress = 0;
        }

        protected o l() {
            return new j(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // l9.o.a
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b e() {
            return this;
        }

        protected b n(int i10) {
            this.chainAddress = i10;
            return this;
        }

        protected b o(int i10) {
            this.hashAddress = i10;
            return this;
        }

        protected b p(int i10) {
            this.otsAddress = i10;
            return this;
        }
    }

    private j(b bVar) {
        super(bVar);
        this.otsAddress = bVar.otsAddress;
        this.chainAddress = bVar.chainAddress;
        this.hashAddress = bVar.hashAddress;
    }

    @Override // l9.o
    protected byte[] d() {
        byte[] bArrD = super.d();
        org.bouncycastle.util.f.c(this.otsAddress, bArrD, 16);
        org.bouncycastle.util.f.c(this.chainAddress, bArrD, 20);
        org.bouncycastle.util.f.c(this.hashAddress, bArrD, 24);
        return bArrD;
    }

    protected int e() {
        return this.chainAddress;
    }

    protected int f() {
        return this.hashAddress;
    }

    protected int g() {
        return this.otsAddress;
    }
}
