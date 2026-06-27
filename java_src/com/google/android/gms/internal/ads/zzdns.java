package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdnu;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdns<FieldDescriptorType extends zzdnu<FieldDescriptorType>> {
    private static final zzdns zzhej = new zzdns(true);
    private boolean zzheh;
    private boolean zzhei = false;
    private final zzdqe<FieldDescriptorType, Object> zzheg = zzdqe.zzgy(16);

    private zzdns() {
    }

    private zzdns(boolean z) {
        zzavj();
    }

    public static <T extends zzdnu<T>> zzdns<T> zzaxi() {
        return zzhej;
    }

    final boolean isEmpty() {
        return this.zzheg.isEmpty();
    }

    public final void zzavj() {
        if (this.zzheh) {
            return;
        }
        this.zzheg.zzavj();
        this.zzheh = true;
    }

    public final boolean isImmutable() {
        return this.zzheh;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzdns) {
            return this.zzheg.equals(((zzdns) obj).zzheg);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzheg.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        if (this.zzhei) {
            return new zzdoq(this.zzheg.entrySet().iterator());
        }
        return this.zzheg.entrySet().iterator();
    }

    final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        if (this.zzhei) {
            return new zzdoq(this.zzheg.zzazr().iterator());
        }
        return this.zzheg.zzazr().iterator();
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzheg.get(fielddescriptortype);
        return obj instanceof zzdon ? zzdon.zzaym() : obj;
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.zzaxn()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                zza(fielddescriptortype.zzaxl(), obj2);
            }
            obj = arrayList;
        } else {
            zza(fielddescriptortype.zzaxl(), obj);
        }
        if (obj instanceof zzdon) {
            this.zzhei = true;
        }
        this.zzheg.zza((zzdqe<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.ads.zzdri r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.ads.zzdod.checkNotNull(r3)
            int[] r0 = com.google.android.gms.internal.ads.zzdnt.zzhek
            com.google.android.gms.internal.ads.zzdrn r2 = r2.zzbaj()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3a;
                case 4: goto L37;
                case 5: goto L34;
                case 6: goto L31;
                case 7: goto L28;
                case 8: goto L1e;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L43
        L15:
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdpk
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdon
            if (r2 == 0) goto L43
            goto L26
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdoe
            if (r2 == 0) goto L43
        L26:
            r1 = 1
            goto L43
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdmr
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L43
            goto L26
        L31:
            boolean r0 = r3 instanceof java.lang.String
            goto L42
        L34:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L42
        L37:
            boolean r0 = r3 instanceof java.lang.Double
            goto L42
        L3a:
            boolean r0 = r3 instanceof java.lang.Float
            goto L42
        L3d:
            boolean r0 = r3 instanceof java.lang.Long
            goto L42
        L40:
            boolean r0 = r3 instanceof java.lang.Integer
        L42:
            r1 = r0
        L43:
            if (r1 == 0) goto L46
            return
        L46:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L4f
        L4e:
            throw r2
        L4f:
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdns.zza(com.google.android.gms.internal.ads.zzdri, java.lang.Object):void");
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzheg.zzazp(); i++) {
            if (!zzb(this.zzheg.zzgz(i))) {
                return false;
            }
        }
        Iterator it = this.zzheg.zzazq().iterator();
        while (it.hasNext()) {
            if (!zzb((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzaxm() == zzdrn.MESSAGE) {
            if (key.zzaxn()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((zzdpk) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzdpk) {
                    if (!((zzdpk) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof zzdon) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void zza(zzdns<FieldDescriptorType> zzdnsVar) {
        for (int i = 0; i < zzdnsVar.zzheg.zzazp(); i++) {
            zzc(zzdnsVar.zzheg.zzgz(i));
        }
        Iterator it = zzdnsVar.zzheg.zzazq().iterator();
        while (it.hasNext()) {
            zzc((Map.Entry) it.next());
        }
    }

    private static Object zzab(Object obj) {
        if (obj instanceof zzdpr) {
            return ((zzdpr) obj).zzazc();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final void zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        zzdpk zzdpkVarZzaya;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzdon) {
            value = zzdon.zzaym();
        }
        if (key.zzaxn()) {
            Object objZza = zza((zzdns<FieldDescriptorType>) key);
            if (objZza == null) {
                objZza = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objZza).add(zzab(it.next()));
            }
            this.zzheg.zza((zzdqe<FieldDescriptorType, Object>) key, (FieldDescriptorType) objZza);
            return;
        }
        if (key.zzaxm() == zzdrn.MESSAGE) {
            Object objZza2 = zza((zzdns<FieldDescriptorType>) key);
            if (objZza2 == null) {
                this.zzheg.zza((zzdqe<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzab(value));
                return;
            }
            if (objZza2 instanceof zzdpr) {
                zzdpkVarZzaya = key.zza((zzdpr) objZza2, (zzdpr) value);
            } else {
                zzdpkVarZzaya = key.zza(((zzdpk) objZza2).zzaxt(), (zzdpk) value).zzaya();
            }
            this.zzheg.zza((zzdqe<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzdpkVarZzaya);
            return;
        }
        this.zzheg.zza((zzdqe<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzab(value));
    }

    static void zza(zzdni zzdniVar, zzdri zzdriVar, int i, Object obj) throws IOException {
        if (zzdriVar == zzdri.zzhmq) {
            zzdpk zzdpkVar = (zzdpk) obj;
            zzdod.zzn(zzdpkVar);
            zzdniVar.zzw(i, 3);
            zzdpkVar.zzb(zzdniVar);
            zzdniVar.zzw(i, 4);
        }
        zzdniVar.zzw(i, zzdriVar.zzbak());
        switch (zzdnt.zzhdm[zzdriVar.ordinal()]) {
            case 1:
                zzdniVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzdniVar.zzg(((Float) obj).floatValue());
                break;
            case 3:
                zzdniVar.zzfj(((Long) obj).longValue());
                break;
            case 4:
                zzdniVar.zzfj(((Long) obj).longValue());
                break;
            case 5:
                zzdniVar.zzfz(((Integer) obj).intValue());
                break;
            case 6:
                zzdniVar.zzfl(((Long) obj).longValue());
                break;
            case 7:
                zzdniVar.zzgc(((Integer) obj).intValue());
                break;
            case 8:
                zzdniVar.zzbf(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzdpk) obj).zzb(zzdniVar);
                break;
            case 10:
                zzdniVar.zzj((zzdpk) obj);
                break;
            case 11:
                if (obj instanceof zzdmr) {
                    zzdniVar.zzcz((zzdmr) obj);
                    break;
                } else {
                    zzdniVar.zzgw((String) obj);
                    break;
                }
            case 12:
                if (obj instanceof zzdmr) {
                    zzdniVar.zzcz((zzdmr) obj);
                    break;
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzdniVar.zzk(bArr, 0, bArr.length);
                    break;
                }
            case 13:
                zzdniVar.zzga(((Integer) obj).intValue());
                break;
            case 14:
                zzdniVar.zzgc(((Integer) obj).intValue());
                break;
            case 15:
                zzdniVar.zzfl(((Long) obj).longValue());
                break;
            case 16:
                zzdniVar.zzgb(((Integer) obj).intValue());
                break;
            case 17:
                zzdniVar.zzfk(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzdoe) {
                    zzdniVar.zzfz(((zzdoe) obj).zzac());
                    break;
                } else {
                    zzdniVar.zzfz(((Integer) obj).intValue());
                    break;
                }
        }
    }

    public final int zzaxj() {
        int iZzb = 0;
        for (int i = 0; i < this.zzheg.zzazp(); i++) {
            Map.Entry<K, Object> entryZzgz = this.zzheg.zzgz(i);
            iZzb += zzb((zzdnu<?>) entryZzgz.getKey(), entryZzgz.getValue());
        }
        Iterator it = this.zzheg.zzazq().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iZzb += zzb((zzdnu<?>) entry.getKey(), entry.getValue());
        }
        return iZzb;
    }

    public final int zzaxk() {
        int iZzd = 0;
        for (int i = 0; i < this.zzheg.zzazp(); i++) {
            iZzd += zzd(this.zzheg.zzgz(i));
        }
        Iterator it = this.zzheg.zzazq().iterator();
        while (it.hasNext()) {
            iZzd += zzd((Map.Entry) it.next());
        }
        return iZzd;
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzaxm() == zzdrn.MESSAGE && !key.zzaxn() && !key.zzaxo()) {
            if (value instanceof zzdon) {
                return zzdni.zzb(entry.getKey().zzac(), (zzdon) value);
            }
            return zzdni.zzd(entry.getKey().zzac(), (zzdpk) value);
        }
        return zzb((zzdnu<?>) key, value);
    }

    static int zza(zzdri zzdriVar, int i, Object obj) {
        int iZzgd = zzdni.zzgd(i);
        if (zzdriVar == zzdri.zzhmq) {
            zzdod.zzn((zzdpk) obj);
            iZzgd <<= 1;
        }
        return iZzgd + zzb(zzdriVar, obj);
    }

    private static int zzb(zzdri zzdriVar, Object obj) {
        switch (zzdnt.zzhdm[zzdriVar.ordinal()]) {
            case 1:
                return zzdni.zzc(((Double) obj).doubleValue());
            case 2:
                return zzdni.zzh(((Float) obj).floatValue());
            case 3:
                return zzdni.zzfm(((Long) obj).longValue());
            case 4:
                return zzdni.zzfn(((Long) obj).longValue());
            case 5:
                return zzdni.zzge(((Integer) obj).intValue());
            case 6:
                return zzdni.zzfp(((Long) obj).longValue());
            case 7:
                return zzdni.zzgh(((Integer) obj).intValue());
            case 8:
                return zzdni.zzbg(((Boolean) obj).booleanValue());
            case 9:
                return zzdni.zzl((zzdpk) obj);
            case 10:
                if (obj instanceof zzdon) {
                    return zzdni.zza((zzdon) obj);
                }
                return zzdni.zzk((zzdpk) obj);
            case 11:
                if (obj instanceof zzdmr) {
                    return zzdni.zzda((zzdmr) obj);
                }
                return zzdni.zzgx((String) obj);
            case 12:
                if (obj instanceof zzdmr) {
                    return zzdni.zzda((zzdmr) obj);
                }
                return zzdni.zzac((byte[]) obj);
            case 13:
                return zzdni.zzgf(((Integer) obj).intValue());
            case 14:
                return zzdni.zzgi(((Integer) obj).intValue());
            case 15:
                return zzdni.zzfq(((Long) obj).longValue());
            case 16:
                return zzdni.zzgg(((Integer) obj).intValue());
            case 17:
                return zzdni.zzfo(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzdoe) {
                    return zzdni.zzgj(((zzdoe) obj).zzac());
                }
                return zzdni.zzgj(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static int zzb(zzdnu<?> zzdnuVar, Object obj) {
        zzdri zzdriVarZzaxl = zzdnuVar.zzaxl();
        int iZzac = zzdnuVar.zzac();
        if (zzdnuVar.zzaxn()) {
            int iZza = 0;
            if (zzdnuVar.zzaxo()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    iZza += zzb(zzdriVarZzaxl, it.next());
                }
                return zzdni.zzgd(iZzac) + iZza + zzdni.zzgl(iZza);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                iZza += zza(zzdriVarZzaxl, iZzac, it2.next());
            }
            return iZza;
        }
        return zza(zzdriVarZzaxl, iZzac, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzdns zzdnsVar = new zzdns();
        for (int i = 0; i < this.zzheg.zzazp(); i++) {
            Map.Entry<K, Object> entryZzgz = this.zzheg.zzgz(i);
            zzdnsVar.zza((zzdns) entryZzgz.getKey(), entryZzgz.getValue());
        }
        Iterator it = this.zzheg.zzazq().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzdnsVar.zza((zzdns) entry.getKey(), entry.getValue());
        }
        zzdnsVar.zzhei = this.zzhei;
        return zzdnsVar;
    }
}
