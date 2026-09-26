package com.scottyab.rootbeer;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Scanner;

/* JADX INFO: loaded from: classes11.dex */
public class b {
    private boolean loggingEnabled = true;
    private final Context mContext;

    private String[] o() {
        try {
            InputStream inputStream = Runtime.getRuntime().exec("mount").getInputStream();
            if (inputStream == null) {
                return null;
            }
            return new Scanner(inputStream).useDelimiter("\\A").next().split("\n");
        } catch (IOException | NoSuchElementException e) {
            c6.a.a(e);
            return null;
        }
    }

    private String[] p() {
        try {
            InputStream inputStream = Runtime.getRuntime().exec("getprop").getInputStream();
            if (inputStream == null) {
                return null;
            }
            return new Scanner(inputStream).useDelimiter("\\A").next().split("\n");
        } catch (IOException | NoSuchElementException e) {
            c6.a.a(e);
            return null;
        }
    }

    public boolean g() {
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec(new String[]{"which", "su"});
            boolean z6 = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine() != null;
            processExec.destroy();
            return z6;
        } catch (Throwable unused) {
            if (processExec != null) {
                processExec.destroy();
            }
            return false;
        }
    }

    public boolean h() {
        return i(null);
    }

    public boolean j() {
        return k(null);
    }

    private boolean m(List<String> list) {
        PackageManager packageManager = this.mContext.getPackageManager();
        boolean z6 = false;
        for (String str : list) {
            try {
                packageManager.getPackageInfo(str, 0);
                c6.a.b(str + " ROOT management app detected!");
                z6 = true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return z6;
    }

    public boolean a() {
        return new RootBeerNative().a();
    }

    public boolean c() {
        HashMap map = new HashMap();
        map.put("ro.debuggable", "1");
        map.put("ro.secure", "0");
        String[] strArrP = p();
        if (strArrP == null) {
            return false;
        }
        boolean z6 = false;
        for (String str : strArrP) {
            for (String str2 : map.keySet()) {
                if (str.contains(str2)) {
                    String str3 = "[" + ((String) map.get(str2)) + "]";
                    if (str.contains(str3)) {
                        c6.a.f(str2 + " = " + str3 + " detected!");
                        z6 = true;
                    }
                }
            }
        }
        return z6;
    }

    public boolean d() {
        return b("magisk");
    }

    public boolean i(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(a.knownDangerousAppsPackages));
        if (strArr != null && strArr.length > 0) {
            arrayList.addAll(Arrays.asList(strArr));
        }
        return m(arrayList);
    }

    public boolean k(String[] strArr) {
        ArrayList arrayList = new ArrayList(Arrays.asList(a.knownRootAppsPackages));
        if (strArr != null && strArr.length > 0) {
            arrayList.addAll(Arrays.asList(strArr));
        }
        return m(arrayList);
    }

    public boolean l() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    public b(Context context) {
        this.mContext = context;
    }

    public boolean b(String str) {
        boolean z6 = false;
        for (String str2 : a.a()) {
            String str3 = str2 + str;
            if (new File(str2, str).exists()) {
                c6.a.f(str3 + " binary detected!");
                z6 = true;
            }
        }
        return z6;
    }

    public boolean e() {
        String str;
        String strReplace;
        String[] strArr;
        String[] strArrO = o();
        int i10 = 0;
        if (strArrO == null) {
            return false;
        }
        int i11 = Build.VERSION.SDK_INT;
        int length = strArrO.length;
        int i12 = 0;
        boolean z6 = false;
        while (i12 < length) {
            String str2 = strArrO[i12];
            String[] strArrSplit = str2.split(" ");
            int i13 = 23;
            if ((i11 <= 23 && strArrSplit.length < 4) || (i11 > 23 && strArrSplit.length < 6)) {
                c6.a.b("Error formatting mount line: " + str2);
            } else {
                if (i11 > 23) {
                    str = strArrSplit[2];
                    strReplace = strArrSplit[5];
                } else {
                    str = strArrSplit[1];
                    strReplace = strArrSplit[3];
                }
                String[] strArr2 = a.pathsThatShouldNotBeWritable;
                int length2 = strArr2.length;
                int i14 = i10;
                while (i14 < length2) {
                    String str3 = strArr2[i14];
                    if (str.equalsIgnoreCase(str3)) {
                        if (Build.VERSION.SDK_INT > i13) {
                            strReplace = strReplace.replace("(", "").replace(")", "");
                        }
                        String[] strArrSplit2 = strReplace.split(",");
                        int length3 = strArrSplit2.length;
                        int i15 = 0;
                        while (true) {
                            if (i15 < length3) {
                                strArr = strArrO;
                                if (strArrSplit2[i15].equalsIgnoreCase("rw")) {
                                    c6.a.f(str3 + " path is mounted with rw permissions! " + str2);
                                    z6 = true;
                                    break;
                                }
                                i15++;
                                strArrO = strArr;
                            } else {
                                strArr = strArrO;
                                break;
                                break;
                            }
                        }
                    } else {
                        strArr = strArrO;
                        break;
                    }
                    i14++;
                    strArrO = strArr;
                    i13 = 23;
                }
            }
            i12++;
            strArrO = strArrO;
            i10 = 0;
        }
        return z6;
    }

    public boolean f() {
        if (!a()) {
            c6.a.b("We could not load the native library to test for root");
            return false;
        }
        String[] strArrA = a.a();
        int length = strArrA.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = strArrA[i10] + "su";
        }
        RootBeerNative rootBeerNative = new RootBeerNative();
        try {
            rootBeerNative.setLogDebugMessages(this.loggingEnabled);
            if (rootBeerNative.checkForRoot(strArr) <= 0) {
                return false;
            }
            return true;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        }
    }

    public boolean n() {
        if (!j() && !h() && !b("su") && !c() && !e() && !l() && !g() && !f() && !d()) {
            return false;
        }
        return true;
    }
}
