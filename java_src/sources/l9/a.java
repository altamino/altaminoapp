package l9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements Serializable {
    private static final long serialVersionUID = 1;
    private List<u> authenticationPath;
    private int index;
    private int k;
    private Map<Integer, u> keep;
    private transient int maxIndex;
    private Map<Integer, LinkedList<u>> retain;
    private u root;
    private Stack<u> stack;
    private final List<c> treeHashInstances;
    private final int treeHeight;
    private boolean used;
    private transient k wotsPlus;

    a(a aVar) {
        this.wotsPlus = new k(aVar.wotsPlus.d());
        this.treeHeight = aVar.treeHeight;
        this.k = aVar.k;
        this.root = aVar.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(aVar.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : aVar.retain.keySet()) {
            this.retain.put(num, (LinkedList) aVar.retain.get(num).clone());
        }
        Stack<u> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(aVar.stack);
        this.treeHashInstances = new ArrayList();
        Iterator<c> it = aVar.treeHashInstances.iterator();
        while (it.hasNext()) {
            this.treeHashInstances.add(it.next().clone());
        }
        this.keep = new TreeMap(aVar.keep);
        this.index = aVar.index;
        this.maxIndex = aVar.maxIndex;
        this.used = aVar.used;
    }

    private c a() {
        c cVar = null;
        for (c cVar2 : this.treeHashInstances) {
            if (!cVar2.i() && cVar2.j() && (cVar == null || cVar2.c() < cVar.c() || (cVar2.c() == cVar.c() && cVar2.e() < cVar.e()))) {
                cVar = cVar2;
            }
        }
        return cVar;
    }

    private void e(byte[] bArr, byte[] bArr2, j jVar) {
        if (jVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        i iVar = (i) new i.b().g(jVar.b()).h(jVar.c()).l();
        g gVar = (g) new g.b().g(jVar.b()).h(jVar.c()).k();
        for (int i10 = 0; i10 < (1 << this.treeHeight); i10++) {
            jVar = (j) new j.b().g(jVar.b()).h(jVar.c()).p(i10).n(jVar.e()).o(jVar.f()).f(jVar.a()).l();
            k kVar = this.wotsPlus;
            kVar.h(kVar.g(bArr2, jVar), bArr);
            n nVarE = this.wotsPlus.e(jVar);
            iVar = (i) new i.b().g(iVar.b()).h(iVar.c()).n(i10).o(iVar.f()).p(iVar.g()).f(iVar.a()).l();
            u uVarA = v.a(this.wotsPlus, nVarE, iVar);
            gVar = (g) new g.b().g(gVar.b()).h(gVar.c()).n(i10).f(gVar.a()).k();
            while (!this.stack.isEmpty() && this.stack.peek().a() == uVarA.a()) {
                int iA = i10 / (1 << uVarA.a());
                if (iA == 1) {
                    this.authenticationPath.add(uVarA);
                }
                if (iA == 3 && uVarA.a() < this.treeHeight - this.k) {
                    this.treeHashInstances.get(uVarA.a()).k(uVarA);
                }
                if (iA >= 3 && (iA & 1) == 1 && uVarA.a() >= this.treeHeight - this.k && uVarA.a() <= this.treeHeight - 2) {
                    if (this.retain.get(Integer.valueOf(uVarA.a())) == null) {
                        LinkedList<u> linkedList = new LinkedList<>();
                        linkedList.add(uVarA);
                        this.retain.put(Integer.valueOf(uVarA.a()), linkedList);
                    } else {
                        this.retain.get(Integer.valueOf(uVarA.a())).add(uVarA);
                    }
                }
                g gVar2 = (g) new g.b().g(gVar.b()).h(gVar.c()).m(gVar.e()).n((gVar.f() - 1) / 2).f(gVar.a()).k();
                u uVarB = v.b(this.wotsPlus, this.stack.pop(), uVarA, gVar2);
                u uVar = new u(uVarB.a() + 1, uVarB.b());
                gVar = (g) new g.b().g(gVar2.b()).h(gVar2.c()).m(gVar2.e() + 1).n(gVar2.f()).f(gVar2.a()).k();
                uVarA = uVar;
            }
            this.stack.push(uVarA);
        }
        this.root = this.stack.pop();
    }

    private void f(byte[] bArr, byte[] bArr2, j jVar) {
        List<u> list;
        u uVarRemoveFirst;
        if (jVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        if (this.used) {
            throw new IllegalStateException("index already used");
        }
        int i10 = this.index;
        if (i10 > this.maxIndex - 1) {
            throw new IllegalStateException("index out of bounds");
        }
        int iB = a0.b(i10, this.treeHeight);
        if (((this.index >> (iB + 1)) & 1) == 0 && iB < this.treeHeight - 1) {
            this.keep.put(Integer.valueOf(iB), this.authenticationPath.get(iB));
        }
        i iVar = (i) new i.b().g(jVar.b()).h(jVar.c()).l();
        g gVar = (g) new g.b().g(jVar.b()).h(jVar.c()).k();
        if (iB == 0) {
            jVar = (j) new j.b().g(jVar.b()).h(jVar.c()).p(this.index).n(jVar.e()).o(jVar.f()).f(jVar.a()).l();
            k kVar = this.wotsPlus;
            kVar.h(kVar.g(bArr2, jVar), bArr);
            this.authenticationPath.set(0, v.a(this.wotsPlus, this.wotsPlus.e(jVar), (i) new i.b().g(iVar.b()).h(iVar.c()).n(this.index).o(iVar.f()).p(iVar.g()).f(iVar.a()).l()));
        } else {
            int i11 = iB - 1;
            g gVar2 = (g) new g.b().g(gVar.b()).h(gVar.c()).m(i11).n(this.index >> iB).f(gVar.a()).k();
            k kVar2 = this.wotsPlus;
            kVar2.h(kVar2.g(bArr2, jVar), bArr);
            u uVarB = v.b(this.wotsPlus, this.authenticationPath.get(i11), this.keep.get(Integer.valueOf(i11)), gVar2);
            this.authenticationPath.set(iB, new u(uVarB.a() + 1, uVarB.b()));
            this.keep.remove(Integer.valueOf(i11));
            for (int i12 = 0; i12 < iB; i12++) {
                if (i12 < this.treeHeight - this.k) {
                    list = this.authenticationPath;
                    uVarRemoveFirst = this.treeHashInstances.get(i12).f();
                } else {
                    list = this.authenticationPath;
                    uVarRemoveFirst = this.retain.get(Integer.valueOf(i12)).removeFirst();
                }
                list.set(i12, uVarRemoveFirst);
            }
            int iMin = Math.min(iB, this.treeHeight - this.k);
            for (int i13 = 0; i13 < iMin; i13++) {
                int i14 = this.index + 1 + ((1 << i13) * 3);
                if (i14 < (1 << this.treeHeight)) {
                    this.treeHashInstances.get(i13).g(i14);
                }
            }
        }
        for (int i15 = 0; i15 < ((this.treeHeight - this.k) >> 1); i15++) {
            c cVarA = a();
            if (cVarA != null) {
                cVarA.l(this.stack, this.wotsPlus, bArr, bArr2, jVar);
            }
        }
        this.index++;
    }

    private void g() {
        if (this.authenticationPath == null) {
            throw new IllegalStateException("authenticationPath == null");
        }
        if (this.retain == null) {
            throw new IllegalStateException("retain == null");
        }
        if (this.stack == null) {
            throw new IllegalStateException("stack == null");
        }
        if (this.treeHashInstances == null) {
            throw new IllegalStateException("treeHashInstances == null");
        }
        if (this.keep == null) {
            throw new IllegalStateException("keep == null");
        }
        if (!a0.l(this.treeHeight, this.index)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readInt() : (1 << this.treeHeight) - 1;
        int i10 = this.maxIndex;
        if (i10 > (1 << this.treeHeight) - 1 || this.index > i10 + 1 || objectInputStream.available() != 0) {
            throw new IOException("inconsistent BDS data detected");
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.maxIndex);
    }

    protected int b() {
        return this.index;
    }

    public int c() {
        return this.maxIndex;
    }

    public a d(byte[] bArr, byte[] bArr2, j jVar) {
        return new a(this, bArr, bArr2, jVar);
    }

    public a h(org.bouncycastle.asn1.u uVar) {
        return new a(this, uVar);
    }

    private a(a aVar, org.bouncycastle.asn1.u uVar) {
        this.wotsPlus = new k(new m(uVar));
        this.treeHeight = aVar.treeHeight;
        this.k = aVar.k;
        this.root = aVar.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(aVar.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : aVar.retain.keySet()) {
            this.retain.put(num, (LinkedList) aVar.retain.get(num).clone());
        }
        Stack<u> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(aVar.stack);
        this.treeHashInstances = new ArrayList();
        Iterator<c> it = aVar.treeHashInstances.iterator();
        while (it.hasNext()) {
            this.treeHashInstances.add(it.next().clone());
        }
        this.keep = new TreeMap(aVar.keep);
        this.index = aVar.index;
        this.maxIndex = aVar.maxIndex;
        this.used = aVar.used;
        g();
    }

    private a(a aVar, byte[] bArr, byte[] bArr2, j jVar) {
        this.wotsPlus = new k(aVar.wotsPlus.d());
        this.treeHeight = aVar.treeHeight;
        this.k = aVar.k;
        this.root = aVar.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(aVar.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : aVar.retain.keySet()) {
            this.retain.put(num, (LinkedList) aVar.retain.get(num).clone());
        }
        Stack<u> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(aVar.stack);
        this.treeHashInstances = new ArrayList();
        Iterator<c> it = aVar.treeHashInstances.iterator();
        while (it.hasNext()) {
            this.treeHashInstances.add(it.next().clone());
        }
        this.keep = new TreeMap(aVar.keep);
        this.index = aVar.index;
        this.maxIndex = aVar.maxIndex;
        this.used = false;
        f(bArr, bArr2, jVar);
    }

    private a(k kVar, int i10, int i11, int i12) {
        this.wotsPlus = kVar;
        this.treeHeight = i10;
        this.maxIndex = i12;
        this.k = i11;
        if (i11 <= i10 && i11 >= 2) {
            int i13 = i10 - i11;
            if (i13 % 2 == 0) {
                this.authenticationPath = new ArrayList();
                this.retain = new TreeMap();
                this.stack = new Stack<>();
                this.treeHashInstances = new ArrayList();
                for (int i14 = 0; i14 < i13; i14++) {
                    this.treeHashInstances.add(new c(i14));
                }
                this.keep = new TreeMap();
                this.index = 0;
                this.used = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }

    a(x xVar, int i10, int i11) {
        this(xVar.i(), xVar.b(), xVar.c(), i11);
        this.maxIndex = i10;
        this.index = i11;
        this.used = true;
    }

    a(x xVar, byte[] bArr, byte[] bArr2, j jVar) {
        this(xVar.i(), xVar.b(), xVar.c(), (1 << xVar.b()) - 1);
        e(bArr, bArr2, jVar);
    }

    a(x xVar, byte[] bArr, byte[] bArr2, j jVar, int i10) {
        this(xVar.i(), xVar.b(), xVar.c(), (1 << xVar.b()) - 1);
        e(bArr, bArr2, jVar);
        while (this.index < i10) {
            f(bArr, bArr2, jVar);
            this.used = false;
        }
    }
}
