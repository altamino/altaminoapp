package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.play.core.internal.bb;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class b {
    private final File a;
    private final long b;

    public b(Context context) throws PackageManager.NameNotFoundException, IOException {
        this(context.getFilesDir(), context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
    }

    private b(File file, long j) {
        String absolutePath = file.getAbsolutePath();
        StringBuilder sb = new StringBuilder(String.valueOf(absolutePath).length() + 82);
        sb.append("FileStorage: initializing (files directory = ");
        sb.append(absolutePath);
        sb.append(", versionCode = ");
        sb.append(j);
        sb.append(")");
        Log.d("SplitCompat", sb.toString());
        this.a = file;
        this.b = j;
    }

    private static File c(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                return file;
            }
            throw new IllegalArgumentException("File input must be directory when it exists.");
        }
        file.mkdirs();
        if (file.isDirectory()) {
            return file;
        }
        String strValueOf = String.valueOf(file.getAbsolutePath());
        throw new IOException(strValueOf.length() != 0 ? "Unable to create directory: ".concat(strValueOf) : new String("Unable to create directory: "));
    }

    private static void d(File file) throws IOException {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                d(file2);
            }
        }
        if (file.exists() && !file.delete()) {
            throw new IOException(String.format("Failed to delete '%s'", file.getAbsolutePath()));
        }
    }

    private final File f() throws IOException {
        File file = new File(g(), "verified-splits");
        c(file);
        return file;
    }

    private final File g() throws IOException {
        File file = new File(h(), Long.toString(this.b));
        c(file);
        return file;
    }

    private final File g(String str) throws IOException {
        File file = new File(i(), str);
        c(file);
        return file;
    }

    private final File h() throws IOException {
        File file = new File(this.a, "splitcompat");
        c(file);
        return file;
    }

    private static String h(String str) {
        String strValueOf = String.valueOf(str);
        return ".apk".length() != 0 ? strValueOf.concat(".apk") : new String(strValueOf);
    }

    private final File i() throws IOException {
        File file = new File(g(), "native-libraries");
        c(file);
        return file;
    }

    public final File a(File file) throws IOException {
        return new File(f(), file.getName());
    }

    public final File a(String str) throws IOException {
        return new File(c(), h(str));
    }

    public final File a(String str, String str2) throws IOException {
        return new File(g(str), str2);
    }

    public final void a() throws IOException {
        File fileH = h();
        String[] list = fileH.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(Long.toString(this.b))) {
                    File file = new File(fileH, str);
                    String strValueOf = String.valueOf(file);
                    long j = this.b;
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 118);
                    sb.append("FileStorage: removing directory for different version code (directory = ");
                    sb.append(strValueOf);
                    sb.append(", current version code = ");
                    sb.append(j);
                    sb.append(")");
                    Log.d("SplitCompat", sb.toString());
                    d(file);
                }
            }
        }
    }

    public final File b() throws IOException {
        return new File(g(), "lock.tmp");
    }

    public final File b(String str) throws IOException {
        return new File(f(), h(str));
    }

    final void b(File file) throws IOException {
        bb.a(file.getParentFile().getParentFile().equals(i()), "File to remove is not a native library");
        d(file);
    }

    public final File c() throws IOException {
        File file = new File(g(), "unverified-splits");
        c(file);
        return file;
    }

    public final File c(String str) throws IOException {
        File file = new File(g(), "dex");
        c(file);
        File file2 = new File(file, str);
        c(file2);
        return file2;
    }

    final Set<p> d() throws IOException {
        File fileF = f();
        HashSet hashSet = new HashSet();
        File[] fileArrListFiles = fileF.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isFile() && file.getName().endsWith(".apk")) {
                    hashSet.add(new p(file, file.getName().substring(0, r7.length() - 4)));
                }
            }
        }
        return hashSet;
    }

    final void d(String str) throws IOException {
        d(g(str));
    }

    final List<String> e() throws IOException {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = i().listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    final Set<File> e(String str) throws IOException {
        HashSet hashSet = new HashSet();
        File[] fileArrListFiles = g(str).listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isFile()) {
                    hashSet.add(file);
                }
            }
        }
        return hashSet;
    }

    final void f(String str) throws IOException {
        d(b(str));
    }
}
