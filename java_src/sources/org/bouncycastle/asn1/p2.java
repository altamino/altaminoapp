package org.bouncycastle.asn1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
class p2 {
    private static Long ZERO = c(0);
    private static final Map localeCache = new HashMap();
    static Locale EN_Locale = b();

    static Date a(Date date) throws ParseException {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return date;
        }
        Map map = localeCache;
        synchronized (map) {
            try {
                Long lC = (Long) map.get(locale);
                if (lC == null) {
                    long time = new SimpleDateFormat("yyyyMMddHHmmssz").parse("19700101000000GMT+00:00").getTime();
                    lC = time == 0 ? ZERO : c(time);
                    map.put(locale, lC);
                }
                if (lC != ZERO) {
                    return new Date(date.getTime() - lC.longValue());
                }
                return date;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Locale b() {
        if ("en".equalsIgnoreCase(Locale.getDefault().getLanguage())) {
            return Locale.getDefault();
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        for (int i10 = 0; i10 != availableLocales.length; i10++) {
            if ("en".equalsIgnoreCase(availableLocales[i10].getLanguage())) {
                return availableLocales[i10];
            }
        }
        return Locale.getDefault();
    }

    private static Long c(long j6) {
        return Long.valueOf(j6);
    }
}
