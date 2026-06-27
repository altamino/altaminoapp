package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzdnr {
    private static final zzdnp<?> zzhee = new zzdnq();
    private static final zzdnp<?> zzhef = zzaxf();

    private static zzdnp<?> zzaxf() {
        try {
            return (zzdnp) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static zzdnp<?> zzaxg() {
        return zzhee;
    }

    static zzdnp<?> zzaxh() {
        zzdnp<?> zzdnpVar = zzhef;
        if (zzdnpVar != null) {
            return zzdnpVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
