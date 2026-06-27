package com.narvii.util.diagnosis;

import com.narvii.app.NVContext;
import com.narvii.util.NativeHelper;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class LocalTask extends DiagnosisTask {
    private static final String key = "1825D7DAD44DB4FD957743A45D5826E8";

    LocalTask(NVContext nVContext) {
        super(nVContext, "Local");
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        StringBuilder sb;
        String str2;
        StringBuilder sb2;
        String str3;
        StringBuilder sb3;
        String str4;
        byte[] bArrBe = NativeHelper.Be(key);
        if (!NativeHelper.A) {
            this.result = false;
            this.error = "A";
        }
        if (!Utils.isStringEquals(key, NativeHelper.Bd(bArrBe))) {
            this.result = false;
            if (this.error == null) {
                sb3 = new StringBuilder();
                str4 = "B";
            } else {
                sb3 = new StringBuilder();
                sb3.append(this.error);
                str4 = " B";
            }
            sb3.append(str4);
            sb3.append(NativeHelper.errc());
            this.error = sb3.toString();
        }
        String strC = NativeHelper.C(bArrBe, key, 0);
        String str5 = "N";
        if (strC == null || (strC.hashCode() != -1338326813 && strC.hashCode() != -1963155065 && strC.hashCode() != 359456327)) {
            this.result = false;
            if (strC == null) {
                str = "N";
            } else if (strC.startsWith("F")) {
                str = "F";
            } else {
                str = "" + NativeHelper.errc();
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
        String strS = NativeHelper.S(bArrBe, "1825D7DAD44DB4FD957743A45D5826E81825D7DAD44DB4FD957743A45D5826E8", 0);
        if (strS == null || (strS.hashCode() != 363067612 && strS.hashCode() != 116551489 && strS.hashCode() != 1007947535)) {
            this.result = false;
            if (strS != null) {
                str5 = "" + NativeHelper.errc();
            }
            if (this.error == null) {
                sb2 = new StringBuilder();
                str3 = "S";
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
            this.result = true;
        }
    }
}
