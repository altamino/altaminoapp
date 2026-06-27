package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
public enum zzfj {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzdp.class, zzdp.class, zzdp.zzaby),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);

    private final Class<?> zzahy;
    private final Class<?> zzahz;
    private final Object zzaia;

    zzfj(Class cls, Class cls2, Object obj) {
        this.zzahy = cls;
        this.zzahz = cls2;
        this.zzaia = obj;
    }

    public final Class<?> zznd() {
        return this.zzahz;
    }
}
