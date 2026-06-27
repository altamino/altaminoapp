package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdha;
import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class zzdcf {
    private static final Logger logger = Logger.getLogger(zzdcf.class.getName());
    private static final ConcurrentMap<String, zzdbs> zzgpp = new ConcurrentHashMap();
    private static final ConcurrentMap<String, Boolean> zzgpq = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzdbk> zzgpr = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, zzdcc<?>> zzgps = new ConcurrentHashMap();

    public static synchronized void zza(String str, zzdbk<?> zzdbkVar) throws GeneralSecurityException {
        if (zzgpr.containsKey(str.toLowerCase())) {
            if (!zzdbkVar.getClass().equals(zzgpr.get(str.toLowerCase()).getClass())) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(str);
                logger2.logp(level, "com.google.crypto.tink.Registry", "addCatalogue", strValueOf.length() != 0 ? "Attempted overwrite of a catalogueName catalogue for name ".concat(strValueOf) : new String("Attempted overwrite of a catalogueName catalogue for name "));
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
                sb.append("catalogue for name ");
                sb.append(str);
                sb.append(" has been already registered");
                throw new GeneralSecurityException(sb.toString());
            }
        }
        zzgpr.put(str.toLowerCase(), zzdbkVar);
    }

    public static zzdbk<?> zzgi(String str) throws GeneralSecurityException {
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        zzdbk<?> zzdbkVar = zzgpr.get(str.toLowerCase());
        if (zzdbkVar != null) {
            return zzdbkVar;
        }
        String strConcat = String.format("no catalogue found for %s. ", str);
        if (str.toLowerCase().startsWith("tinkaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call AeadConfig.register().");
        }
        if (str.toLowerCase().startsWith("tinkdeterministicaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call DeterministicAeadConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkstreamingaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call StreamingAeadConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkhybriddecrypt") || str.toLowerCase().startsWith("tinkhybridencrypt")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call HybridConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkmac")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call MacConfig.register().");
        } else if (str.toLowerCase().startsWith("tinkpublickeysign") || str.toLowerCase().startsWith("tinkpublickeyverify")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call SignatureConfig.register().");
        } else if (str.toLowerCase().startsWith("tink")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call TinkConfig.register().");
        }
        throw new GeneralSecurityException(strConcat);
    }

    private static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static synchronized <P> void zza(zzdbs<P> zzdbsVar) throws GeneralSecurityException {
        zza((zzdbs) zzdbsVar, true);
    }

    public static synchronized <P> void zza(zzdbs<P> zzdbsVar, boolean z) throws GeneralSecurityException {
        if (zzdbsVar == null) {
            throw new IllegalArgumentException("key manager must be non-null.");
        }
        String keyType = zzdbsVar.getKeyType();
        if (zzgpp.containsKey(keyType)) {
            zzdbs zzdbsVarZza = zza(keyType, (Class) null);
            boolean zBooleanValue = zzgpq.get(keyType).booleanValue();
            if (!zzdbsVar.getClass().equals(zzdbsVarZza.getClass()) || (!zBooleanValue && z)) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(keyType);
                logger2.logp(level, "com.google.crypto.tink.Registry", "registerKeyManager", strValueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(strValueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", keyType, zzdbsVarZza.getClass().getName(), zzdbsVar.getClass().getName()));
            }
        }
        zzgpp.put(keyType, zzdbsVar);
        zzgpq.put(keyType, Boolean.valueOf(z));
    }

    public static synchronized <P> void zza(zzdcc<P> zzdccVar) throws GeneralSecurityException {
        if (zzdccVar == null) {
            throw new IllegalArgumentException("wrapper must be non-null");
        }
        Class<P> clsZzanr = zzdccVar.zzanr();
        if (zzgps.containsKey(clsZzanr)) {
            zzdcc<?> zzdccVar2 = zzgps.get(clsZzanr);
            if (!zzdccVar.getClass().equals(zzdccVar2.getClass())) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                String strValueOf = String.valueOf(clsZzanr.toString());
                logger2.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", strValueOf.length() != 0 ? "Attempted overwrite of a registered SetWrapper for type ".concat(strValueOf) : new String("Attempted overwrite of a registered SetWrapper for type "));
                throw new GeneralSecurityException(String.format("SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", clsZzanr.getName(), zzdccVar2.getClass().getName(), zzdccVar.getClass().getName()));
            }
        }
        zzgps.put(clsZzanr, zzdccVar);
    }

    private static <P> zzdbs<P> zza(String str, Class<P> cls) throws GeneralSecurityException {
        zzdbs<P> zzdbsVar = zzgpp.get(str);
        if (zzdbsVar == null) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
            sb.append("No key manager found for key type: ");
            sb.append(str);
            sb.append(".  Check the configuration of the registry.");
            throw new GeneralSecurityException(sb.toString());
        }
        if (cls == null || zzdbsVar.zzanr().equals(cls)) {
            return zzdbsVar;
        }
        String name = zzdbsVar.zzanr().getName();
        String name2 = cls.getName();
        StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 80 + String.valueOf(str).length() + String.valueOf(name2).length());
        sb2.append("Primitive type ");
        sb2.append(name);
        sb2.append(" of keymanager for type ");
        sb2.append(str);
        sb2.append(" does not match requested primitive type ");
        sb2.append(name2);
        throw new GeneralSecurityException(sb2.toString());
    }

    public static synchronized zzdgr zza(zzdgw zzdgwVar) throws GeneralSecurityException {
        zzdbs zzdbsVarZza;
        zzdbsVarZza = zza(zzdgwVar.zzart(), (Class) null);
        if (!zzgpq.get(zzdgwVar.zzart()).booleanValue()) {
            String strValueOf = String.valueOf(zzdgwVar.zzart());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return zzdbsVarZza.zzr(zzdgwVar.zzaru());
    }

    public static synchronized zzdpk zzb(zzdgw zzdgwVar) throws GeneralSecurityException {
        zzdbs zzdbsVarZza;
        zzdbsVarZza = zza(zzdgwVar.zzart(), (Class) null);
        if (!zzgpq.get(zzdgwVar.zzart()).booleanValue()) {
            String strValueOf = String.valueOf(zzdgwVar.zzart());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return zzdbsVarZza.zzq(zzdgwVar.zzaru());
    }

    public static synchronized zzdpk zza(String str, zzdpk zzdpkVar) throws GeneralSecurityException {
        zzdbs zzdbsVarZza;
        zzdbsVarZza = zza(str, (Class) null);
        if (!zzgpq.get(str).booleanValue()) {
            String strValueOf = String.valueOf(str);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return zzdbsVarZza.zzb(zzdpkVar);
    }

    public static <P> P zza(String str, zzdpk zzdpkVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zza(str, (Class) checkNotNull(cls)).zza(zzdpkVar);
    }

    private static <P> P zza(String str, zzdmr zzdmrVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zza(str, cls).zzp(zzdmrVar);
    }

    public static <P> P zza(String str, byte[] bArr, Class<P> cls) throws GeneralSecurityException {
        return (P) zza(str, zzdmr.zzz(bArr), (Class) checkNotNull(cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <P> zzdca<P> zza(zzdbu zzdbuVar, zzdbs<P> zzdbsVar, Class<P> cls) throws GeneralSecurityException {
        Class cls2 = (Class) checkNotNull(cls);
        zzdch.zzd(zzdbuVar.zzant());
        zzdca<P> zzdcaVar = (zzdca<P>) zzdca.zza(cls2);
        for (zzdha.zzb zzbVar : zzdbuVar.zzant().zzasi()) {
            if (zzbVar.zzaso() == zzdgu.ENABLED) {
                zzdcb zzdcbVarZza = zzdcaVar.zza(zza(zzbVar.zzasn().zzart(), zzbVar.zzasn().zzaru(), cls2), zzbVar);
                if (zzbVar.zzasp() == zzdbuVar.zzant().zzash()) {
                    zzdcaVar.zza(zzdcbVarZza);
                }
            }
        }
        return zzdcaVar;
    }

    public static <P> P zza(zzdca<P> zzdcaVar) throws GeneralSecurityException {
        zzdcc<?> zzdccVar = zzgps.get(zzdcaVar.zzanr());
        if (zzdccVar == null) {
            String strValueOf = String.valueOf(zzdcaVar.zzanr().getName());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "No wrapper found for ".concat(strValueOf) : new String("No wrapper found for "));
        }
        return (P) zzdccVar.zza(zzdcaVar);
    }
}
