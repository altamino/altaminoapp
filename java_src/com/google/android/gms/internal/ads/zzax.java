package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;

/* loaded from: classes2.dex */
public class zzax extends zzr<String> {
    private final Object mLock;
    private zzaa<String> zzcm;

    public zzax(int i, String str, zzaa<String> zzaaVar, zzz zzzVar) {
        super(i, str, zzzVar);
        this.mLock = new Object();
        this.zzcm = zzaaVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzr
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public void zza(String str) {
        zzaa<String> zzaaVar;
        synchronized (this.mLock) {
            zzaaVar = this.zzcm;
        }
        if (zzaaVar != null) {
            zzaaVar.zzb(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    protected final zzy<String> zza(zzp zzpVar) {
        String str;
        try {
            byte[] bArr = zzpVar.data;
            String str2 = "ISO-8859-1";
            String str3 = zzpVar.zzab.get("Content-Type");
            if (str3 != null) {
                String[] strArrSplit = str3.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= strArrSplit.length) {
                        break;
                    }
                    String[] strArrSplit2 = strArrSplit[i].trim().split("=", 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                        str2 = strArrSplit2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str2);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzpVar.data);
        }
        return zzy.zza(str, zzaq.zzb(zzpVar));
    }
}
