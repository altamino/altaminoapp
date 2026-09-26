package org.threeten.bp;

import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class r implements Serializable {
    public static final org.threeten.bp.temporal.j<r> FROM = new a();
    public static final Map<String, String> SHORT_IDS;
    private static final long serialVersionUID = 8352817235686L;

    public abstract String n();

    public abstract org.threeten.bp.zone.f o();

    abstract void r(DataOutput dataOutput) throws IOException;

    class a implements org.threeten.bp.temporal.j<r> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public r a(org.threeten.bp.temporal.e eVar) {
            return r.a(eVar);
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("ACT", "Australia/Darwin");
        map.put("AET", "Australia/Sydney");
        map.put("AGT", "America/Argentina/Buenos_Aires");
        map.put("ART", "Africa/Cairo");
        map.put("AST", "America/Anchorage");
        map.put("BET", "America/Sao_Paulo");
        map.put("BST", "Asia/Dhaka");
        map.put("CAT", "Africa/Harare");
        map.put("CNT", "America/St_Johns");
        map.put("CST", "America/Chicago");
        map.put("CTT", "Asia/Shanghai");
        map.put("EAT", "Africa/Addis_Ababa");
        map.put("ECT", "Europe/Paris");
        map.put("IET", "America/Indiana/Indianapolis");
        map.put("IST", "Asia/Kolkata");
        map.put("JST", "Asia/Tokyo");
        map.put("MIT", "Pacific/Apia");
        map.put("NET", "Asia/Yerevan");
        map.put("NST", "Pacific/Auckland");
        map.put("PLT", "Asia/Karachi");
        map.put("PNT", "America/Phoenix");
        map.put("PRT", "America/Puerto_Rico");
        map.put("PST", "America/Los_Angeles");
        map.put("SST", "Pacific/Guadalcanal");
        map.put("VST", "Asia/Ho_Chi_Minh");
        map.put("EST", "-05:00");
        map.put("MST", "-07:00");
        map.put("HST", "-10:00");
        SHORT_IDS = Collections.unmodifiableMap(map);
    }

    public static r q(String str) {
        ra.d.i(str, "zoneId");
        if (str.equals("Z")) {
            return s.UTC;
        }
        if (str.length() == 1) {
            throw new b("Invalid zone: " + str);
        }
        if (str.startsWith(org.slf4j.c.ANY_NON_NULL_MARKER) || str.startsWith("-")) {
            return s.w(str);
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
            return t.s(str, true);
        }
        s sVarW2 = s.w(str.substring(2));
        if (sVarW2.v() == 0) {
            return new t("UT", sVarW2.o());
        }
        return new t("UT" + sVarW2.n(), sVarW2.o());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            return n().equals(((r) obj).n());
        }
        return false;
    }

    r() {
        if (getClass() != s.class && getClass() != t.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static r a(org.threeten.bp.temporal.e eVar) {
        r rVar = (r) eVar.d(org.threeten.bp.temporal.i.f());
        if (rVar != null) {
            return rVar;
        }
        throw new b("Unable to obtain ZoneId from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    public int hashCode() {
        return n().hashCode();
    }

    public r p() {
        try {
            org.threeten.bp.zone.f fVarO = o();
            if (fVarO.d()) {
                return fVarO.a(f.EPOCH);
            }
        } catch (org.threeten.bp.zone.g unused) {
        }
        return this;
    }

    public String toString() {
        return n();
    }
}
