package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h implements Comparable<h> {
    private static final Method LOCALE_METHOD;
    public static final org.threeten.bp.temporal.j<h> FROM = new a();
    private static final ConcurrentHashMap<String, h> CHRONOS_BY_ID = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, h> CHRONOS_BY_TYPE = new ConcurrentHashMap<>();

    public abstract b b(org.threeten.bp.temporal.e eVar);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && compareTo((h) obj) == 0;
    }

    public abstract i f(int i10);

    public abstract String i();

    public abstract String j();

    class a implements org.threeten.bp.temporal.j<h> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h a(org.threeten.bp.temporal.e eVar) {
            return h.h(eVar);
        }
    }

    static {
        Method method;
        try {
            method = Locale.class.getMethod("getUnicodeLocaleType", String.class);
        } catch (Throwable unused) {
            method = null;
        }
        LOCALE_METHOD = method;
    }

    public static h h(org.threeten.bp.temporal.e eVar) {
        ra.d.i(eVar, "temporal");
        h hVar = (h) eVar.d(org.threeten.bp.temporal.i.a());
        return hVar != null ? hVar : m.INSTANCE;
    }

    private static void k() {
        ConcurrentHashMap<String, h> concurrentHashMap = CHRONOS_BY_ID;
        if (concurrentHashMap.isEmpty()) {
            p(m.INSTANCE);
            p(v.INSTANCE);
            p(r.INSTANCE);
            p(o.INSTANCE);
            j jVar = j.INSTANCE;
            p(jVar);
            concurrentHashMap.putIfAbsent("Hijrah", jVar);
            CHRONOS_BY_TYPE.putIfAbsent("islamic", jVar);
            for (h hVar : ServiceLoader.load(h.class, h.class.getClassLoader())) {
                CHRONOS_BY_ID.putIfAbsent(hVar.j(), hVar);
                String strI = hVar.i();
                if (strI != null) {
                    CHRONOS_BY_TYPE.putIfAbsent(strI, hVar);
                }
            }
        }
    }

    private static void p(h hVar) {
        CHRONOS_BY_ID.putIfAbsent(hVar.j(), hVar);
        String strI = hVar.i();
        if (strI != null) {
            CHRONOS_BY_TYPE.putIfAbsent(strI, hVar);
        }
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new u(com.google.common.base.c.VT, this);
    }

    <D extends b> D c(org.threeten.bp.temporal.d dVar) {
        D d = (D) dVar;
        if (equals(d.p())) {
            return d;
        }
        throw new ClassCastException("Chrono mismatch, expected: " + j() + ", actual: " + d.p().j());
    }

    <D extends b> d<D> d(org.threeten.bp.temporal.d dVar) {
        d<D> dVar2 = (d) dVar;
        if (equals(dVar2.w().p())) {
            return dVar2;
        }
        throw new ClassCastException("Chrono mismatch, required: " + j() + ", supplied: " + dVar2.w().p().j());
    }

    <D extends b> g<D> e(org.threeten.bp.temporal.d dVar) {
        g<D> gVar = (g) dVar;
        if (equals(gVar.v().p())) {
            return gVar;
        }
        throw new ClassCastException("Chrono mismatch, required: " + j() + ", supplied: " + gVar.v().p().j());
    }

    protected h() {
    }

    public static h n(String str) {
        k();
        h hVar = CHRONOS_BY_ID.get(str);
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = CHRONOS_BY_TYPE.get(str);
        if (hVar2 != null) {
            return hVar2;
        }
        throw new org.threeten.bp.b("Unknown chronology: " + str);
    }

    static h o(DataInput dataInput) throws IOException {
        return n(dataInput.readUTF());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h hVar) {
        return j().compareTo(hVar.j());
    }

    public int hashCode() {
        return getClass().hashCode() ^ j().hashCode();
    }

    public c<?> l(org.threeten.bp.temporal.e eVar) {
        try {
            return b(eVar).n(org.threeten.bp.i.q(eVar));
        } catch (org.threeten.bp.b e) {
            throw new org.threeten.bp.b("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + eVar.getClass(), e);
        }
    }

    void q(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(j());
    }

    public f<?> r(org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        return g.D(this, fVar, rVar);
    }

    public String toString() {
        return j();
    }
}
