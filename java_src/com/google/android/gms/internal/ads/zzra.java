package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzra {
    public final int length;
    private int zzafx;
    private final zzlh[] zzbju;

    public zzra(zzlh... zzlhVarArr) {
        zzsk.checkState(zzlhVarArr.length > 0);
        this.zzbju = zzlhVarArr;
        this.length = zzlhVarArr.length;
    }

    public final zzlh zzbf(int i) {
        return this.zzbju[i];
    }

    public final int zzh(zzlh zzlhVar) {
        int i = 0;
        while (true) {
            zzlh[] zzlhVarArr = this.zzbju;
            if (i >= zzlhVarArr.length) {
                return -1;
            }
            if (zzlhVar == zzlhVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public final int hashCode() {
        if (this.zzafx == 0) {
            this.zzafx = Arrays.hashCode(this.zzbju) + 527;
        }
        return this.zzafx;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzra.class == obj.getClass()) {
            zzra zzraVar = (zzra) obj;
            if (this.length == zzraVar.length && Arrays.equals(this.zzbju, zzraVar.zzbju)) {
                return true;
            }
        }
        return false;
    }
}
