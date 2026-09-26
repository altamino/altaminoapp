package org.schabi.newpipe.extractor.utils.jsextractor;

import aa.h;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static String a(String str, String str2) throws h {
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf >= 0) {
            String strSubstring = str.substring(iIndexOf + str2.length());
            b bVar = new b(strSubstring);
            boolean z6 = false;
            while (true) {
                b.h hVarB = bVar.b();
                c cVar = hVarB.token;
                if (cVar == c.LC) {
                    z6 = true;
                } else {
                    if (z6 && bVar.g()) {
                        return strSubstring.substring(0, hVarB.end);
                    }
                    if (cVar == c.EOF) {
                        throw new h("Could not find matching braces");
                    }
                }
            }
        } else {
            throw new h("Start not found");
        }
    }
}
