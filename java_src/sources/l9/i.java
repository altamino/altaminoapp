package l9;

/* JADX INFO: loaded from: classes6.dex */
final class i extends o {
    private static final int TYPE = 1;
    private final int lTreeAddress;
    private final int treeHeight;
    private final int treeIndex;

    protected static class b extends o.a<b> {
        private int lTreeAddress;
        private int treeHeight;
        private int treeIndex;

        protected b() {
            super(1);
            this.lTreeAddress = 0;
            this.treeHeight = 0;
            this.treeIndex = 0;
        }

        protected o l() {
            return new i(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // l9.o.a
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b e() {
            return this;
        }

        protected b n(int i10) {
            this.lTreeAddress = i10;
            return this;
        }

        protected b o(int i10) {
            this.treeHeight = i10;
            return this;
        }

        protected b p(int i10) {
            this.treeIndex = i10;
            return this;
        }
    }

    private i(b bVar) {
        super(bVar);
        this.lTreeAddress = bVar.lTreeAddress;
        this.treeHeight = bVar.treeHeight;
        this.treeIndex = bVar.treeIndex;
    }

    @Override // l9.o
    protected byte[] d() {
        byte[] bArrD = super.d();
        org.bouncycastle.util.f.c(this.lTreeAddress, bArrD, 16);
        org.bouncycastle.util.f.c(this.treeHeight, bArrD, 20);
        org.bouncycastle.util.f.c(this.treeIndex, bArrD, 24);
        return bArrD;
    }

    protected int e() {
        return this.lTreeAddress;
    }

    protected int f() {
        return this.treeHeight;
    }

    protected int g() {
        return this.treeIndex;
    }
}
