package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzet;
import com.google.android.gms.internal.play_billing.zzex;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes10.dex */
public abstract class zzex<MessageType extends zzex<MessageType, BuilderType>, BuilderType extends zzet<MessageType, BuilderType>> extends zzdg<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzhe zzc = zzhe.zzc();

    protected static zzex zzj(zzex zzexVar, byte[] bArr, zzej zzejVar) throws zzff {
        zzex zzexVarZzw = zzw(zzexVar, bArr, 0, bArr.length, zzejVar);
        if (zzexVarZzw == null || zzexVarZzw.zzs()) {
            return zzexVarZzw;
        }
        zzff zzffVarZza = new zzhc(zzexVarZzw).zza();
        zzffVarZza.zzf(zzexVarZzw);
        throw zzffVarZza;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgd
    public final /* synthetic */ zzgc zzf() {
        return (zzex) zzu(6, null, null);
    }

    protected final zzet zzg() {
        return (zzet) zzu(5, null, null);
    }

    final zzex zzi() {
        return (zzex) zzu(4, null, null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgc
    public final /* synthetic */ zzgb zzk() {
        return (zzet) zzu(5, null, null);
    }

    final void zzo() {
        this.zzd &= Integer.MAX_VALUE;
    }

    final void zzq(int i10) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean zzs() {
        byte bByteValue = ((Byte) zzu(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzk = zzgk.zza().zzb(getClass()).zzk(this);
        zzu(2, true != zZzk ? null : this, null);
        return zZzk;
    }

    final boolean zzt() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    protected abstract Object zzu(int i10, Object obj, Object obj2);

    static zzex zzh(Class cls) {
        Map map = zzb;
        zzex zzexVar = (zzex) map.get(cls);
        if (zzexVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzexVar = (zzex) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzexVar == null) {
            zzexVar = (zzex) ((zzex) zzhn.zze(cls)).zzu(6, null, null);
            if (zzexVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzexVar);
        }
        return zzexVar;
    }

    protected static Object zzm(zzgc zzgcVar, String str, Object[] objArr) {
        return new zzgl(zzgcVar, str, objArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzgk.zza().zzb(getClass()).zzj(this, (zzex) obj);
    }

    static Object zzl(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    protected static void zzp(Class cls, zzex zzexVar) {
        zzexVar.zzo();
        zzb.put(cls, zzexVar);
    }

    private final int zzv(zzgm zzgmVar) {
        return zzgk.zza().zzb(getClass()).zza(this);
    }

    private static zzex zzw(zzex zzexVar, byte[] bArr, int i10, int i11, zzej zzejVar) throws zzff {
        zzex zzexVarZzi = zzexVar.zzi();
        try {
            zzgm zzgmVarZzb = zzgk.zza().zzb(zzexVarZzi.getClass());
            zzgmVarZzb.zzh(zzexVarZzi, bArr, 0, i11, new zzdj(zzejVar));
            zzgmVarZzb.zzf(zzexVarZzi);
            return zzexVarZzi;
        } catch (zzff e) {
            e.zzf(zzexVarZzi);
            throw e;
        } catch (zzhc e2) {
            zzff zzffVarZza = e2.zza();
            zzffVarZza.zzf(zzexVarZzi);
            throw zzffVarZza;
        } catch (IOException e6) {
            if (e6.getCause() instanceof zzff) {
                throw ((zzff) e6.getCause());
            }
            zzff zzffVar = new zzff(e6);
            zzffVar.zzf(zzexVarZzi);
            throw zzffVar;
        } catch (IndexOutOfBoundsException unused) {
            zzff zzffVarZzg = zzff.zzg();
            zzffVarZzg.zzf(zzexVarZzi);
            throw zzffVarZzg;
        }
    }

    public final int hashCode() {
        if (!zzt()) {
            int i10 = this.zza;
            if (i10 == 0) {
                int iZzd = zzd();
                this.zza = iZzd;
                return iZzd;
            }
            return i10;
        }
        return zzd();
    }

    public final String toString() {
        return zzge.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.play_billing.zzdg
    final int zza(zzgm zzgmVar) {
        if (zzt()) {
            int iZza = zzgmVar.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
        }
        int i10 = this.zzd & Integer.MAX_VALUE;
        if (i10 == Integer.MAX_VALUE) {
            int iZza2 = zzgmVar.zza(this);
            if (iZza2 >= 0) {
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
                return iZza2;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZza2);
        }
        return i10;
    }

    final int zzd() {
        return zzgk.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgc
    public final int zze() {
        int iZzv;
        if (zzt()) {
            iZzv = zzv(null);
            if (iZzv < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + iZzv);
            }
        } else {
            iZzv = this.zzd & Integer.MAX_VALUE;
            if (iZzv == Integer.MAX_VALUE) {
                iZzv = zzv(null);
                if (iZzv >= 0) {
                    this.zzd = (this.zzd & Integer.MIN_VALUE) | iZzv;
                } else {
                    throw new IllegalStateException("serialized size must be non-negative, was " + iZzv);
                }
            }
        }
        return iZzv;
    }

    protected final void zzn() {
        zzgk.zza().zzb(getClass()).zzf(this);
        zzo();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgc
    public final void zzr(zzee zzeeVar) throws IOException {
        zzgk.zza().zzb(getClass()).zzi(this, zzef.zza(zzeeVar));
    }
}
