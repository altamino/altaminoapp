package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzis;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class zziq<T extends zzis<T>> {
    private static final zziq zzb = new zziq(true);
    final zzlg<T, Object> zza;
    private boolean zzc;
    private boolean zzd;

    private zziq() {
        this.zza = zzlg.zza(16);
    }

    static int zza(zzmn zzmnVar, int i10, Object obj) {
        int iZzi = zzig.zzi(i10);
        if (zzmnVar == zzmn.zzj) {
            zziz.zza((zzkj) obj);
            iZzi <<= 1;
        }
        return iZzi + zza(zzmnVar, obj);
    }

    public static <T extends zzis<T>> zziq<T> zzb() {
        return zzb;
    }

    final Iterator<Map.Entry<T, Object>> zzc() {
        return this.zzd ? new zzjo(this.zza.zzd().iterator()) : this.zza.zzd().iterator();
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        for (int i10 = 0; i10 < this.zza.zzb(); i10++) {
            if (!zzc(this.zza.zzb(i10))) {
                return false;
            }
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            if (!zzc((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzjj) {
            value = zzjj.zza();
        }
        if (key.zze()) {
            Object objZza = zza((zzis) key);
            if (objZza == null) {
                objZza = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objZza).add(zza(it.next()));
            }
            this.zza.put(key, objZza);
            return;
        }
        if (key.zzc() != zzmx.MESSAGE) {
            this.zza.put(key, zza(value));
            return;
        }
        Object objZza2 = zza((zzis) key);
        if (objZza2 == null) {
            this.zza.put(key, zza(value));
        } else {
            this.zza.put(key, objZza2 instanceof zzks ? key.zza((zzks) objZza2, (zzks) value) : key.zza(((zzkj) objZza2).zzce(), (zzkj) value).zzab());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zziq zziqVar = new zziq();
        for (int i10 = 0; i10 < this.zza.zzb(); i10++) {
            Map.Entry<K, Object> entryZzb = this.zza.zzb(i10);
            zziqVar.zzb((zzis) entryZzb.getKey(), entryZzb.getValue());
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zziqVar.zzb((zzis) entry.getKey(), entry.getValue());
        }
        zziqVar.zzd = this.zzd;
        return zziqVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zziq) {
            return this.zza.equals(((zziq) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        return this.zzd ? new zzjo(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zze() {
        if (this.zzc) {
            return;
        }
        for (int i10 = 0; i10 < this.zza.zzb(); i10++) {
            Map.Entry<K, Object> entryZzb = this.zza.zzb(i10);
            if (entryZzb.getValue() instanceof zzix) {
                ((zzix) entryZzb.getValue()).zzcg();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    private zziq(zzlg<T, Object> zzlgVar) {
        this.zza = zzlgVar;
        zze();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    private static void zzc(T t5, Object obj) {
        boolean z6;
        zzmn zzmnVarZzb = t5.zzb();
        zziz.zza(obj);
        switch (zzip.zza[zzmnVarZzb.zzb().ordinal()]) {
            case 1:
                z6 = obj instanceof Integer;
                if (z6) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 2:
                z6 = obj instanceof Long;
                if (z6) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 3:
                z6 = obj instanceof Float;
                if (z6) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 4:
                z6 = obj instanceof Double;
                if (z6) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 5:
                z6 = obj instanceof Boolean;
                if (z6) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 6:
                z6 = obj instanceof String;
                if (z6) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 7:
                if ((obj instanceof zzhm) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 8:
                if ((obj instanceof Integer) || (obj instanceof zzjc)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            case 9:
                if ((obj instanceof zzkj) || (obj instanceof zzjj)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t5.zza()), t5.zzb().zzb(), obj.getClass().getName()));
        }
    }

    private zziq(boolean z6) {
        this(zzlg.zza(0));
        zze();
    }

    private static int zza(zzmn zzmnVar, Object obj) {
        switch (zzip.zzb[zzmnVar.ordinal()]) {
            case 1:
                return zzig.zza(((Double) obj).doubleValue());
            case 2:
                return zzig.zza(((Float) obj).floatValue());
            case 3:
                return zzig.zzd(((Long) obj).longValue());
            case 4:
                return zzig.zzg(((Long) obj).longValue());
            case 5:
                return zzig.zzf(((Integer) obj).intValue());
            case 6:
                return zzig.zzc(((Long) obj).longValue());
            case 7:
                return zzig.zze(((Integer) obj).intValue());
            case 8:
                return zzig.zza(((Boolean) obj).booleanValue());
            case 9:
                return zzig.zzb((zzkj) obj);
            case 10:
                if (obj instanceof zzjj) {
                    return zzig.zza((zzjj) obj);
                }
                return zzig.zzc((zzkj) obj);
            case 11:
                if (obj instanceof zzhm) {
                    return zzig.zzb((zzhm) obj);
                }
                return zzig.zzb((String) obj);
            case 12:
                if (obj instanceof zzhm) {
                    return zzig.zzb((zzhm) obj);
                }
                return zzig.zza((byte[]) obj);
            case 13:
                return zzig.zzj(((Integer) obj).intValue());
            case 14:
                return zzig.zzg(((Integer) obj).intValue());
            case 15:
                return zzig.zze(((Long) obj).longValue());
            case 16:
                return zzig.zzh(((Integer) obj).intValue());
            case 17:
                return zzig.zzf(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzjc) {
                    return zzig.zzd(((zzjc) obj).zza());
                }
                return zzig.zzd(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static <T extends zzis<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zzmx.MESSAGE) {
            return true;
        }
        if (key.zze()) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                if (!zzb(it.next())) {
                    return false;
                }
            }
            return true;
        }
        return zzb(entry.getValue());
    }

    private final void zzb(T t5, Object obj) {
        if (t5.zze()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj2 = arrayList.get(i10);
                    i10++;
                    zzc(t5, obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            zzc(t5, obj);
        }
        if (obj instanceof zzjj) {
            this.zzd = true;
        }
        this.zza.put(t5, obj);
    }

    public static int zza(zzis<?> zzisVar, Object obj) {
        zzmn zzmnVarZzb = zzisVar.zzb();
        int iZza = zzisVar.zza();
        if (zzisVar.zze()) {
            List list = (List) obj;
            int iZza2 = 0;
            if (zzisVar.zzd()) {
                if (list.isEmpty()) {
                    return 0;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    iZza2 += zza(zzmnVarZzb, it.next());
                }
                return zzig.zzi(iZza) + iZza2 + zzig.zzj(iZza2);
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                iZza2 += zza(zzmnVarZzb, iZza, it2.next());
            }
            return iZza2;
        }
        return zza(zzmnVarZzb, iZza, obj);
    }

    private static boolean zzb(Object obj) {
        if (obj instanceof zzkl) {
            return ((zzkl) obj).zzci();
        }
        if (obj instanceof zzjj) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public final int zza() {
        int iZza = 0;
        for (int i10 = 0; i10 < this.zza.zzb(); i10++) {
            iZza += zza((Map.Entry) this.zza.zzb(i10));
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            iZza += zza((Map.Entry) it.next());
        }
        return iZza;
    }

    private static int zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() == zzmx.MESSAGE && !key.zze() && !key.zzd()) {
            if (value instanceof zzjj) {
                return zzig.zza(entry.getKey().zza(), (zzjj) value);
            }
            return zzig.zzb(entry.getKey().zza(), (zzkj) value);
        }
        return zza((zzis<?>) key, value);
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzks) {
            return ((zzks) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final Object zza(T t5) {
        Object obj = this.zza.get(t5);
        if (!(obj instanceof zzjj)) {
            return obj;
        }
        return zzjj.zza();
    }

    public final void zza(zziq<T> zziqVar) {
        for (int i10 = 0; i10 < zziqVar.zza.zzb(); i10++) {
            zzb((Map.Entry) zziqVar.zza.zzb(i10));
        }
        Iterator it = zziqVar.zza.zzc().iterator();
        while (it.hasNext()) {
            zzb((Map.Entry) it.next());
        }
    }

    static void zza(zzig zzigVar, zzmn zzmnVar, int i10, Object obj) throws IOException {
        if (zzmnVar == zzmn.zzj) {
            zzkj zzkjVar = (zzkj) obj;
            zziz.zza(zzkjVar);
            zzigVar.zzc(i10, 3);
            zzkjVar.zza(zzigVar);
            zzigVar.zzc(i10, 4);
        }
        zzigVar.zzc(i10, zzmnVar.zza());
        switch (zzip.zzb[zzmnVar.ordinal()]) {
            case 1:
                zzigVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzigVar.zzb(((Float) obj).floatValue());
                break;
            case 3:
                zzigVar.zzb(((Long) obj).longValue());
                break;
            case 4:
                zzigVar.zzb(((Long) obj).longValue());
                break;
            case 5:
                zzigVar.zzb(((Integer) obj).intValue());
                break;
            case 6:
                zzigVar.zza(((Long) obj).longValue());
                break;
            case 7:
                zzigVar.zza(((Integer) obj).intValue());
                break;
            case 8:
                zzigVar.zzb(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzkj) obj).zza(zzigVar);
                break;
            case 10:
                zzigVar.zza((zzkj) obj);
                break;
            case 11:
                if (obj instanceof zzhm) {
                    zzigVar.zza((zzhm) obj);
                } else {
                    zzigVar.zza((String) obj);
                }
                break;
            case 12:
                if (obj instanceof zzhm) {
                    zzigVar.zza((zzhm) obj);
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzigVar.zzb(bArr, 0, bArr.length);
                }
                break;
            case 13:
                zzigVar.zzc(((Integer) obj).intValue());
                break;
            case 14:
                zzigVar.zza(((Integer) obj).intValue());
                break;
            case 15:
                zzigVar.zza(((Long) obj).longValue());
                break;
            case 16:
                zzigVar.zzk(((Integer) obj).intValue());
                break;
            case 17:
                zzigVar.zzh(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzjc) {
                    zzigVar.zzb(((zzjc) obj).zza());
                } else {
                    zzigVar.zzb(((Integer) obj).intValue());
                }
                break;
        }
    }
}
