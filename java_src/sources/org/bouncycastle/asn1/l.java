package org.bouncycastle.asn1;

import com.narvii.broadcast.DeliveryTimePickerFragment;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes10.dex */
public class l extends z {
    static final m0 TYPE = new a(l.class, 24);
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return l.z(r1Var.z());
        }
    }

    public l(String str) {
        this.contents = org.bouncycastle.util.h.e(str);
        try {
            A();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    private boolean F(int i10) {
        byte b7;
        byte[] bArr = this.contents;
        return bArr.length > i10 && (b7 = bArr[i10]) >= 48 && b7 <= 57;
    }

    private String G(String str) {
        String str2;
        StringBuilder sb;
        char cCharAt;
        String strSubstring = str.substring(14);
        int i10 = 1;
        while (i10 < strSubstring.length() && '0' <= (cCharAt = strSubstring.charAt(i10)) && cCharAt <= '9') {
            i10++;
        }
        int i11 = i10 - 1;
        if (i11 > 3) {
            str2 = strSubstring.substring(0, 4) + strSubstring.substring(i10);
            sb = new StringBuilder();
        } else if (i11 == 1) {
            str2 = strSubstring.substring(0, i10) + TarConstants.VERSION_POSIX + strSubstring.substring(i10);
            sb = new StringBuilder();
        } else {
            if (i11 != 2) {
                return str;
            }
            str2 = strSubstring.substring(0, i10) + "0" + strSubstring.substring(i10);
            sb = new StringBuilder();
        }
        sb.append(str.substring(0, 14));
        sb.append(str2);
        return sb.toString();
    }

    private SimpleDateFormat w() {
        SimpleDateFormat simpleDateFormat;
        if (C()) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSSz");
        } else if (E()) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
        } else {
            simpleDateFormat = D() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        }
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat;
    }

    private String x(String str) {
        String str2;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str2 = "-";
        } else {
            str2 = org.slf4j.c.ANY_NON_NULL_MARKER;
        }
        int i10 = rawOffset / DeliveryTimePickerFragment.ONE_HOUR;
        int i11 = (rawOffset - (DeliveryTimePickerFragment.ONE_HOUR * i10)) / 60000;
        try {
            if (timeZone.useDaylightTime()) {
                if (C()) {
                    str = G(str);
                }
                if (timeZone.inDaylightTime(w().parse(str + "GMT" + str2 + y(i10) + ":" + y(i11)))) {
                    i10 += str2.equals(org.slf4j.c.ANY_NON_NULL_MARKER) ? 1 : -1;
                }
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str2 + y(i10) + ":" + y(i11);
    }

    private String y(int i10) {
        if (i10 >= 10) {
            return Integer.toString(i10);
        }
        return "0" + i10;
    }

    static l z(byte[] bArr) {
        return new l(bArr);
    }

    public Date A() throws ParseException {
        SimpleDateFormat simpleDateFormatW;
        SimpleDateFormat simpleDateFormat;
        String strB = org.bouncycastle.util.h.b(this.contents);
        if (strB.endsWith("Z")) {
            if (C()) {
                simpleDateFormatW = new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'");
            } else if (E()) {
                simpleDateFormatW = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
            } else {
                simpleDateFormatW = D() ? new SimpleDateFormat("yyyyMMddHHmm'Z'") : new SimpleDateFormat("yyyyMMddHH'Z'");
            }
            simpleDateFormatW.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else if (strB.indexOf(45) > 0 || strB.indexOf(43) > 0) {
            strB = B();
            simpleDateFormatW = w();
        } else {
            if (C()) {
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSS");
            } else if (E()) {
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            } else {
                simpleDateFormat = D() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
            }
            simpleDateFormatW = simpleDateFormat;
            simpleDateFormatW.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (C()) {
            strB = G(strB);
        }
        return p2.a(simpleDateFormatW.parse(strB));
    }

    public String B() {
        String strB = org.bouncycastle.util.h.b(this.contents);
        if (strB.charAt(strB.length() - 1) == 'Z') {
            return strB.substring(0, strB.length() - 1) + "GMT+00:00";
        }
        int length = strB.length();
        char cCharAt = strB.charAt(length - 6);
        if ((cCharAt == '-' || cCharAt == '+') && strB.indexOf("GMT") == length - 9) {
            return strB;
        }
        int length2 = strB.length();
        int i10 = length2 - 5;
        char cCharAt2 = strB.charAt(i10);
        if (cCharAt2 == '-' || cCharAt2 == '+') {
            StringBuilder sb = new StringBuilder();
            sb.append(strB.substring(0, i10));
            sb.append("GMT");
            int i11 = length2 - 2;
            sb.append(strB.substring(i10, i11));
            sb.append(":");
            sb.append(strB.substring(i11));
            return sb.toString();
        }
        int length3 = strB.length() - 3;
        char cCharAt3 = strB.charAt(length3);
        if (cCharAt3 != '-' && cCharAt3 != '+') {
            return strB + x(strB);
        }
        return strB.substring(0, length3) + "GMT" + strB.substring(length3) + ":00";
    }

    protected boolean C() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.contents;
            if (i10 == bArr.length) {
                return false;
            }
            if (bArr[i10] == 46 && i10 == 14) {
                return true;
            }
            i10++;
        }
    }

    protected boolean D() {
        return F(10) && F(11);
    }

    protected boolean E() {
        return F(12) && F(13);
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar instanceof l) {
            return org.bouncycastle.util.a.a(this.contents, ((l) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 24, this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return new m1(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new m1(this.contents);
    }

    public l(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", p2.EN_Locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = org.bouncycastle.util.h.e(simpleDateFormat.format(date));
    }

    public l(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = org.bouncycastle.util.h.e(simpleDateFormat.format(date));
    }

    l(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("GeneralizedTime string too short");
        }
        this.contents = bArr;
        if (!F(0) || !F(1) || !F(2) || !F(3)) {
            throw new IllegalArgumentException("illegal characters in GeneralizedTime string");
        }
    }
}
