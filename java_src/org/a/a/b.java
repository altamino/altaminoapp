package org.a.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public final class b {
    private b a;
    private b b;
    private int c;
    private List<d> d = new ArrayList();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    private static final class a {
        public static final int a = 1;
        public static final int b = 2;
        private static final /* synthetic */ int[] c = {a, b};

        public static int[] a() {
            return (int[]) c.clone();
        }
    }

    public b(List<d> list) {
        this.c = a(list);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (d dVar : list) {
            if (dVar.b() < this.c) {
                arrayList.add(dVar);
            } else if (dVar.a() > this.c) {
                arrayList2.add(dVar);
            } else {
                this.d.add(dVar);
            }
        }
        if (arrayList.size() > 0) {
            this.a = new b(arrayList);
        }
        if (arrayList2.size() > 0) {
            this.b = new b(arrayList2);
        }
    }

    private static int a(List<d> list) {
        int i = -1;
        int i2 = -1;
        for (d dVar : list) {
            int iA = dVar.a();
            int iB = dVar.b();
            if (i == -1 || iA < i) {
                i = iA;
            }
            if (i2 == -1 || iB > i2) {
                i2 = iB;
            }
        }
        return (i + i2) / 2;
    }

    public final List<d> a(d dVar) {
        ArrayList arrayList = new ArrayList();
        if (this.c < dVar.a()) {
            a(dVar, arrayList, a(this.b, dVar));
            a(dVar, arrayList, a(dVar, a.b));
        } else if (this.c > dVar.b()) {
            a(dVar, arrayList, a(this.a, dVar));
            a(dVar, arrayList, a(dVar, a.a));
        } else {
            a(dVar, arrayList, this.d);
            a(dVar, arrayList, a(this.a, dVar));
            a(dVar, arrayList, a(this.b, dVar));
        }
        return arrayList;
    }

    private static void a(d dVar, List<d> list, List<d> list2) {
        for (d dVar2 : list2) {
            if (!dVar2.equals(dVar)) {
                list.add(dVar2);
            }
        }
    }

    private List<d> a(d dVar, int i) {
        ArrayList arrayList = new ArrayList();
        for (d dVar2 : this.d) {
            int i2 = AnonymousClass1.a[i - 1];
            if (i2 == 1) {
                if (dVar2.a() <= dVar.b()) {
                    arrayList.add(dVar2);
                }
            } else if (i2 == 2 && dVar2.b() >= dVar.a()) {
                arrayList.add(dVar2);
            }
        }
        return arrayList;
    }

    /* renamed from: org.a.a.b$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[a.a().length];

        static {
            try {
                a[a.a - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.b - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static List<d> a(b bVar, d dVar) {
        if (bVar == null) {
            return Collections.emptyList();
        }
        return bVar.a(dVar);
    }
}
