package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class s extends org.threeten.bp.chrono.a<s> {
    private static final long serialVersionUID = 1300372329181994526L;
    private final org.threeten.bp.g isoDate;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[org.threeten.bp.temporal.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.PROLEPTIC_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ERA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private int E() {
        return this.isoDate.J() - 1911;
    }

    private s L(org.threeten.bp.g gVar) {
        return gVar.equals(this.isoDate) ? this : new s(gVar);
    }

    private Object writeReplace() {
        return new u((byte) 5, this);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public r p() {
        return r.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public s y(long j6) {
        return L(this.isoDate.V(j6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public s z(long j6) {
        return L(this.isoDate.W(j6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public s A(long j6) {
        return L(this.isoDate.Y(j6));
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003a  */
    /* JADX WARN: Code duplicated, block: B:18:0x004e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0050 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    /* JADX WARN: Code duplicated, block: B:24:0x006e  */
    /* JADX WARN: Code duplicated, block: B:26:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    /* JADX WARN: Code duplicated, block: B:29:0x0087  */
    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public s z(org.threeten.bp.temporal.h hVar, long j6) {
        int iA;
        int i10;
        int i11;
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (s) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        if (k(aVar) == j6) {
            return this;
        }
        int[] iArr = a.$SwitchMap$org$threeten$bp$temporal$ChronoField;
        int i12 = iArr[aVar.ordinal()];
        if (i12 == 4) {
            iA = p().v(aVar).a(j6, aVar);
            i10 = iArr[aVar.ordinal()];
            if (i10 != 4) {
                org.threeten.bp.g gVar = this.isoDate;
                if (E() >= 1) {
                    i11 = iA + 1911;
                } else {
                    i11 = 1912 - iA;
                }
                return L(gVar.g0(i11));
            }
            if (i10 != 6) {
                return L(this.isoDate.g0(iA + 1911));
            }
            if (i10 == 7) {
                return L(this.isoDate.g0(1912 - E()));
            }
        } else {
            if (i12 == 5) {
                p().v(aVar).b(j6, aVar);
                return z(j6 - D());
            }
            if (i12 == 6 || i12 == 7) {
                iA = p().v(aVar).a(j6, aVar);
                i10 = iArr[aVar.ordinal()];
                if (i10 != 4) {
                    org.threeten.bp.g gVar2 = this.isoDate;
                    if (E() >= 1) {
                        i11 = iA + 1911;
                    } else {
                        i11 = 1912 - iA;
                    }
                    return L(gVar2.g0(i11));
                }
                if (i10 != 6) {
                    return L(this.isoDate.g0(iA + 1911));
                }
                if (i10 == 7) {
                    return L(this.isoDate.g0(1912 - E()));
                }
            }
        }
        return L(this.isoDate.h(hVar, j6));
    }

    void O(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(f(org.threeten.bp.temporal.a.YEAR));
        dataOutput.writeByte(f(org.threeten.bp.temporal.a.MONTH_OF_YEAR));
        dataOutput.writeByte(f(org.threeten.bp.temporal.a.DAY_OF_MONTH));
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        if (!i(hVar)) {
            throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        int i10 = a.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return this.isoDate.c(hVar);
        }
        if (i10 != 4) {
            return p().v(aVar);
        }
        org.threeten.bp.temporal.m mVarD = org.threeten.bp.temporal.a.YEAR.d();
        return org.threeten.bp.temporal.m.i(1L, E() <= 0 ? (-mVarD.d()) + 1912 : mVarD.c() - 1911);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof s) {
            return this.isoDate.equals(((s) obj).isoDate);
        }
        return false;
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        int i10 = a.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 == 4) {
            int iE = E();
            if (iE < 1) {
                iE = 1 - iE;
            }
            return iE;
        }
        if (i10 == 5) {
            return D();
        }
        if (i10 == 6) {
            return E();
        }
        if (i10 != 7) {
            return this.isoDate.k(hVar);
        }
        return E() < 1 ? 0 : 1;
    }

    @Override // org.threeten.bp.chrono.b
    public long u() {
        return this.isoDate.u();
    }

    s(org.threeten.bp.g gVar) {
        ra.d.i(gVar, "date");
        this.isoDate = gVar;
    }

    private long D() {
        return ((((long) E()) * 12) + ((long) this.isoDate.H())) - 1;
    }

    static b K(DataInput dataInput) throws IOException {
        return r.INSTANCE.s(dataInput.readInt(), dataInput.readByte(), dataInput.readByte());
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public t q() {
        return (t) super.q();
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public s r(long j6, org.threeten.bp.temporal.k kVar) {
        return (s) super.r(j6, kVar);
    }

    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public s t(long j6, org.threeten.bp.temporal.k kVar) {
        return (s) super.t(j6, kVar);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public s y(org.threeten.bp.temporal.f fVar) {
        return (s) super.y(fVar);
    }

    @Override // org.threeten.bp.chrono.b
    public int hashCode() {
        return p().j().hashCode() ^ this.isoDate.hashCode();
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public final c<s> n(org.threeten.bp.i iVar) {
        return super.n(iVar);
    }
}
