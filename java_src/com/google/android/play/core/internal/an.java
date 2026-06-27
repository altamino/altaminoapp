package com.google.android.play.core.internal;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
final class an implements af {
    an() {
    }

    public static void a(ClassLoader classLoader, Set<File> set, ao aoVar) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator<File> it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getParentFile());
        }
        Object objA = ah.a(classLoader);
        List list = (List) bb.a(objA, "nativeLibraryDirectories", List.class).a();
        hashSet.removeAll(list);
        list.addAll(hashSet);
        ArrayList arrayList = new ArrayList();
        Object[] objArrA = aoVar.a(objA, new ArrayList<>(hashSet), null, arrayList);
        if (arrayList.isEmpty()) {
            bb.b(objA, "nativeLibraryPathElements", Object.class).a(objArrA);
            return;
        }
        aa aaVar = new aa("Error in makePathElements");
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            bj.a(aaVar, (IOException) obj);
        }
        throw aaVar;
    }

    public static boolean a(ClassLoader classLoader, File file, File file2, boolean z, String str) {
        return ah.a(classLoader, file, file2, z, new am(), str, new aj());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object[] b(Object obj, List<File> list, File file, List<IOException> list2) {
        return (Object[]) bb.a(obj, "makePathElements", Object[].class, List.class, list, File.class, file, List.class, list2);
    }

    @Override // com.google.android.play.core.internal.af
    public final void a(ClassLoader classLoader, Set<File> set) {
        a(classLoader, set, new ap());
    }

    @Override // com.google.android.play.core.internal.af
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z) {
        return a(classLoader, file, file2, z, "zip");
    }
}
