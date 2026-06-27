package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzep {
    private static final zzen<?> zzado = new zzeo();
    private static final zzen<?> zzadp = zzlu();

    private static zzen<?> zzlu() {
        try {
            return (zzen) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static zzen<?> zzlv() {
        return zzado;
    }

    static zzen<?> zzlw() {
        zzen<?> zzenVar = zzadp;
        if (zzenVar != null) {
            return zzenVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
