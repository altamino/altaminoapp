package com.google.android.play.core.internal;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
final class ah implements af {
    ah() {
    }

    static Object a(ClassLoader classLoader) {
        return bb.a(classLoader, "pathList", Object.class).a();
    }

    static boolean a(ClassLoader classLoader, File file, File file2, boolean z, al alVar, String str, ai aiVar) throws IllegalAccessException, IllegalArgumentException {
        ArrayList<IOException> arrayList = new ArrayList<>();
        Object objA = a(classLoader);
        ay ayVarB = bb.b(objA, "dexElements", Object.class);
        List listAsList = Arrays.asList((Object[]) ayVarB.a());
        ArrayList arrayList2 = new ArrayList();
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList2.add((File) bb.a(it.next(), str, File.class).a());
        }
        if (arrayList2.contains(file2)) {
            return true;
        }
        int i = 0;
        if (!z && !aiVar.a(objA, file2, file)) {
            String strValueOf = String.valueOf(file2.getPath());
            Log.w("SplitCompat", strValueOf.length() != 0 ? "Should be optimized ".concat(strValueOf) : new String("Should be optimized "));
            return false;
        }
        ayVarB.a(alVar.a(objA, new ArrayList<>(Collections.singleton(file2)), file, arrayList));
        if (arrayList.isEmpty()) {
            return true;
        }
        aa aaVar = new aa("DexPathList.makeDexElement failed");
        int size = arrayList.size();
        while (i < size) {
            IOException iOException = arrayList.get(i);
            i++;
            IOException iOException2 = iOException;
            Log.e("SplitCompat", "DexPathList.makeDexElement failed", iOException2);
            bj.a(aaVar, iOException2);
        }
        bb.b(objA, "dexElementsSuppressedExceptions", IOException.class).a(arrayList);
        throw aaVar;
    }

    static void b(ClassLoader classLoader, Set<File> set) throws IllegalAccessException, IllegalArgumentException {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (File file : set) {
            String strValueOf = String.valueOf(file.getParentFile().getAbsolutePath());
            Log.d("Splitcompat", strValueOf.length() != 0 ? "Adding native library parent directory: ".concat(strValueOf) : new String("Adding native library parent directory: "));
            hashSet.add(file.getParentFile());
        }
        ay ayVarB = bb.b(a(classLoader), "nativeLibraryDirectories", File.class);
        hashSet.removeAll(Arrays.asList((File[]) ayVarB.a()));
        int size = hashSet.size();
        StringBuilder sb = new StringBuilder(30);
        sb.append("Adding directories ");
        sb.append(size);
        Log.d("Splitcompat", sb.toString());
        ayVarB.a(hashSet);
    }

    @Override // com.google.android.play.core.internal.af
    public final void a(ClassLoader classLoader, Set<File> set) throws IllegalAccessException, IllegalArgumentException {
        b(classLoader, set);
    }

    @Override // com.google.android.play.core.internal.af
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z) {
        return a(classLoader, file, file2, z, new ag(), "zip", new aj());
    }
}
