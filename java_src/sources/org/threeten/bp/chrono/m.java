package org.threeten.bp.chrono;

import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class m extends h implements Serializable {
    public static final m INSTANCE = new m();
    private static final long serialVersionUID = -1440403870442975015L;

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.bp.chrono.h
    public String i() {
        return "iso8601";
    }

    @Override // org.threeten.bp.chrono.h
    public String j() {
        return ExifInterface.TAG_RW2_ISO;
    }

    public boolean u(long j6) {
        return (3 & j6) == 0 && (j6 % 100 != 0 || j6 % 400 == 0);
    }

    private m() {
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public org.threeten.bp.g b(org.threeten.bp.temporal.e eVar) {
        return org.threeten.bp.g.A(eVar);
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public n f(int i10) {
        return n.a(i10);
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public org.threeten.bp.h l(org.threeten.bp.temporal.e eVar) {
        return org.threeten.bp.h.D(eVar);
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public org.threeten.bp.u r(org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        return org.threeten.bp.u.I(fVar, rVar);
    }
}
