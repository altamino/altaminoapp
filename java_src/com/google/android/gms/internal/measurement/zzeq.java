package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzeq<FieldDescriptorType extends zzes<FieldDescriptorType>> {
    private static final zzeq zzadt = new zzeq(true);
    private boolean zzadr;
    private boolean zzads = false;
    private final zzhb<FieldDescriptorType, Object> zzadq = zzhb.zzbe(16);

    private zzeq() {
    }

    private zzeq(boolean z) {
        zzjz();
    }

    public static <T extends zzes<T>> zzeq<T> zzlx() {
        return zzadt;
    }

    final boolean isEmpty() {
        return this.zzadq.isEmpty();
    }

    public final void zzjz() {
        if (this.zzadr) {
            return;
        }
        this.zzadq.zzjz();
        this.zzadr = true;
    }

    public final boolean isImmutable() {
        return this.zzadr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzeq) {
            return this.zzadq.equals(((zzeq) obj).zzadq);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzadq.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        if (this.zzads) {
            return new zzfn(this.zzadq.entrySet().iterator());
        }
        return this.zzadq.entrySet().iterator();
    }

    final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        if (this.zzads) {
            return new zzfn(this.zzadq.zzok().iterator());
        }
        return this.zzadq.zzok().iterator();
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzadq.get(fielddescriptortype);
        return obj instanceof zzfk ? zzfk.zzne() : obj;
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.zzmc()) {
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
                zza(fielddescriptortype.zzma(), obj2);
            }
            obj = arrayList;
        } else {
            zza(fielddescriptortype.zzma(), obj);
        }
        if (obj instanceof zzfk) {
            this.zzads = true;
        }
        this.zzadq.zza((zzhb<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.measurement.zzif r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.measurement.zzfb.checkNotNull(r3)
            int[] r0 = com.google.android.gms.internal.measurement.zzer.zzadu
            com.google.android.gms.internal.measurement.zzik r2 = r2.zzpb()
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
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzgh
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzfk
            if (r2 == 0) goto L43
            goto L26
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzfc
            if (r2 == 0) goto L43
        L26:
            r1 = 1
            goto L43
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzdp
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzeq.zza(com.google.android.gms.internal.measurement.zzif, java.lang.Object):void");
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzadq.zzoi(); i++) {
            if (!zzb(this.zzadq.zzbf(i))) {
                return false;
            }
        }
        Iterator it = this.zzadq.zzoj().iterator();
        while (it.hasNext()) {
            if (!zzb((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzmb() == zzik.MESSAGE) {
            if (key.zzmc()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((zzgh) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzgh) {
                    if (!((zzgh) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof zzfk) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void zza(zzeq<FieldDescriptorType> zzeqVar) {
        for (int i = 0; i < zzeqVar.zzadq.zzoi(); i++) {
            zzc(zzeqVar.zzadq.zzbf(i));
        }
        Iterator it = zzeqVar.zzadq.zzoj().iterator();
        while (it.hasNext()) {
            zzc((Map.Entry) it.next());
        }
    }

    private static Object zzj(Object obj) {
        if (obj instanceof zzgo) {
            return ((zzgo) obj).zznv();
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
        zzgh zzghVarZzmr;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzfk) {
            value = zzfk.zzne();
        }
        if (key.zzmc()) {
            Object objZza = zza((zzeq<FieldDescriptorType>) key);
            if (objZza == null) {
                objZza = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objZza).add(zzj(it.next()));
            }
            this.zzadq.zza((zzhb<FieldDescriptorType, Object>) key, (FieldDescriptorType) objZza);
            return;
        }
        if (key.zzmb() == zzik.MESSAGE) {
            Object objZza2 = zza((zzeq<FieldDescriptorType>) key);
            if (objZza2 == null) {
                this.zzadq.zza((zzhb<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzj(value));
                return;
            }
            if (objZza2 instanceof zzgo) {
                zzghVarZzmr = key.zza((zzgo) objZza2, (zzgo) value);
            } else {
                zzghVarZzmr = key.zza(((zzgh) objZza2).zzmk(), (zzgh) value).zzmr();
            }
            this.zzadq.zza((zzhb<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzghVarZzmr);
            return;
        }
        this.zzadq.zza((zzhb<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzj(value));
    }

    static void zza(zzeg zzegVar, zzif zzifVar, int i, Object obj) throws IOException {
        if (zzifVar == zzif.zzama) {
            zzgh zzghVar = (zzgh) obj;
            zzfb.zzf(zzghVar);
            zzegVar.zzb(i, 3);
            zzghVar.zzb(zzegVar);
            zzegVar.zzb(i, 4);
        }
        zzegVar.zzb(i, zzifVar.zzpc());
        switch (zzer.zzacu[zzifVar.ordinal()]) {
            case 1:
                zzegVar.zzd(((Double) obj).doubleValue());
                break;
            case 2:
                zzegVar.zza(((Float) obj).floatValue());
                break;
            case 3:
                zzegVar.zzaq(((Long) obj).longValue());
                break;
            case 4:
                zzegVar.zzaq(((Long) obj).longValue());
                break;
            case 5:
                zzegVar.zzaf(((Integer) obj).intValue());
                break;
            case 6:
                zzegVar.zzas(((Long) obj).longValue());
                break;
            case 7:
                zzegVar.zzai(((Integer) obj).intValue());
                break;
            case 8:
                zzegVar.zzm(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzgh) obj).zzb(zzegVar);
                break;
            case 10:
                zzegVar.zzb((zzgh) obj);
                break;
            case 11:
                if (obj instanceof zzdp) {
                    zzegVar.zza((zzdp) obj);
                    break;
                } else {
                    zzegVar.zzco((String) obj);
                    break;
                }
            case 12:
                if (obj instanceof zzdp) {
                    zzegVar.zza((zzdp) obj);
                    break;
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzegVar.zze(bArr, 0, bArr.length);
                    break;
                }
            case 13:
                zzegVar.zzag(((Integer) obj).intValue());
                break;
            case 14:
                zzegVar.zzai(((Integer) obj).intValue());
                break;
            case 15:
                zzegVar.zzas(((Long) obj).longValue());
                break;
            case 16:
                zzegVar.zzah(((Integer) obj).intValue());
                break;
            case 17:
                zzegVar.zzar(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzfc) {
                    zzegVar.zzaf(((zzfc) obj).zzgp());
                    break;
                } else {
                    zzegVar.zzaf(((Integer) obj).intValue());
                    break;
                }
        }
    }

    public final int zzly() {
        int iZzb = 0;
        for (int i = 0; i < this.zzadq.zzoi(); i++) {
            Map.Entry<K, Object> entryZzbf = this.zzadq.zzbf(i);
            iZzb += zzb((zzes<?>) entryZzbf.getKey(), entryZzbf.getValue());
        }
        Iterator it = this.zzadq.zzoj().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iZzb += zzb((zzes<?>) entry.getKey(), entry.getValue());
        }
        return iZzb;
    }

    public final int zzlz() {
        int iZzd = 0;
        for (int i = 0; i < this.zzadq.zzoi(); i++) {
            iZzd += zzd(this.zzadq.zzbf(i));
        }
        Iterator it = this.zzadq.zzoj().iterator();
        while (it.hasNext()) {
            iZzd += zzd((Map.Entry) it.next());
        }
        return iZzd;
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzmb() == zzik.MESSAGE && !key.zzmc() && !key.zzmd()) {
            if (value instanceof zzfk) {
                return zzeg.zzb(entry.getKey().zzgp(), (zzfk) value);
            }
            return zzeg.zzd(entry.getKey().zzgp(), (zzgh) value);
        }
        return zzb((zzes<?>) key, value);
    }

    static int zza(zzif zzifVar, int i, Object obj) {
        int iZzaj = zzeg.zzaj(i);
        if (zzifVar == zzif.zzama) {
            zzfb.zzf((zzgh) obj);
            iZzaj <<= 1;
        }
        return iZzaj + zzb(zzifVar, obj);
    }

    private static int zzb(zzif zzifVar, Object obj) {
        switch (zzer.zzacu[zzifVar.ordinal()]) {
            case 1:
                return zzeg.zze(((Double) obj).doubleValue());
            case 2:
                return zzeg.zzb(((Float) obj).floatValue());
            case 3:
                return zzeg.zzat(((Long) obj).longValue());
            case 4:
                return zzeg.zzau(((Long) obj).longValue());
            case 5:
                return zzeg.zzak(((Integer) obj).intValue());
            case 6:
                return zzeg.zzaw(((Long) obj).longValue());
            case 7:
                return zzeg.zzan(((Integer) obj).intValue());
            case 8:
                return zzeg.zzn(((Boolean) obj).booleanValue());
            case 9:
                return zzeg.zzd((zzgh) obj);
            case 10:
                if (obj instanceof zzfk) {
                    return zzeg.zza((zzfk) obj);
                }
                return zzeg.zzc((zzgh) obj);
            case 11:
                if (obj instanceof zzdp) {
                    return zzeg.zzb((zzdp) obj);
                }
                return zzeg.zzcp((String) obj);
            case 12:
                if (obj instanceof zzdp) {
                    return zzeg.zzb((zzdp) obj);
                }
                return zzeg.zzi((byte[]) obj);
            case 13:
                return zzeg.zzal(((Integer) obj).intValue());
            case 14:
                return zzeg.zzao(((Integer) obj).intValue());
            case 15:
                return zzeg.zzax(((Long) obj).longValue());
            case 16:
                return zzeg.zzam(((Integer) obj).intValue());
            case 17:
                return zzeg.zzav(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzfc) {
                    return zzeg.zzap(((zzfc) obj).zzgp());
                }
                return zzeg.zzap(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static int zzb(zzes<?> zzesVar, Object obj) {
        zzif zzifVarZzma = zzesVar.zzma();
        int iZzgp = zzesVar.zzgp();
        if (zzesVar.zzmc()) {
            int iZza = 0;
            if (zzesVar.zzmd()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    iZza += zzb(zzifVarZzma, it.next());
                }
                return zzeg.zzaj(iZzgp) + iZza + zzeg.zzar(iZza);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                iZza += zza(zzifVarZzma, iZzgp, it2.next());
            }
            return iZza;
        }
        return zza(zzifVarZzma, iZzgp, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzeq zzeqVar = new zzeq();
        for (int i = 0; i < this.zzadq.zzoi(); i++) {
            Map.Entry<K, Object> entryZzbf = this.zzadq.zzbf(i);
            zzeqVar.zza((zzeq) entryZzbf.getKey(), entryZzbf.getValue());
        }
        Iterator it = this.zzadq.zzoj().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzeqVar.zza((zzeq) entry.getKey(), entry.getValue());
        }
        zzeqVar.zzads = this.zzads;
        return zzeqVar;
    }
}
