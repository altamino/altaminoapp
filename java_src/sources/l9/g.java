package l9;

/* JADX INFO: loaded from: classes5.dex */
final class g extends o {
    private static final int PADDING = 0;
    private static final int TYPE = 2;
    private final int padding;
    private final int treeHeight;
    private final int treeIndex;

    protected static class b extends o.a<b> {
        private int treeHeight;
        private int treeIndex;

        protected b() {
            super(2);
            this.treeHeight = 0;
            this.treeIndex = 0;
        }

        protected o k() {
            return new g(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // l9.o.a
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public b e() {
            return this;
        }

        protected b m(int i10) {
            this.treeHeight = i10;
            return this;
        }

        protected b n(int i10) {
            this.treeIndex = i10;
            return this;
        }
    }

    private g(b bVar) {
        super(bVar);
        this.padding = 0;
        this.treeHeight = bVar.treeHeight;
        this.treeIndex = bVar.treeIndex;
    }

    @Override // l9.o
    protected byte[] d() {
        byte[] bArrD = super.d();
        org.bouncycastle.util.f.c(this.padding, bArrD, 16);
        org.bouncycastle.util.f.c(this.treeHeight, bArrD, 20);
        org.bouncycastle.util.f.c(this.treeIndex, bArrD, 24);
        return bArrD;
    }

    protected int e() {
        return this.treeHeight;
    }

    protected int f() {
        return this.treeIndex;
    }
}
