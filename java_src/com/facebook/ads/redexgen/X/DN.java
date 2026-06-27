package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import com.tonyodev.fetch.FetchConst;
import java.io.File;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class DN implements CG<String> {
    private static byte[] A04;
    private final int A00;
    private final long A01;
    private final long A02;

    @Nullable
    private final File A03;

    static {
        A03();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A04 = new byte[]{54, 73, 73, -5, -12, -3, 30, 31, 38};
    }

    public DN(@Nullable File file) {
        this.A03 = file;
        this.A01 = file != null ? file.lastModified() : 0L;
        this.A02 = file != null ? file.length() : 0L;
        this.A00 = A00(file);
    }

    private static int A00(@Nullable File file) {
        int i = 0;
        char c = file != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    if (!file.exists()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    return i;
                case 5:
                    file = file;
                    i = 0;
                    if (!file.isFile()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    i = 0 | 1;
                    c = 7;
                    break;
                case 7:
                    file = file;
                    if (!file.isDirectory()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    i |= 2;
                    c = '\t';
                    break;
                case '\t':
                    file = file;
                    if (!file.isAbsolute()) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    i |= 4;
                    c = 11;
                    break;
                case 11:
                    file = file;
                    if (!file.isHidden()) {
                        c = 4;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    i |= 8;
                    c = 4;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.CG
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final JSONObject A7A(String str, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A01(0, 3, 104), this.A00);
        jSONObject2.put(A01(3, 3, 34), this.A02);
        jSONObject2.put(A01(6, 3, 69), this.A01);
        jSONObject.put(str, jSONObject2);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    @SuppressLint({"BadMethodUse-java.io.File.getAbsolutePath"})
    public final boolean A3v(Object obj) {
        DN newFileInfo = this;
        boolean z = false;
        DN dn = (DN) obj;
        char c = newFileInfo.A03 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    dn = dn;
                    if (dn.A03 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    newFileInfo = newFileInfo;
                    dn = dn;
                    if (!newFileInfo.A03.getAbsolutePath().equals(dn.A03.getAbsolutePath())) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    newFileInfo = newFileInfo;
                    dn = dn;
                    if (newFileInfo.A00 != dn.A00) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    newFileInfo = newFileInfo;
                    dn = dn;
                    if (newFileInfo.A02 != dn.A02) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    newFileInfo = newFileInfo;
                    dn = dn;
                    if (newFileInfo.A01 != dn.A01) {
                        c = 3;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int A76() {
        return A01(0, 3, 104).getBytes().length + A01(3, 3, 34).getBytes().length + A01(6, 3, 69).getBytes().length + 4 + 16;
    }
}
