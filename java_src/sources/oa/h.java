package oa;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public abstract class h extends x9.b {
    public static final int NO_AGE_LIMIT = 0;
    public static final long UNKNOWN_SUBSCRIBER_COUNT = -1;

    public enum a {
        PUBLIC,
        UNLISTED,
        PRIVATE,
        INTERNAL,
        OTHER
    }

    public long A() throws aa.h {
        return 0L;
    }

    public String B() throws aa.h {
        return "";
    }

    public long C() throws aa.h {
        return -1L;
    }

    public x9.h<? extends x9.e, ? extends x9.f> F() throws IOException, aa.d {
        return null;
    }

    public abstract o H() throws aa.h;

    public String J() throws aa.h {
        return "";
    }

    public String K() throws aa.h {
        return "";
    }

    public String M() throws aa.h {
        return "";
    }

    public String O() throws aa.h {
        return null;
    }

    public abstract List<x9.c> P() throws aa.h;

    public long Q() throws aa.h {
        return 0L;
    }

    public org.schabi.newpipe.extractor.localization.e S() throws aa.h {
        return null;
    }

    public abstract String U() throws aa.h;

    public long V() throws aa.h {
        return -1L;
    }

    public abstract String W() throws aa.h;

    public abstract List<s> X() throws IOException, aa.d;

    public abstract List<s> Y() throws IOException, aa.d;

    public long Z() throws aa.h {
        return -1L;
    }

    public boolean a0() throws aa.h {
        return false;
    }

    public boolean b0() throws aa.h {
        return false;
    }

    public int p() throws aa.h {
        return 0;
    }

    public abstract List<oa.a> q() throws IOException, aa.d;

    public String r() throws aa.h {
        return "";
    }

    public String s() throws aa.h {
        return "";
    }

    public long u() throws aa.h {
        return -1L;
    }

    public String v() {
        return null;
    }

    public String x() throws aa.h {
        return "";
    }

    public String y() throws aa.h {
        return "";
    }

    public Locale z() throws aa.h {
        return null;
    }

    public a E() throws aa.h {
        return a.PUBLIC;
    }

    protected long R(String str) throws aa.h {
        String strO;
        String strO2;
        String strO3 = "";
        try {
            String strO4 = qa.n.o(str, j());
            if (strO4.isEmpty()) {
                return 0L;
            }
            try {
                strO = qa.n.o("(\\d+)s", strO4);
                try {
                    strO2 = qa.n.o("(\\d+)m", strO4);
                    try {
                        strO3 = qa.n.o("(\\d+)h", strO4);
                    } catch (Exception unused) {
                        try {
                            if (strO.isEmpty() && strO2.isEmpty()) {
                                strO = qa.n.o("t=(\\d+)", strO4);
                            }
                        } catch (aa.h e) {
                            throw new aa.h("Could not get timestamp.", e);
                        }
                    }
                } catch (Exception unused2) {
                    strO2 = "";
                }
            } catch (Exception unused3) {
                strO = "";
                strO2 = strO;
            }
            int i10 = 0;
            int i11 = strO.isEmpty() ? 0 : Integer.parseInt(strO);
            int i12 = strO2.isEmpty() ? 0 : Integer.parseInt(strO2);
            if (!strO3.isEmpty()) {
                i10 = Integer.parseInt(strO3);
            }
            return ((long) i11) + (((long) i12) * 60) + (((long) i10) * 3600);
        } catch (qa.n.a unused4) {
            return -2L;
        }
    }

    public e t() throws aa.h {
        return e.EMPTY_DESCRIPTION;
    }

    public h(x9.s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        super(sVar, aVar);
    }

    public List<x9.n> D() throws aa.h {
        return Collections.emptyList();
    }

    public List<n> G() throws aa.h {
        return Collections.emptyList();
    }

    public List<x9.c> I() throws aa.h {
        return Collections.emptyList();
    }

    public List<q> L() throws IOException, aa.d {
        return Collections.emptyList();
    }

    public List<String> N() throws aa.h {
        return Collections.emptyList();
    }

    public List<x9.c> T() throws aa.h {
        return Collections.emptyList();
    }

    public List<f> w() throws aa.d {
        return Collections.emptyList();
    }
}
