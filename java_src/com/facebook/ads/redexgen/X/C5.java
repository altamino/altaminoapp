package com.facebook.ads.redexgen.X;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class C5 implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public C5(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, CertificateException {
        PackageInfo packageInfo = this.A00.A00.getPackageManager().getPackageInfo(this.A00.A00.getPackageName(), 64);
        Signature[] signatureArr = packageInfo.signatures;
        HashMap map = new HashMap();
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    signatureArr = signatureArr;
                    if (i >= signatureArr.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    signatureArr = signatureArr;
                    map = map;
                    map.put(Integer.valueOf(i), new CH(signatureArr[i]));
                    i++;
                    c = 2;
                    break;
                case 4:
                    return this.A00.A03((HashMap<Integer, CH>) map);
            }
        }
    }
}
