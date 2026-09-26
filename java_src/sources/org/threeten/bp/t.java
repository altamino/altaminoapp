package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
final class t extends r {
    private static final Pattern PATTERN = Pattern.compile("[A-Za-z][A-Za-z0-9~/._+-]+");
    private static final long serialVersionUID = 8386373296231747096L;
    private final String id;
    private final transient org.threeten.bp.zone.f rules;

    @Override // org.threeten.bp.r
    public String n() {
        return this.id;
    }

    @Override // org.threeten.bp.r
    void r(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        v(dataOutput);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    static t s(String str, boolean z6) {
        org.threeten.bp.zone.f fVarO;
        ra.d.i(str, "zoneId");
        if (str.length() < 2 || !PATTERN.matcher(str).matches()) {
            throw new b("Invalid ID for region-based ZoneId, invalid format: " + str);
        }
        try {
            fVarO = org.threeten.bp.zone.i.b(str, true);
        } catch (org.threeten.bp.zone.g e) {
            if (str.equals("GMT0")) {
                fVarO = s.UTC.o();
            } else {
                if (z6) {
                    throw e;
                }
                fVarO = null;
            }
        }
        return new t(str, fVarO);
    }

    private static t t(String str) {
        if (str.equals("Z") || str.startsWith(org.slf4j.c.ANY_NON_NULL_MARKER) || str.startsWith("-")) {
            throw new b("Invalid ID for region-based ZoneId, invalid format: " + str);
        }
        if (str.equals("UTC") || str.equals("GMT") || str.equals("UT")) {
            return new t(str, s.UTC.o());
        }
        if (str.startsWith("UTC+") || str.startsWith("GMT+") || str.startsWith("UTC-") || str.startsWith("GMT-")) {
            s sVarW = s.w(str.substring(3));
            if (sVarW.v() == 0) {
                return new t(str.substring(0, 3), sVarW.o());
            }
            return new t(str.substring(0, 3) + sVarW.n(), sVarW.o());
        }
        if (!str.startsWith("UT+") && !str.startsWith("UT-")) {
            return s(str, false);
        }
        s sVarW2 = s.w(str.substring(2));
        if (sVarW2.v() == 0) {
            return new t("UT", sVarW2.o());
        }
        return new t("UT" + sVarW2.n(), sVarW2.o());
    }

    private Object writeReplace() {
        return new o((byte) 7, this);
    }

    @Override // org.threeten.bp.r
    public org.threeten.bp.zone.f o() {
        org.threeten.bp.zone.f fVar = this.rules;
        return fVar != null ? fVar : org.threeten.bp.zone.i.b(this.id, false);
    }

    void v(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(this.id);
    }

    t(String str, org.threeten.bp.zone.f fVar) {
        this.id = str;
        this.rules = fVar;
    }

    static r u(DataInput dataInput) throws IOException {
        return t(dataInput.readUTF());
    }
}
