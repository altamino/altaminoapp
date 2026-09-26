package org.threeten.bp;

import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public final class c {
    public static Date a(f fVar) {
        try {
            return new Date(fVar.B());
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
