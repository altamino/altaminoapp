package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c0 extends z implements Iterable {
    static final m0 TYPE = new a(c0.class, 16);
    f[] elements;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z c(c0 c0Var) {
            return c0Var;
        }
    }

    class b implements Enumeration {
        private int pos = 0;

        b() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.pos < c0.this.elements.length;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            int i10 = this.pos;
            f[] fVarArr = c0.this.elements;
            if (i10 >= fVarArr.length) {
                throw new NoSuchElementException();
            }
            this.pos = i10 + 1;
            return fVarArr[i10];
        }
    }

    protected c0() {
        this.elements = g.EMPTY_ELEMENTS;
    }

    public static c0 y(Object obj) {
        if (obj == null || (obj instanceof c0)) {
            return (c0) obj;
        }
        if (obj instanceof f) {
            z zVarG = ((f) obj).g();
            if (zVarG instanceof c0) {
                return (c0) zVarG;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (c0) TYPE.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public Enumeration A() {
        return new b();
    }

    abstract c B();

    abstract j C();

    abstract v D();

    abstract d0 E();

    f[] F() {
        return this.elements;
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (!(zVar instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) zVar;
        int size = size();
        if (c0Var.size() != size) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            z zVarG = this.elements[i10].g();
            z zVarG2 = c0Var.elements[i10].g();
            if (zVarG != zVarG2 && !zVarG.b(zVarG2)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        int length = this.elements.length;
        int iHashCode = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 257) ^ this.elements[length].g().hashCode();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<f> iterator() {
        return new org.bouncycastle.util.a.C0479a(this.elements);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return true;
    }

    public int size() {
        return this.elements.length;
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
        int i10 = 0;
        while (true) {
            stringBuffer.append(this.elements[i10]);
            i10++;
            if (i10 >= size) {
                stringBuffer.append(kotlinx.serialization.json.internal.b.END_LIST);
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return new v1(this.elements, false);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new j2(this.elements, false);
    }

    c[] w() {
        int size = size();
        c[] cVarArr = new c[size];
        for (int i10 = 0; i10 < size; i10++) {
            cVarArr[i10] = c.z(this.elements[i10]);
        }
        return cVarArr;
    }

    v[] x() {
        int size = size();
        v[] vVarArr = new v[size];
        for (int i10 = 0; i10 < size; i10++) {
            vVarArr[i10] = v.x(this.elements[i10]);
        }
        return vVarArr;
    }

    public f z(int i10) {
        return this.elements[i10];
    }

    protected c0(f fVar) {
        if (fVar == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        this.elements = new f[]{fVar};
    }

    protected c0(g gVar) {
        if (gVar == null) {
            throw new NullPointerException("'elementVector' cannot be null");
        }
        this.elements = gVar.g();
    }

    protected c0(f[] fVarArr) {
        if (org.bouncycastle.util.a.t(fVarArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        this.elements = g.b(fVarArr);
    }

    c0(f[] fVarArr, boolean z6) {
        this.elements = z6 ? g.b(fVarArr) : fVarArr;
    }
}
