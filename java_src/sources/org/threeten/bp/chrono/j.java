package org.threeten.bp.chrono;

import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends h implements Serializable {
    private static final HashMap<String, String[]> ERA_FULL_NAMES;
    private static final HashMap<String, String[]> ERA_NARROW_NAMES;
    private static final HashMap<String, String[]> ERA_SHORT_NAMES;
    private static final String FALLBACK_LANGUAGE = "en";
    public static final j INSTANCE = new j();
    private static final long serialVersionUID = 3127340209035924785L;

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.bp.chrono.h
    public String i() {
        return "islamic-umalqura";
    }

    @Override // org.threeten.bp.chrono.h
    public String j() {
        return "Hijrah-umalqura";
    }

    static {
        HashMap<String, String[]> map = new HashMap<>();
        ERA_NARROW_NAMES = map;
        HashMap<String, String[]> map2 = new HashMap<>();
        ERA_SHORT_NAMES = map2;
        HashMap<String, String[]> map3 = new HashMap<>();
        ERA_FULL_NAMES = map3;
        map.put(FALLBACK_LANGUAGE, new String[]{"BH", "HE"});
        map2.put(FALLBACK_LANGUAGE, new String[]{"B.H.", "H.E."});
        map3.put(FALLBACK_LANGUAGE, new String[]{"Before Hijrah", "Hijrah Era"});
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public k b(org.threeten.bp.temporal.e eVar) {
        return eVar instanceof k ? (k) eVar : k.f0(eVar.k(org.threeten.bp.temporal.a.EPOCH_DAY));
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public l f(int i10) {
        if (i10 == 0) {
            return l.BEFORE_AH;
        }
        if (i10 == 1) {
            return l.AH;
        }
        throw new org.threeten.bp.b("invalid Hijrah era");
    }

    private j() {
    }

    @Override // org.threeten.bp.chrono.h
    public c<k> l(org.threeten.bp.temporal.e eVar) {
        return super.l(eVar);
    }

    @Override // org.threeten.bp.chrono.h
    public f<k> r(org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        return super.r(fVar, rVar);
    }

    public k s(int i10, int i11, int i12) {
        return k.d0(i10, i11, i12);
    }

    public org.threeten.bp.temporal.m v(org.threeten.bp.temporal.a aVar) {
        return aVar.d();
    }
}
