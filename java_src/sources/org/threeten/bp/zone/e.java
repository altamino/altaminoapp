package org.threeten.bp.zone;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.invite.InviteMembersFragment;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import org.threeten.bp.chrono.m;
import org.threeten.bp.j;
import org.threeten.bp.s;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements Serializable {
    private static final int SECS_PER_DAY = 86400;
    private static final long serialVersionUID = 6889046316657758795L;
    private final int adjustDays;
    private final byte dom;
    private final org.threeten.bp.d dow;
    private final j month;
    private final s offsetAfter;
    private final s offsetBefore;
    private final s standardOffset;
    private final org.threeten.bp.i time;
    private final b timeDefinition;

    public enum b {
        UTC,
        WALL,
        STANDARD;

        public org.threeten.bp.h a(org.threeten.bp.h hVar, s sVar, s sVar2) {
            int i10 = a.$SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition[ordinal()];
            if (i10 != 1) {
                return i10 != 2 ? hVar : hVar.Q(sVar2.v() - sVar.v());
            }
            return hVar.Q(sVar2.v() - s.UTC.v());
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.month == eVar.month && this.dom == eVar.dom && this.dow == eVar.dow && this.timeDefinition == eVar.timeDefinition && this.adjustDays == eVar.adjustDays && this.time.equals(eVar.time) && this.standardOffset.equals(eVar.standardOffset) && this.offsetBefore.equals(eVar.offsetBefore) && this.offsetAfter.equals(eVar.offsetAfter);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition;

        static {
            int[] iArr = new int[b.values().length];
            $SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition = iArr;
            try {
                iArr[b.UTC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition[b.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void a(StringBuilder sb, long j6) {
        if (j6 < 10) {
            sb.append(0);
        }
        sb.append(j6);
    }

    private Object writeReplace() {
        return new org.threeten.bp.zone.a((byte) 3, this);
    }

    public d b(int i10) {
        org.threeten.bp.g gVarR;
        byte b7 = this.dom;
        if (b7 < 0) {
            j jVar = this.month;
            gVarR = org.threeten.bp.g.R(i10, jVar, jVar.o(m.INSTANCE.u(i10)) + 1 + this.dom);
            org.threeten.bp.d dVar = this.dow;
            if (dVar != null) {
                gVarR = gVarR.j(org.threeten.bp.temporal.g.b(dVar));
            }
        } else {
            gVarR = org.threeten.bp.g.R(i10, this.month, b7);
            org.threeten.bp.d dVar2 = this.dow;
            if (dVar2 != null) {
                gVarR = gVarR.j(org.threeten.bp.temporal.g.a(dVar2));
            }
        }
        return new d(this.timeDefinition.a(org.threeten.bp.h.I(gVarR.V(this.adjustDays), this.time), this.standardOffset, this.offsetBefore), this.offsetBefore, this.offsetAfter);
    }

    void d(DataOutput dataOutput) throws IOException {
        int iS;
        int iH = this.time.H() + (this.adjustDays * 86400);
        int iV = this.standardOffset.v();
        int iV2 = this.offsetBefore.v() - iV;
        int iV3 = this.offsetAfter.v() - iV;
        if (iH % InviteMembersFragment.SECOND_HOUR != 0 || iH > 86400) {
            iS = 31;
        } else {
            iS = iH == 86400 ? 24 : this.time.s();
        }
        int i10 = iV % TypedValues.Custom.TYPE_INT == 0 ? (iV / TypedValues.Custom.TYPE_INT) + 128 : 255;
        int i11 = (iV2 == 0 || iV2 == 1800 || iV2 == 3600) ? iV2 / 1800 : 3;
        int i12 = (iV3 == 0 || iV3 == 1800 || iV3 == 3600) ? iV3 / 1800 : 3;
        org.threeten.bp.d dVar = this.dow;
        dataOutput.writeInt((this.month.getValue() << 28) + ((this.dom + 32) << 22) + ((dVar == null ? 0 : dVar.getValue()) << 19) + (iS << 14) + (this.timeDefinition.ordinal() << 12) + (i10 << 4) + (i11 << 2) + i12);
        if (iS == 31) {
            dataOutput.writeInt(iH);
        }
        if (i10 == 255) {
            dataOutput.writeInt(iV);
        }
        if (i11 == 3) {
            dataOutput.writeInt(this.offsetBefore.v());
        }
        if (i12 == 3) {
            dataOutput.writeInt(this.offsetAfter.v());
        }
    }

    public int hashCode() {
        int iH = ((this.time.H() + this.adjustDays) << 15) + (this.month.ordinal() << 11) + ((this.dom + 32) << 5);
        org.threeten.bp.d dVar = this.dow;
        return ((((iH + ((dVar == null ? 7 : dVar.ordinal()) << 2)) + this.timeDefinition.ordinal()) ^ this.standardOffset.hashCode()) ^ this.offsetBefore.hashCode()) ^ this.offsetAfter.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TransitionRule[");
        sb.append(this.offsetBefore.compareTo(this.offsetAfter) > 0 ? "Gap " : "Overlap ");
        sb.append(this.offsetBefore);
        sb.append(" to ");
        sb.append(this.offsetAfter);
        sb.append(", ");
        org.threeten.bp.d dVar = this.dow;
        if (dVar != null) {
            byte b7 = this.dom;
            if (b7 == -1) {
                sb.append(dVar.name());
                sb.append(" on or before last day of ");
                sb.append(this.month.name());
            } else if (b7 < 0) {
                sb.append(dVar.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.dom) - 1);
                sb.append(" of ");
                sb.append(this.month.name());
            } else {
                sb.append(dVar.name());
                sb.append(" on or after ");
                sb.append(this.month.name());
                sb.append(' ');
                sb.append((int) this.dom);
            }
        } else {
            sb.append(this.month.name());
            sb.append(' ');
            sb.append((int) this.dom);
        }
        sb.append(" at ");
        if (this.adjustDays == 0) {
            sb.append(this.time);
        } else {
            long jH = (this.time.H() / 60) + (this.adjustDays * 1440);
            a(sb, ra.d.e(jH, 60L));
            sb.append(kotlinx.serialization.json.internal.b.COLON);
            a(sb, ra.d.g(jH, 60));
        }
        sb.append(" ");
        sb.append(this.timeDefinition);
        sb.append(", standard offset ");
        sb.append(this.standardOffset);
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    e(j jVar, int i10, org.threeten.bp.d dVar, org.threeten.bp.i iVar, int i11, b bVar, s sVar, s sVar2, s sVar3) {
        this.month = jVar;
        this.dom = (byte) i10;
        this.dow = dVar;
        this.time = iVar;
        this.adjustDays = i11;
        this.timeDefinition = bVar;
        this.standardOffset = sVar;
        this.offsetBefore = sVar2;
        this.offsetAfter = sVar3;
    }

    static e c(DataInput dataInput) throws IOException {
        org.threeten.bp.d dVarN;
        int i10;
        int i11;
        int iV;
        int iV2;
        int i12 = dataInput.readInt();
        j jVarR = j.r(i12 >>> 28);
        int i13 = ((264241152 & i12) >>> 22) - 32;
        int i14 = (3670016 & i12) >>> 19;
        if (i14 == 0) {
            dVarN = null;
        } else {
            dVarN = org.threeten.bp.d.n(i14);
        }
        org.threeten.bp.d dVar = dVarN;
        int i15 = (507904 & i12) >>> 14;
        b bVar = b.values()[(i12 & 12288) >>> 12];
        int i16 = (i12 & 4080) >>> 4;
        int i17 = (i12 & 12) >>> 2;
        int i18 = i12 & 3;
        if (i15 == 31) {
            i10 = dataInput.readInt();
        } else {
            i10 = i15 * InviteMembersFragment.SECOND_HOUR;
        }
        if (i16 == 255) {
            i11 = dataInput.readInt();
        } else {
            i11 = (i16 - 128) * TypedValues.Custom.TYPE_INT;
        }
        s sVarY = s.y(i11);
        if (i17 == 3) {
            iV = dataInput.readInt();
        } else {
            iV = sVarY.v() + (i17 * 1800);
        }
        s sVarY2 = s.y(iV);
        if (i18 == 3) {
            iV2 = dataInput.readInt();
        } else {
            iV2 = sVarY.v() + (i18 * 1800);
        }
        s sVarY3 = s.y(iV2);
        if (i13 >= -28 && i13 <= 31 && i13 != 0) {
            return new e(jVarR, i13, dVar, org.threeten.bp.i.y(ra.d.f(i10, 86400)), ra.d.d(i10, 86400), bVar, sVarY, sVarY2, sVarY3);
        }
        throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
    }
}
