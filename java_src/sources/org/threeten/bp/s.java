package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
public final class s extends r implements org.threeten.bp.temporal.e, org.threeten.bp.temporal.f, Comparable<s> {
    private static final int MINUTES_PER_HOUR = 60;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 2357656521762053153L;
    private final transient String id;
    private final int totalSeconds;
    public static final org.threeten.bp.temporal.j<s> FROM = new a();
    private static final ConcurrentMap<Integer, s> SECONDS_CACHE = new ConcurrentHashMap(16, 0.75f, 4);
    private static final ConcurrentMap<String, s> ID_CACHE = new ConcurrentHashMap(16, 0.75f, 4);
    public static final s UTC = y(0);
    public static final s MIN = y(-64800);
    private static final int MAX_SECONDS = 64800;
    public static final s MAX = y(MAX_SECONDS);

    private static int B(int i10, int i11, int i12) {
        return (i10 * 3600) + (i11 * 60) + i12;
    }

    @Override // org.threeten.bp.r
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s) && this.totalSeconds == ((s) obj).totalSeconds;
    }

    @Override // org.threeten.bp.r
    public int hashCode() {
        return this.totalSeconds;
    }

    @Override // org.threeten.bp.r
    public String n() {
        return this.id;
    }

    @Override // org.threeten.bp.r
    public String toString() {
        return this.id;
    }

    public int v() {
        return this.totalSeconds;
    }

    class a implements org.threeten.bp.temporal.j<s> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public s a(org.threeten.bp.temporal.e eVar) {
            return s.u(eVar);
        }
    }

    private static void C(int i10, int i11, int i12) {
        if (i10 < -18 || i10 > 18) {
            throw new b("Zone offset hours not in valid range: value " + i10 + " is not in the range -18 to 18");
        }
        if (i10 > 0) {
            if (i11 < 0 || i12 < 0) {
                throw new b("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i10 < 0) {
            if (i11 > 0 || i12 > 0) {
                throw new b("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i11 > 0 && i12 < 0) || (i11 < 0 && i12 > 0)) {
            throw new b("Zone offset minutes and seconds must have the same sign");
        }
        if (Math.abs(i11) > 59) {
            throw new b("Zone offset minutes not in valid range: abs(value) " + Math.abs(i11) + " is not in the range 0 to 59");
        }
        if (Math.abs(i12) > 59) {
            throw new b("Zone offset seconds not in valid range: abs(value) " + Math.abs(i12) + " is not in the range 0 to 59");
        }
        if (Math.abs(i10) == 18) {
            if (Math.abs(i11) > 0 || Math.abs(i12) > 0) {
                throw new b("Zone offset not in valid range: -18:00 to +18:00");
            }
        }
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private static String s(int i10) {
        if (i10 == 0) {
            return "Z";
        }
        int iAbs = Math.abs(i10);
        StringBuilder sb = new StringBuilder();
        int i11 = iAbs / 3600;
        int i12 = (iAbs / 60) % 60;
        sb.append(i10 < 0 ? "-" : org.slf4j.c.ANY_NON_NULL_MARKER);
        sb.append(i11 < 10 ? "0" : "");
        sb.append(i11);
        sb.append(i12 < 10 ? ":0" : ":");
        sb.append(i12);
        int i13 = iAbs % 60;
        if (i13 != 0) {
            sb.append(i13 < 10 ? ":0" : ":");
            sb.append(i13);
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:35:0x00be  */
    public static s w(String str) {
        int iZ;
        int iZ2;
        int iZ3;
        char cCharAt;
        ra.d.i(str, "offsetId");
        s sVar = ID_CACHE.get(str);
        if (sVar != null) {
            return sVar;
        }
        int length = str.length();
        if (length != 2) {
            if (length != 3) {
                if (length == 5) {
                    iZ = z(str, 1, false);
                    iZ2 = z(str, 3, false);
                } else if (length == 6) {
                    iZ = z(str, 1, false);
                    iZ2 = z(str, 4, true);
                } else if (length == 7) {
                    iZ = z(str, 1, false);
                    iZ2 = z(str, 3, false);
                    iZ3 = z(str, 5, false);
                } else {
                    if (length != 9) {
                        throw new b("Invalid ID for ZoneOffset, invalid format: " + str);
                    }
                    iZ = z(str, 1, false);
                    iZ2 = z(str, 4, true);
                    iZ3 = z(str, 7, true);
                }
                iZ3 = 0;
            }
            cCharAt = str.charAt(0);
            if (cCharAt != '+' || cCharAt == '-') {
                return cCharAt == '-' ? x(-iZ, -iZ2, -iZ3) : x(iZ, iZ2, iZ3);
            }
            throw new b("Invalid ID for ZoneOffset, plus/minus not found when expected: " + str);
        }
        str = str.charAt(0) + "0" + str.charAt(1);
        iZ = z(str, 1, false);
        iZ2 = 0;
        iZ3 = 0;
        cCharAt = str.charAt(0);
        if (cCharAt != '+') {
        }
        if (cCharAt == '-') {
        }
    }

    private Object writeReplace() {
        return new o((byte) 8, this);
    }

    private static int z(CharSequence charSequence, int i10, boolean z6) {
        if (z6 && charSequence.charAt(i10 - 1) != ':') {
            throw new b("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) charSequence));
        }
        char cCharAt = charSequence.charAt(i10);
        char cCharAt2 = charSequence.charAt(i10 + 1);
        if (cCharAt >= '0' && cCharAt <= '9' && cCharAt2 >= '0' && cCharAt2 <= '9') {
            return ((cCharAt - '0') * 10) + (cCharAt2 - '0');
        }
        throw new b("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) charSequence));
    }

    void D(DataOutput dataOutput) throws IOException {
        int i10 = this.totalSeconds;
        int i11 = i10 % TypedValues.Custom.TYPE_INT == 0 ? i10 / TypedValues.Custom.TYPE_INT : 127;
        dataOutput.writeByte(i11);
        if (i11 == 127) {
            dataOutput.writeInt(i10);
        }
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.OFFSET_SECONDS, this.totalSeconds);
    }

    @Override // org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS) {
            return hVar.d();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS) {
            return this.totalSeconds;
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return c(hVar).a(k(hVar), hVar);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS) {
            return this.totalSeconds;
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        throw new b("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.r
    void r(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        D(dataOutput);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public int compareTo(s sVar) {
        return sVar.totalSeconds - this.totalSeconds;
    }

    private s(int i10) {
        this.totalSeconds = i10;
        this.id = s(i10);
    }

    static s A(DataInput dataInput) throws IOException {
        byte b7 = dataInput.readByte();
        if (b7 == 127) {
            return y(dataInput.readInt());
        }
        return y(b7 * 900);
    }

    public static s u(org.threeten.bp.temporal.e eVar) {
        s sVar = (s) eVar.d(org.threeten.bp.temporal.i.d());
        if (sVar != null) {
            return sVar;
        }
        throw new b("Unable to obtain ZoneOffset from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    public static s x(int i10, int i11, int i12) {
        C(i10, i11, i12);
        return y(B(i10, i11, i12));
    }

    public static s y(int i10) {
        if (Math.abs(i10) <= MAX_SECONDS) {
            if (i10 % TypedValues.Custom.TYPE_INT == 0) {
                Integer numValueOf = Integer.valueOf(i10);
                ConcurrentMap<Integer, s> concurrentMap = SECONDS_CACHE;
                s sVar = concurrentMap.get(numValueOf);
                if (sVar == null) {
                    concurrentMap.putIfAbsent(numValueOf, new s(i10));
                    s sVar2 = concurrentMap.get(numValueOf);
                    ID_CACHE.putIfAbsent(sVar2.n(), sVar2);
                    return sVar2;
                }
                return sVar;
            }
            return new s(i10);
        }
        throw new b("Zone offset not in valid range: -18:00 to +18:00");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar != org.threeten.bp.temporal.i.d() && jVar != org.threeten.bp.temporal.i.f()) {
            if (jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c() && jVar != org.threeten.bp.temporal.i.e() && jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.g()) {
                return jVar.a(this);
            }
            return null;
        }
        return this;
    }

    @Override // org.threeten.bp.r
    public org.threeten.bp.zone.f o() {
        return org.threeten.bp.zone.f.f(this);
    }
}
