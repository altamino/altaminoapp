package org.schabi.newpipe.extractor.utils.jsextractor;

import java.util.Stack;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    private final Stack<C0482b> braceStack;
    private final d lastThree;
    private final Stack<f> parenStack;
    private final org.schabi.newpipe.extractor.utils.jsextractor.d stream;

    private static class d {
        private final e[] list = new e[3];

        void c(e eVar) {
            int i10 = 0;
            while (i10 < 3) {
                e[] eVarArr = this.list;
                e eVar2 = eVarArr[i10];
                eVarArr[i10] = eVar;
                i10++;
                eVar = eVar2;
            }
        }

        e a() {
            return this.list[0];
        }

        boolean b(org.schabi.newpipe.extractor.utils.jsextractor.c cVar) {
            e eVar = this.list[0];
            return eVar != null && eVar.token == cVar;
        }

        e d() {
            return this.list[2];
        }

        e e() {
            return this.list[1];
        }

        boolean f(org.schabi.newpipe.extractor.utils.jsextractor.c cVar) {
            e eVar = this.list[1];
            return eVar != null && eVar.token == cVar;
        }

        d() {
        }
    }

    public b(String str, int i10) {
        this.stream = new org.schabi.newpipe.extractor.utils.jsextractor.d(str, 0, i10);
        this.lastThree = new d();
        this.braceStack = new Stack<>();
        this.parenStack = new Stack<>();
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token;

        static {
            int[] iArr = new int[org.schabi.newpipe.extractor.utils.jsextractor.c.values().length];
            $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token = iArr;
            try {
                iArr[org.schabi.newpipe.extractor.utils.jsextractor.c.LP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.LC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.RP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.RC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.CASE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.COLON.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.RETURN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.YIELD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[org.schabi.newpipe.extractor.utils.jsextractor.c.YIELD_STAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX INFO: renamed from: org.schabi.newpipe.extractor.utils.jsextractor.b$b, reason: collision with other inner class name */
    private static class C0482b {
        public final boolean isBlock;
        public final f paren;

        C0482b(boolean z6, f fVar) {
            this.isBlock = z6;
            this.paren = fVar;
        }
    }

    private static class c extends e {
        public final C0482b brace;

        c(org.schabi.newpipe.extractor.utils.jsextractor.c cVar, int i10, C0482b c0482b) {
            super(cVar, i10);
            this.brace = c0482b;
        }
    }

    private static class e {
        public final int lineno;
        public final org.schabi.newpipe.extractor.utils.jsextractor.c token;

        e(org.schabi.newpipe.extractor.utils.jsextractor.c cVar, int i10) {
            this.token = cVar;
            this.lineno = i10;
        }
    }

    private static class f {
        public final boolean conditional;
        public final boolean funcExpr;

        f(boolean z6, boolean z10) {
            this.funcExpr = z6;
            this.conditional = z10;
        }
    }

    private static class g extends e {
        public final f paren;

        g(org.schabi.newpipe.extractor.utils.jsextractor.c cVar, int i10, f fVar) {
            super(cVar, i10);
            this.paren = fVar;
        }
    }

    public static class h {
        public final int end;
        public final int start;
        public final org.schabi.newpipe.extractor.utils.jsextractor.c token;

        h(org.schabi.newpipe.extractor.utils.jsextractor.c cVar, int i10, int i11) {
            this.token = cVar;
            this.start = i10;
            this.end = i11;
        }
    }

    boolean a(org.schabi.newpipe.extractor.utils.jsextractor.c cVar) {
        return cVar.isOp || cVar == org.schabi.newpipe.extractor.utils.jsextractor.c.RETURN || cVar == org.schabi.newpipe.extractor.utils.jsextractor.c.CASE;
    }

    public h b() throws aa.h {
        org.schabi.newpipe.extractor.utils.jsextractor.c cVarT = this.stream.t();
        if ((cVarT == org.schabi.newpipe.extractor.utils.jsextractor.c.DIV || cVarT == org.schabi.newpipe.extractor.utils.jsextractor.c.ASSIGN_DIV) && h()) {
            this.stream.w(cVarT);
            cVarT = org.schabi.newpipe.extractor.utils.jsextractor.c.REGEXP;
        }
        org.schabi.newpipe.extractor.utils.jsextractor.d dVar = this.stream;
        h hVar = new h(cVarT, dVar.tokenBeg, dVar.tokenEnd);
        i(hVar);
        return hVar;
    }

    void c(int i10) throws aa.h {
        if (!this.braceStack.isEmpty()) {
            this.lastThree.c(new c(org.schabi.newpipe.extractor.utils.jsextractor.c.RC, this.stream.lineno, this.braceStack.pop()));
            return;
        }
        throw new aa.h("unmatched closing brace at " + i10);
    }

    void d(int i10) throws aa.h {
        if (!this.parenStack.isEmpty()) {
            this.lastThree.c(new g(org.schabi.newpipe.extractor.utils.jsextractor.c.RP, this.stream.lineno, this.parenStack.pop()));
            return;
        }
        throw new aa.h("unmached closing paren at " + i10);
    }

    void e() {
        boolean z6 = true;
        if (this.lastThree.a() != null) {
            int i10 = a.$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[this.lastThree.a().token.ordinal()];
            if (i10 != 1 && i10 != 2) {
                switch (i10) {
                    case 5:
                        z6 = false;
                        break;
                    case 6:
                        if (this.braceStack.isEmpty() || !this.braceStack.lastElement().isBlock) {
                            z6 = false;
                        }
                        break;
                    case 7:
                    case 8:
                    case 9:
                        if (this.lastThree.e() == null || this.lastThree.e().lineno == this.stream.lineno) {
                            z6 = false;
                        }
                        break;
                    default:
                        z6 = true ^ this.lastThree.a().token.isOp;
                        break;
                }
            } else {
                z6 = false;
            }
        }
        C0482b c0482b = new C0482b(z6, ((this.lastThree.a() instanceof g) && this.lastThree.a().token == org.schabi.newpipe.extractor.utils.jsextractor.c.RP) ? ((g) this.lastThree.a()).paren : null);
        this.braceStack.push(c0482b);
        this.lastThree.c(new c(org.schabi.newpipe.extractor.utils.jsextractor.c.LC, this.stream.lineno, c0482b));
    }

    void f() {
        d dVar = this.lastThree;
        org.schabi.newpipe.extractor.utils.jsextractor.c cVar = org.schabi.newpipe.extractor.utils.jsextractor.c.FUNCTION;
        f fVar = new f(!dVar.b(cVar) ? !(this.lastThree.f(cVar) && this.lastThree.d() != null && a(this.lastThree.d().token)) : this.lastThree.e() == null || !a(this.lastThree.e().token), this.lastThree.a() != null && this.lastThree.a().token.a());
        this.parenStack.push(fVar);
        this.lastThree.c(new g(org.schabi.newpipe.extractor.utils.jsextractor.c.LP, this.stream.lineno, fVar));
    }

    public boolean g() {
        return this.braceStack.isEmpty() && this.parenStack.isEmpty();
    }

    boolean h() {
        if (this.lastThree.a() == null) {
            return true;
        }
        org.schabi.newpipe.extractor.utils.jsextractor.c cVar = this.lastThree.a().token;
        if (cVar.isKeyw) {
            return cVar != org.schabi.newpipe.extractor.utils.jsextractor.c.THIS;
        }
        if (cVar == org.schabi.newpipe.extractor.utils.jsextractor.c.RP && (this.lastThree.a() instanceof g)) {
            return ((g) this.lastThree.a()).paren.conditional;
        }
        if (cVar != org.schabi.newpipe.extractor.utils.jsextractor.c.RC || !(this.lastThree.a() instanceof c)) {
            return cVar.isPunct && cVar != org.schabi.newpipe.extractor.utils.jsextractor.c.RB;
        }
        C0482b c0482b = ((c) this.lastThree.a()).brace;
        if (!c0482b.isBlock) {
            return false;
        }
        f fVar = c0482b.paren;
        if (fVar != null) {
            return !fVar.funcExpr;
        }
        return true;
    }

    void i(h hVar) throws aa.h {
        org.schabi.newpipe.extractor.utils.jsextractor.c cVar = hVar.token;
        if (cVar.isPunct) {
            int i10 = a.$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token[cVar.ordinal()];
            if (i10 == 1) {
                f();
                return;
            }
            if (i10 == 2) {
                e();
                return;
            } else if (i10 == 3) {
                d(hVar.start);
                return;
            } else if (i10 == 4) {
                c(hVar.start);
                return;
            }
        }
        org.schabi.newpipe.extractor.utils.jsextractor.c cVar2 = hVar.token;
        if (cVar2 != org.schabi.newpipe.extractor.utils.jsextractor.c.COMMENT) {
            this.lastThree.c(new e(cVar2, this.stream.lineno));
        }
    }

    public b(String str) {
        this(str, 0);
    }
}
