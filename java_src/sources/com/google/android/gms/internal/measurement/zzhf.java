package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhd;
import com.google.android.gms.internal.measurement.zzhf;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zzhf<MessageType extends zzhd<MessageType, BuilderType>, BuilderType extends zzhf<MessageType, BuilderType>> implements zzkm {
    @Override // 
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType zzb(zzib zzibVar, zzik zzikVar) throws IOException;

    public BuilderType zza(byte[] bArr, int i10, int i11) throws zzji {
        try {
            zzib zzibVarZza = zzib.zza(bArr, 0, i11, false);
            zzb(zzibVarZza, zzik.zza);
            zzibVarZza.zzb(0);
            return this;
        } catch (zzji e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    @Override // 
    /* JADX INFO: renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    public BuilderType zza(byte[] bArr, int i10, int i11, zzik zzikVar) throws zzji {
        try {
            zzib zzibVarZza = zzib.zza(bArr, 0, i11, false);
            zzb(zzibVarZza, zzikVar);
            zzibVarZza.zzb(0);
            return this;
        } catch (zzji e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkm
    public final /* synthetic */ zzkm zza(byte[] bArr) throws zzji {
        return zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzkm
    public final /* synthetic */ zzkm zza(byte[] bArr, zzik zzikVar) throws zzji {
        return zza(bArr, 0, bArr.length, zzikVar);
    }

    private final String zza(String str) {
        return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
    }
}
