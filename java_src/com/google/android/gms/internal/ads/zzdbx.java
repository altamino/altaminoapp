package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public final class zzdbx {
    private static final CopyOnWriteArrayList<zzdbw> zzgpi = new CopyOnWriteArrayList<>();

    public static zzdbw zzgh(String str) throws GeneralSecurityException {
        Iterator<zzdbw> it = zzgpi.iterator();
        while (it.hasNext()) {
            zzdbw next = it.next();
            if (next.zzgf(str)) {
                return next;
            }
        }
        String strValueOf = String.valueOf(str);
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "No KMS client does support: ".concat(strValueOf) : new String("No KMS client does support: "));
    }
}
