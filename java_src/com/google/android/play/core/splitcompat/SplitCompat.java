package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.aa;
import com.google.android.play.core.internal.ab;
import com.google.android.play.core.internal.ac;
import com.google.android.play.core.internal.ae;
import com.google.android.play.core.internal.af;
import com.google.android.play.core.internal.bb;
import com.google.android.play.core.internal.bj;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public class SplitCompat {
    private static final AtomicReference<SplitCompat> a = new AtomicReference<>(null);
    private final b b;
    private final Set<String> c = new HashSet();

    private SplitCompat(Context context) {
        try {
            this.b = new b(context);
        } catch (PackageManager.NameNotFoundException | IOException e) {
            throw new aa("Failed to initialize FileStorage", e);
        }
    }

    public static boolean a() {
        return a.get() != null;
    }

    public static boolean a(Context context) {
        return a(context, true);
    }

    private static boolean a(Context context, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        boolean zCompareAndSet = a.compareAndSet(null, new SplitCompat(context));
        SplitCompat splitCompat = a.get();
        if (zCompareAndSet) {
            com.google.android.play.core.splitinstall.c.a(new ab(context, a.a(), new ac(context, splitCompat.b, new bb()), splitCompat.b, new com.google.android.play.core.splitinstall.h()));
            com.google.android.play.core.splitinstall.g.a(new l(splitCompat));
            a.a().execute(new n(context));
        }
        try {
            splitCompat.b(context, z);
            return true;
        } catch (Exception e) {
            Log.e("SplitCompat", "Error installing additional splits", e);
            return false;
        }
    }

    private static boolean a(p pVar) throws IOException {
        ZipFile zipFile = null;
        try {
            ZipFile zipFile2 = new ZipFile(pVar.b());
            try {
                boolean z = zipFile2.getEntry("classes.dex") != null;
                zipFile2.close();
                return z;
            } catch (IOException e) {
                e = e;
                zipFile = zipFile2;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException e2) {
                        bj.a(e, e2);
                    }
                }
                throw e;
            }
        } catch (IOException e3) {
            e = e3;
        }
    }

    private static List<String> b(Context context) throws PackageManager.NameNotFoundException, IOException {
        String packageName = context.getPackageName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            return packageInfo.splitNames == null ? new ArrayList() : Arrays.asList(packageInfo.splitNames);
        } catch (PackageManager.NameNotFoundException e) {
            throw new IOException(String.format("Cannot load data for application '%s'", packageName), e);
        }
    }

    private final synchronized void b(Context context, boolean z) throws IOException {
        if (z) {
            this.b.a();
        } else {
            a.a().execute(new m(this));
        }
        List<String> listB = b(context);
        Set<p> setD = this.b.d();
        HashSet hashSet = new HashSet();
        Iterator<p> it = setD.iterator();
        while (it.hasNext()) {
            String strA = it.next().a();
            if (listB.contains(strA)) {
                if (z) {
                    this.b.f(strA);
                } else {
                    hashSet.add(strA);
                }
                it.remove();
            }
        }
        if (!hashSet.isEmpty()) {
            a.a().execute(new o(this, hashSet));
        }
        HashSet hashSet2 = new HashSet();
        Iterator<p> it2 = setD.iterator();
        while (it2.hasNext()) {
            String strA2 = it2.next().a();
            if (!com.google.android.play.core.splitinstall.j.b(strA2)) {
                hashSet2.add(strA2);
            }
        }
        for (String str : listB) {
            if (!com.google.android.play.core.splitinstall.j.b(str)) {
                hashSet2.add(str);
            }
        }
        HashSet<p> hashSet3 = new HashSet(setD.size());
        for (p pVar : setD) {
            if (com.google.android.play.core.splitinstall.j.a(pVar.a()) || hashSet2.contains(com.google.android.play.core.splitinstall.j.c(pVar.a()))) {
                hashSet3.add(pVar);
            }
        }
        e eVar = new e(this.b);
        af afVarA = ae.a();
        ClassLoader classLoader = context.getClassLoader();
        if (z) {
            afVarA.a(classLoader, eVar.a());
        } else {
            Iterator it3 = hashSet3.iterator();
            while (it3.hasNext()) {
                Set<File> setA = eVar.a((p) it3.next());
                if (setA == null) {
                    it3.remove();
                } else {
                    afVarA.a(classLoader, setA);
                }
            }
        }
        HashSet hashSet4 = new HashSet();
        for (p pVar2 : hashSet3) {
            if (!a(pVar2) || afVarA.a(classLoader, this.b.c(pVar2.a()), pVar2.b(), z)) {
                hashSet4.add(pVar2.b());
            } else {
                String strValueOf = String.valueOf(pVar2.b());
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 24);
                sb.append("split was not installed ");
                sb.append(strValueOf);
                Log.w("SplitCompat", sb.toString());
            }
        }
        AssetManager assets = context.getAssets();
        Iterator it4 = hashSet4.iterator();
        while (it4.hasNext()) {
            int iIntValue = ((Integer) bb.a(assets, "addAssetPath", Integer.class, (Class<String>) String.class, ((File) it4.next()).getPath())).intValue();
            StringBuilder sb2 = new StringBuilder(39);
            sb2.append("addAssetPath completed with ");
            sb2.append(iIntValue);
            Log.d("SplitCompat", sb2.toString());
        }
        for (p pVar3 : hashSet3) {
            if (hashSet4.contains(pVar3.b())) {
                String strA3 = pVar3.a();
                StringBuilder sb3 = new StringBuilder(String.valueOf(strA3).length() + 30);
                sb3.append("Split '");
                sb3.append(strA3);
                sb3.append("' installation emulated");
                Log.d("SplitCompat", sb3.toString());
                this.c.add(pVar3.a());
            } else {
                String strA4 = pVar3.a();
                StringBuilder sb4 = new StringBuilder(String.valueOf(strA4).length() + 35);
                sb4.append("Split '");
                sb4.append(strA4);
                sb4.append("' installation not emulated.");
                Log.d("SplitCompat", sb4.toString());
            }
        }
    }

    public static boolean install(Context context) {
        return a(context, false);
    }
}
