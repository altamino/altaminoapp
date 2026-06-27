package com.google.android.play.core.splitcompat;

import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.bj;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class e {
    private static final Pattern a = Pattern.compile("lib/([^/]+)/(.*\\.so)$");
    private final b b;

    e(b bVar) throws IOException {
        this.b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set<File> a(Set<j> set, p pVar, ZipFile zipFile) throws IOException {
        HashSet hashSet = new HashSet();
        a(pVar, set, new i(hashSet, pVar, zipFile));
        return hashSet;
    }

    private static void a(p pVar, h hVar) throws IOException {
        ZipFile zipFile;
        String str;
        try {
            zipFile = new ZipFile(pVar.b());
        } catch (IOException e) {
            e = e;
            zipFile = null;
        }
        try {
            String strA = pVar.a();
            HashMap map = new HashMap();
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                Matcher matcher = a.matcher(zipEntryNextElement.getName());
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' for ABI '%s'", strA, strGroup2, strGroup));
                    Set hashSet = (Set) map.get(strGroup);
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        map.put(strGroup, hashSet);
                    }
                    hashSet.add(new j(zipEntryNextElement, strGroup2));
                }
            }
            HashMap map2 = new HashMap();
            for (String str2 : Build.SUPPORTED_ABIS) {
                if (map.containsKey(str2)) {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI", str2));
                    for (j jVar : (Set) map.get(str2)) {
                        if (map2.containsKey(jVar.a)) {
                            str = String.format("NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI", jVar.a, str2);
                        } else {
                            map2.put(jVar.a, jVar);
                            str = String.format("NativeLibraryExtractor: using library %s for ABI %s", jVar.a, str2);
                        }
                        Log.d("SplitCompat", str);
                    }
                } else {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are no native libraries for supported ABI %s", str2));
                }
            }
            hVar.a(zipFile, new HashSet(map2.values()));
            zipFile.close();
        } catch (IOException e2) {
            e = e2;
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException e3) {
                    bj.a(e, e3);
                }
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(p pVar, Set<j> set, k kVar) throws IOException {
        for (j jVar : set) {
            File fileA = this.b.a(pVar.a(), jVar.a);
            kVar.a(jVar, fileA, fileA.exists() && fileA.length() == jVar.b.getSize());
        }
    }

    private static /* synthetic */ void a(Throwable th, FileOutputStream fileOutputStream) throws IOException {
        if (th == null) {
            fileOutputStream.close();
            return;
        }
        try {
            fileOutputStream.close();
        } catch (Throwable th2) {
            bj.a(th, th2);
        }
    }

    private static /* synthetic */ void a(Throwable th, InputStream inputStream) throws IOException {
        if (th == null) {
            inputStream.close();
            return;
        }
        try {
            inputStream.close();
        } catch (Throwable th2) {
            bj.a(th, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ZipFile zipFile, ZipEntry zipEntry, File file) throws IOException {
        byte[] bArr = new byte[4096];
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            while (true) {
                try {
                    int i = inputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, i);
                    }
                } finally {
                }
            }
            a((Throwable) null, fileOutputStream);
            if (inputStream != null) {
                a((Throwable) null, inputStream);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    a(th, inputStream);
                }
                throw th2;
            }
        }
    }

    final Set<File> a() throws IOException {
        boolean z;
        Log.d("SplitCompat", "NativeLibraryExtractor: synchronizing native libraries");
        Set<p> setD = this.b.d();
        for (String str : this.b.e()) {
            Iterator<p> it = setD.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (it.next().a().equals(str)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                Log.i("SplitCompat", String.format("NativeLibraryExtractor: extracted split '%s' has no corresponding split; deleting", str));
                this.b.d(str);
            }
        }
        HashSet hashSet = new HashSet();
        for (p pVar : setD) {
            HashSet hashSet2 = new HashSet();
            a(pVar, new f(this, hashSet2, pVar));
            for (File file : this.b.e(pVar.a())) {
                if (!hashSet2.contains(file)) {
                    Log.i("SplitCompat", String.format("NativeLibraryExtractor: file '%s' found in split '%s' that is not in the split file '%s'; removing", file.getAbsolutePath(), pVar.a(), pVar.b().getAbsolutePath()));
                    this.b.b(file);
                }
            }
            hashSet.addAll(hashSet2);
        }
        return hashSet;
    }

    final Set<File> a(p pVar) throws IOException {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        HashSet hashSet = new HashSet();
        a(pVar, new d(this, pVar, hashSet, atomicBoolean));
        if (atomicBoolean.get()) {
            return hashSet;
        }
        return null;
    }
}
