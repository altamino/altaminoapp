package com.narvii.util.diagnosis;

import androidx.exifinterface.media.ExifInterface;
import c.f.b.e.q5;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes9.dex */
public class LocalTask extends DiagnosisTask {
    private static final String key = "1825D7DAD44DB4FD957743A45D5826E8";

    LocalTask(NVContext nVContext) {
        super(nVContext, "Local");
    }

    @Override // java.lang.Runnable
    public void run() throws NoSuchAlgorithmException, InvalidKeyException {
        String str;
        StringBuilder sb;
        String str2;
        StringBuilder sb2;
        String str3;
        StringBuilder sb3;
        String str4;
        byte[] bArrC = q5.c(key);
        if (!q5.f886a) {
            this.result = Boolean.FALSE;
            this.error = ExifInterface.GPS_MEASUREMENT_IN_PROGRESS;
        }
        if (!Utils.isStringEquals(key, q5.b(bArrC))) {
            this.result = Boolean.FALSE;
            if (this.error == null) {
                sb3 = new StringBuilder();
                str4 = "B";
            } else {
                sb3 = new StringBuilder();
                sb3.append(this.error);
                str4 = " B";
            }
            sb3.append(str4);
            sb3.append(q5.errc());
            this.error = sb3.toString();
        }
        String strD = q5.d(bArrC, key, 0);
        String str5 = "N";
        if (strD == null || (strD.hashCode() != -1338326813 && strD.hashCode() != -1963155065 && strD.hashCode() != 359456327)) {
            this.result = Boolean.FALSE;
            if (strD == null) {
                str = "N";
            } else {
                str = "F";
                if (!strD.startsWith("F")) {
                    str = "" + q5.errc();
                }
            }
            if (this.error == null) {
                sb = new StringBuilder();
                str2 = "C";
            } else {
                sb = new StringBuilder();
                sb.append(this.error);
                str2 = " C";
            }
            sb.append(str2);
            sb.append(str);
            this.error = sb.toString();
        }
        String strF = q5.f(bArrC, "1825D7DAD44DB4FD957743A45D5826E81825D7DAD44DB4FD957743A45D5826E8", 0);
        if (strF == null || (strF.hashCode() != 363067612 && strF.hashCode() != 116551489 && strF.hashCode() != 1007947535)) {
            this.result = Boolean.FALSE;
            if (strF != null) {
                str5 = "" + q5.errc();
            }
            if (this.error == null) {
                sb2 = new StringBuilder();
                str3 = ExifInterface.LATITUDE_SOUTH;
            } else {
                sb2 = new StringBuilder();
                sb2.append(this.error);
                str3 = " S";
            }
            sb2.append(str3);
            sb2.append(str5);
            this.error = sb2.toString();
        }
        if (this.result == null) {
            this.result = Boolean.TRUE;
        }
    }
}
