package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes10.dex */
abstract class zzp<T> {
    final int zza;
    final TaskCompletionSource<T> zzb = new TaskCompletionSource<>();
    final int zzc;
    final Bundle zzd;

    abstract void zza(Bundle bundle);

    abstract boolean zzb();

    final void zzc(zzq zzqVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(zzqVar);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 14 + strValueOf2.length());
            sb.append("Failing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.zzb.setException(zzqVar);
    }

    final void zzd(T t5) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(t5);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 16 + strValueOf2.length());
            sb.append("Finishing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.zzb.setResult(t5);
    }

    public final String toString() {
        int i10 = this.zzc;
        int i11 = this.zza;
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i10);
        sb.append(" id=");
        sb.append(i11);
        sb.append(" oneWay=");
        sb.append(zzb());
        sb.append("}");
        return sb.toString();
    }

    zzp(int i10, int i11, Bundle bundle) {
        this.zza = i10;
        this.zzc = i11;
        this.zzd = bundle;
    }
}
