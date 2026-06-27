package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

@SuppressLint({"InlinedApi"})
@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzpi {
    private static final SparseIntArray zzbhr;
    private static final SparseIntArray zzbhs;
    private static final Map<String, Integer> zzbht;
    private static final zzpd zzbho = zzpd.zzbc("OMX.google.raw.decoder");
    private static final Pattern zzbhp = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<zza, List<zzpd>> zzbhq = new HashMap<>();
    private static int zzbhu = -1;

    public static zzpd zziv() {
        return zzbho;
    }

    public static zzpd zze(String str, boolean z) throws zzpk {
        List<zzpd> listZzf = zzf(str, z);
        if (listZzf.isEmpty()) {
            return null;
        }
        return listZzf.get(0);
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

    private static synchronized List<zzpd> zzf(String str, boolean z) throws zzpk {
        zza zzaVar = new zza(str, z);
        List<zzpd> list = zzbhq.get(zzaVar);
        if (list != null) {
            return list;
        }
        List<zzpd> listZza = zza(zzaVar, zzsy.SDK_INT >= 21 ? new zzpn(z) : new zzpm());
        if (z && listZza.isEmpty() && 21 <= zzsy.SDK_INT && zzsy.SDK_INT <= 23) {
            listZza = zza(zzaVar, new zzpm());
            if (!listZza.isEmpty()) {
                String str2 = listZza.get(0).name;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                sb.append("MediaCodecList API didn't list secure decoder for: ");
                sb.append(str);
                sb.append(". Assuming: ");
                sb.append(str2);
                Log.w("MediaCodecUtil", sb.toString());
            }
        }
        List<zzpd> listUnmodifiableList = Collections.unmodifiableList(listZza);
        zzbhq.put(zzaVar, listUnmodifiableList);
        return listUnmodifiableList;
    }

    public static int zziw() throws zzpk {
        int i;
        if (zzbhu == -1) {
            int iMax = 0;
            zzpd zzpdVarZze = zze("video/avc", false);
            if (zzpdVarZze != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrZziq = zzpdVarZze.zziq();
                int length = codecProfileLevelArrZziq.length;
                int iMax2 = 0;
                while (iMax < length) {
                    int i2 = codecProfileLevelArrZziq[iMax].level;
                    if (i2 != 1 && i2 != 2) {
                        switch (i2) {
                            case 8:
                            case 16:
                            case 32:
                                i = 101376;
                                break;
                            case 64:
                                i = 202752;
                                break;
                            case 128:
                            case 256:
                                i = 414720;
                                break;
                            case 512:
                                i = 921600;
                                break;
                            case 1024:
                                i = 1310720;
                                break;
                            case 2048:
                            case 4096:
                                i = 2097152;
                                break;
                            case 8192:
                                i = 2228224;
                                break;
                            case 16384:
                                i = 5652480;
                                break;
                            case 32768:
                            case 65536:
                                i = 9437184;
                                break;
                            default:
                                i = -1;
                                break;
                        }
                    } else {
                        i = 25344;
                    }
                    iMax2 = Math.max(i, iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, zzsy.SDK_INT >= 21 ? 345600 : 172800);
            }
            zzbhu = iMax;
        }
        return zzbhu;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zzbe(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpi.zzbe(java.lang.String):android.util.Pair");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.google.android.gms.internal.ads.zzpk.<init>(java.lang.Throwable, com.google.android.gms.internal.ads.zzpj):void, class status: GENERATED_AND_UNLOADED
        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:291)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
        	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:194)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:64)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.android.gms.internal.ads.zzpd> zza(com.google.android.gms.internal.ads.zzpi.zza r17, com.google.android.gms.internal.ads.zzpl r18) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpi.zza(com.google.android.gms.internal.ads.zzpi$zza, com.google.android.gms.internal.ads.zzpl):java.util.List");
    }

    private static Pair<Integer, Integer> zza(String str, String[] strArr) {
        Integer numValueOf;
        Integer numValueOf2;
        if (strArr.length < 2) {
            String strValueOf = String.valueOf(str);
            Log.w("MediaCodecUtil", strValueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                Integer numValueOf3 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
                numValueOf = numValueOf3;
            } else if (strArr.length >= 3) {
                numValueOf = Integer.valueOf(Integer.parseInt(strArr[1]));
                numValueOf2 = Integer.valueOf(Integer.parseInt(strArr[2]));
            } else {
                String strValueOf2 = String.valueOf(str);
                Log.w("MediaCodecUtil", strValueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf2) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            Integer numValueOf4 = Integer.valueOf(zzbhr.get(numValueOf.intValue()));
            if (numValueOf4 == null) {
                String strValueOf3 = String.valueOf(numValueOf);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf3).length() + 21);
                sb.append("Unknown AVC profile: ");
                sb.append(strValueOf3);
                Log.w("MediaCodecUtil", sb.toString());
                return null;
            }
            Integer numValueOf5 = Integer.valueOf(zzbhs.get(numValueOf2.intValue()));
            if (numValueOf5 == null) {
                String strValueOf4 = String.valueOf(numValueOf2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf4).length() + 19);
                sb2.append("Unknown AVC level: ");
                sb2.append(strValueOf4);
                Log.w("MediaCodecUtil", sb2.toString());
                return null;
            }
            return new Pair<>(numValueOf4, numValueOf5);
        } catch (NumberFormatException unused) {
            String strValueOf5 = String.valueOf(str);
            Log.w("MediaCodecUtil", strValueOf5.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf5) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        zzbhr = sparseIntArray;
        sparseIntArray.put(66, 1);
        zzbhr.put(77, 2);
        zzbhr.put(88, 4);
        zzbhr.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        zzbhs = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        zzbhs.put(11, 4);
        zzbhs.put(12, 8);
        zzbhs.put(13, 16);
        zzbhs.put(20, 32);
        zzbhs.put(21, 64);
        zzbhs.put(22, 128);
        zzbhs.put(30, 256);
        zzbhs.put(31, 512);
        zzbhs.put(32, 1024);
        zzbhs.put(40, 2048);
        zzbhs.put(41, 4096);
        zzbhs.put(42, 8192);
        zzbhs.put(50, 16384);
        zzbhs.put(51, 32768);
        zzbhs.put(52, 65536);
        HashMap map = new HashMap();
        zzbht = map;
        map.put("L30", 1);
        zzbht.put("L60", 4);
        zzbht.put("L63", 16);
        zzbht.put("L90", 64);
        zzbht.put("L93", 256);
        zzbht.put("L120", 1024);
        zzbht.put("L123", 4096);
        zzbht.put("L150", 16384);
        zzbht.put("L153", 65536);
        zzbht.put("L156", 262144);
        zzbht.put("L180", 1048576);
        zzbht.put("L183", Integer.valueOf(AccessibilityEventCompat.TYPE_WINDOWS_CHANGED));
        zzbht.put("L186", 16777216);
        zzbht.put("H30", 2);
        zzbht.put("H60", 8);
        zzbht.put("H63", 32);
        zzbht.put("H90", 128);
        zzbht.put("H93", 512);
        zzbht.put("H120", 2048);
        zzbht.put("H123", 8192);
        zzbht.put("H150", 32768);
        zzbht.put("H153", 131072);
        zzbht.put("H156", 524288);
        zzbht.put("H180", 2097152);
        zzbht.put("H183", 8388608);
        zzbht.put("H186", 33554432);
    }
}
