package org.bouncycastle.asn1;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes8.dex */
public class j0 extends z {
    static final m0 TYPE = new a(j0.class, 23);
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return j0.w(r1Var.z());
        }
    }

    public j0(String str) {
        this.contents = org.bouncycastle.util.h.e(str);
        try {
            x();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    static j0 w(byte[] bArr) {
        return new j0(bArr);
    }

    private boolean z(int i10) {
        byte b7;
        byte[] bArr = this.contents;
        return bArr.length > i10 && (b7 = bArr[i10]) >= 48 && b7 <= 57;
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar instanceof j0) {
            return org.bouncycastle.util.a.a(this.contents, ((j0) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 23, this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }

    public String toString() {
        return org.bouncycastle.util.h.b(this.contents);
    }

    public Date x() throws ParseException {
        return p2.a(new SimpleDateFormat("yyMMddHHmmssz").parse(y()));
    }

    public String y() {
        StringBuilder sb;
        String strSubstring;
        String strB = org.bouncycastle.util.h.b(this.contents);
        if (strB.indexOf(45) >= 0 || strB.indexOf(43) >= 0) {
            int iIndexOf = strB.indexOf(45);
            if (iIndexOf < 0) {
                iIndexOf = strB.indexOf(43);
            }
            if (iIndexOf == strB.length() - 3) {
                strB = strB + TarConstants.VERSION_POSIX;
            }
            if (iIndexOf == 10) {
                sb = new StringBuilder();
                sb.append(strB.substring(0, 10));
                sb.append("00GMT");
                sb.append(strB.substring(10, 13));
                sb.append(":");
                strSubstring = strB.substring(13, 15);
            } else {
                sb = new StringBuilder();
                sb.append(strB.substring(0, 12));
                sb.append("GMT");
                sb.append(strB.substring(12, 15));
                sb.append(":");
                strSubstring = strB.substring(15, 17);
            }
        } else if (strB.length() == 11) {
            sb = new StringBuilder();
            sb.append(strB.substring(0, 10));
            strSubstring = "00GMT+00:00";
        } else {
            sb = new StringBuilder();
            sb.append(strB.substring(0, 12));
            strSubstring = "GMT+00:00";
        }
        sb.append(strSubstring);
        return sb.toString();
    }

    public j0(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'", p2.EN_Locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = org.bouncycastle.util.h.e(simpleDateFormat.format(date));
    }

    public j0(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = org.bouncycastle.util.h.e(simpleDateFormat.format(date));
    }

    j0(byte[] bArr) {
        if (bArr.length < 2) {
            throw new IllegalArgumentException("UTCTime string too short");
        }
        this.contents = bArr;
        if (!z(0) || !z(1)) {
            throw new IllegalArgumentException("illegal characters in UTCTime string");
        }
    }
}
