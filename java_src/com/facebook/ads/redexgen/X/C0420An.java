package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import org.json.JSONException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.An, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0420An implements InterfaceC0419Am {
    private final Context A00;
    private final C0424Ar A01;

    public C0420An(Context context) {
        this.A00 = context;
        this.A01 = new C0424Ar(context);
    }

    public final C0424Ar A00() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0419Am
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final void A6t(Throwable th) throws JSONException {
        Throwable th2 = th;
        C0420An c0420An = this;
        String string = null;
        String strSubstring = null;
        C0424Ar c0424Ar = null;
        String stackTrace = null;
        String strA02 = null;
        HashMap map = null;
        String message = null;
        char c = th2 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0420An = c0420An;
                    if (Au.A00(c0420An.A00) < Math.random()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c0420An = c0420An;
                    th2 = th2;
                    StringWriter stringWriter = new StringWriter();
                    th2.printStackTrace(new PrintWriter(stringWriter));
                    string = stringWriter.toString();
                    c0424Ar = c0420An.A01;
                    stackTrace = B9.A03.A02();
                    strA02 = BA.A06.A02();
                    map = new HashMap();
                    message = th2.getMessage();
                    if (string == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    string = string;
                    if (string.length() <= 500) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    string = string;
                    strSubstring = string.substring(0, 500);
                    c = 7;
                    break;
                case 7:
                    th2 = th2;
                    c0424Ar = c0424Ar;
                    stackTrace = stackTrace;
                    strA02 = strA02;
                    map = map;
                    message = message;
                    strSubstring = strSubstring;
                    c0424Ar.A4M(stackTrace, strA02, map, null, message, strSubstring, th2.getClass().getSimpleName());
                    c = 3;
                    break;
                case '\b':
                    string = string;
                    strSubstring = string;
                    c = 7;
                    break;
            }
        }
    }
}
