package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.util.HashMap;

@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzgx {
    private static final HashMap<zza, Pair<String, MediaCodecInfo.CodecCapabilities>> zzaeq = new HashMap<>();

    public static zzgc zzc(String str, boolean z) throws zzgz {
        Pair<String, MediaCodecInfo.CodecCapabilities> pairZzd = zzd(str, z);
        if (pairZzd == null) {
            return null;
        }
        return new zzgc((String) pairZzd.first, zzkq.SDK_INT >= 19 ? ((MediaCodecInfo.CodecCapabilities) pairZzd.second).isFeatureSupported("adaptive-playback") : false);
    }

    static final class zza {
        public final String mimeType;
        public final boolean zzaer;

        public zza(String str, boolean z) {
            this.mimeType = str;
            this.zzaer = z;
        }

        public final int hashCode() {
            String str = this.mimeType;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.zzaer ? 1231 : 1237);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == zza.class) {
                zza zzaVar = (zza) obj;
                if (TextUtils.equals(this.mimeType, zzaVar.mimeType) && this.zzaer == zzaVar.zzaer) {
                    return true;
                }
            }
            return false;
        }
    }

    private static synchronized Pair<String, MediaCodecInfo.CodecCapabilities> zzd(String str, boolean z) throws zzgz {
        zza zzaVar = new zza(str, z);
        if (zzaeq.containsKey(zzaVar)) {
            return zzaeq.get(zzaVar);
        }
        Pair<String, MediaCodecInfo.CodecCapabilities> pairZza = zza(zzaVar, zzkq.SDK_INT >= 21 ? new zzhc(z) : new zzhb());
        if (z && pairZza == null && zzkq.SDK_INT >= 21 && (pairZza = zza(zzaVar, new zzhb())) != null) {
            String str2 = (String) pairZza.first;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
            sb.append("MediaCodecList API didn't list secure decoder for: ");
            sb.append(str);
            sb.append(". Assuming: ");
            sb.append(str2);
            Log.w("MediaCodecUtil", sb.toString());
        }
        return pairZza;
    }

    private static Pair<String, MediaCodecInfo.CodecCapabilities> zza(zza zzaVar, zzha zzhaVar) throws zzgz {
        try {
            String str = zzaVar.mimeType;
            int codecCount = zzhaVar.getCodecCount();
            boolean zZzeh = zzhaVar.zzeh();
            boolean z = false;
            int i = 0;
            while (i < codecCount) {
                MediaCodecInfo codecInfoAt = zzhaVar.getCodecInfoAt(i);
                String name = codecInfoAt.getName();
                if (!codecInfoAt.isEncoder() && name.startsWith("OMX.") && (zZzeh || !name.endsWith(".secure"))) {
                    String[] supportedTypes = codecInfoAt.getSupportedTypes();
                    int i2 = 0;
                    while (i2 < supportedTypes.length) {
                        String str2 = supportedTypes[i2];
                        if (str2.equalsIgnoreCase(str)) {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str2);
                            boolean zZza = zzhaVar.zza(zzaVar.mimeType, capabilitiesForType);
                            if (!zZzeh) {
                                zzaeq.put(zzaVar.zzaer ? new zza(str, z) : zzaVar, Pair.create(name, capabilitiesForType));
                                if (zZza) {
                                    zzaeq.put(zzaVar.zzaer ? zzaVar : new zza(str, true), Pair.create(String.valueOf(name).concat(".secure"), capabilitiesForType));
                                }
                            } else {
                                zzaeq.put(zzaVar.zzaer == zZza ? zzaVar : new zza(str, zZza), Pair.create(name, capabilitiesForType));
                            }
                            if (zzaeq.containsKey(zzaVar)) {
                                return zzaeq.get(zzaVar);
                            }
                        }
                        i2++;
                        z = false;
                    }
                }
                i++;
                z = false;
            }
            return null;
        } catch (Exception e) {
            throw new zzgz(e);
        }
    }
}
