package q6;

import android.content.Context;

/* JADX INFO: loaded from: classes10.dex */
public class a implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f3334b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3335a;

    @Override // q6.c
    public String[] a() {
        String[] strArr = f3334b;
        if (strArr != null && strArr.length > 0) {
            return strArr;
        }
        try {
            String[] strArrA = r6.a.a(this.f3335a);
            if (strArrA == null) {
                strArrA = new String[0];
            }
            f3334b = strArrA;
            return strArrA;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    a(Context context) {
        this.f3335a = context.getApplicationContext();
    }
}
