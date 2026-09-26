package a2;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    public static final int CLASS_2008 = 2008;
    public static final int CLASS_2009 = 2009;
    public static final int CLASS_2010 = 2010;
    public static final int CLASS_2011 = 2011;
    public static final int CLASS_2012 = 2012;
    public static final int CLASS_2013 = 2013;
    public static final int CLASS_2014 = 2014;
    public static final int CLASS_2015 = 2015;
    public static final int CLASS_UNKNOWN = -1;
    private static final long MB = 1048576;
    private static final int MHZ_IN_KHZ = 1000;
    private static volatile Integer mYearCategory;

    private static void c(ArrayList<Integer> arrayList, int i10) {
        if (i10 != -1) {
            arrayList.add(Integer.valueOf(i10));
        }
    }

    private static int a(Context context) {
        ArrayList arrayList = new ArrayList();
        c(arrayList, f());
        c(arrayList, e());
        c(arrayList, g(context));
        if (arrayList.isEmpty()) {
            return -1;
        }
        Collections.sort(arrayList);
        if ((arrayList.size() & 1) == 1) {
            return ((Integer) arrayList.get(arrayList.size() / 2)).intValue();
        }
        int size = arrayList.size() / 2;
        int i10 = size - 1;
        return ((Integer) arrayList.get(i10)).intValue() + ((((Integer) arrayList.get(size)).intValue() - ((Integer) arrayList.get(i10)).intValue()) / 2);
    }

    public static int d(Context context) {
        if (mYearCategory == null) {
            synchronized (b.class) {
                try {
                    if (mYearCategory == null) {
                        mYearCategory = Integer.valueOf(b(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mYearCategory.intValue();
    }

    private static int b(Context context) {
        long jG = a.g(context);
        if (jG == -1) {
            return a(context);
        }
        if (jG <= 805306368) {
            if (a.f() <= 1) {
                return CLASS_2009;
            }
            return CLASS_2010;
        }
        if (jG <= 1073741824) {
            if (a.b() >= 1300000) {
                return CLASS_2012;
            }
            return CLASS_2011;
        }
        if (jG <= 1610612736) {
            if (a.b() < 1800000) {
                return CLASS_2012;
            }
            return CLASS_2013;
        }
        if (jG <= 2147483648L) {
            return CLASS_2013;
        }
        if (jG <= 3221225472L) {
            return CLASS_2014;
        }
        return CLASS_2015;
    }

    private static int e() {
        long jB = a.b();
        if (jB == -1) {
            return -1;
        }
        if (jB <= 528000) {
            return 2008;
        }
        if (jB <= 620000) {
            return CLASS_2009;
        }
        if (jB <= 1020000) {
            return CLASS_2010;
        }
        if (jB <= 1220000) {
            return CLASS_2011;
        }
        if (jB <= 1520000) {
            return CLASS_2012;
        }
        if (jB <= 2020000) {
            return CLASS_2013;
        }
        return CLASS_2014;
    }

    private static int f() {
        int iF = a.f();
        if (iF < 1) {
            return -1;
        }
        if (iF == 1) {
            return 2008;
        }
        if (iF <= 3) {
            return CLASS_2011;
        }
        return CLASS_2012;
    }

    private static int g(Context context) {
        long jG = a.g(context);
        if (jG <= 0) {
            return -1;
        }
        if (jG <= 201326592) {
            return 2008;
        }
        if (jG <= 304087040) {
            return CLASS_2009;
        }
        if (jG <= 536870912) {
            return CLASS_2010;
        }
        if (jG <= 1073741824) {
            return CLASS_2011;
        }
        if (jG <= 1610612736) {
            return CLASS_2012;
        }
        if (jG <= 2147483648L) {
            return CLASS_2013;
        }
        return CLASS_2014;
    }
}
