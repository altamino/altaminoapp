package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class EA implements CG<String> {
    private final String A00;

    @Nullable
    private final String A01;

    public EA(Context context, String str, E9 e9) {
        this.A00 = str;
        this.A01 = A03(context, str, e9);
    }

    @Nullable
    private static String A00(Context context, String str) {
        String string = null;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    string = null;
                    c = 3;
                    break;
                case 3:
                    return string;
                case 4:
                    context = context;
                    str = str;
                    string = Settings.Global.getString(context.getContentResolver(), str);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private static String A01(Context context, String str) {
        String string = null;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    string = null;
                    c = 3;
                    break;
                case 3:
                    return string;
                case 4:
                    context = context;
                    str = str;
                    string = Settings.Secure.getString(context.getContentResolver(), str);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private static String A02(Context context, String str) {
        String string = null;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    string = null;
                    c = 3;
                    break;
                case 3:
                    return string;
                case 4:
                    context = context;
                    str = str;
                    string = Settings.System.getString(context.getContentResolver(), str);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private static String A03(Context context, String str, E9 e9) {
        char c;
        String strA00 = null;
        switch (e9) {
            case A02:
                c = 4;
                break;
            case A03:
                c = 5;
                break;
            case A04:
                c = 6;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    strA00 = "";
                    c = 3;
                    break;
                case 3:
                    return strA00;
                case 4:
                    context = context;
                    str = str;
                    strA00 = A00(context, str);
                    c = 3;
                    break;
                case 5:
                    context = context;
                    str = str;
                    strA00 = A01(context, str);
                    c = 3;
                    break;
                case 6:
                    context = context;
                    str = str;
                    strA00 = A02(context, str);
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.CG
    /* renamed from: A04, reason: merged with bridge method [inline-methods] */
    public final JSONObject A7A(String str, JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.A00, this.A01);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean A3v(Object obj) {
        EA ea = this;
        boolean zEquals = false;
        boolean zEquals2 = false;
        boolean z = true;
        EA ea2 = (EA) obj;
        char c = ea.A00 == null ? (char) 2 : (char) 18;
        while (true) {
            switch (c) {
                case 2:
                    ea2 = ea2;
                    if (ea2.A00 != null) {
                        c = 18;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    zEquals = z;
                    c = 4;
                    break;
                case 4:
                    ea = ea;
                    if (ea.A01 != null) {
                        c = 17;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    ea2 = ea2;
                    if (ea2.A01 != null) {
                        c = 17;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    zEquals2 = z;
                    c = 7;
                    break;
                case 7:
                    ea = ea;
                    if (ea.A00 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    ea2 = ea2;
                    if (ea2.A00 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    ea = ea;
                    ea2 = ea2;
                    zEquals = ea.A00.equals(ea2.A00);
                    c = '\n';
                    break;
                case '\n':
                    ea = ea;
                    if (ea.A01 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    ea2 = ea2;
                    if (ea2.A01 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    ea = ea;
                    ea2 = ea2;
                    zEquals2 = ea.A01.equals(ea2.A01);
                    c = '\r';
                    break;
                case '\r':
                    if (!zEquals) {
                        c = 16;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    if (!zEquals2) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    return z;
                case 16:
                    z = false;
                    c = 15;
                    break;
                case 17:
                    zEquals2 = false;
                    c = 7;
                    break;
                case 18:
                    zEquals = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int A76() {
        EA ea = this;
        int length = 0;
        char c = ea.A00 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    ea = ea;
                    if (ea.A01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ea = ea;
                    length = ea.A00.getBytes().length + ea.A01.getBytes().length;
                    c = 4;
                    break;
                case 4:
                    return length;
                case 5:
                    length = 0;
                    c = 4;
                    break;
            }
        }
    }
}
