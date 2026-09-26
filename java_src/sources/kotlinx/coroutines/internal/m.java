package kotlinx.coroutines.internal;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class m {

    @NotNull
    public static final m INSTANCE = new m();

    @NotNull
    private static final String PREFIX = "META-INF/services/";

    private final <S> S a(String str, ClassLoader classLoader, Class<S> cls) throws ClassNotFoundException {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    private final List<String> f(BufferedReader bufferedReader) throws IOException {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return kotlin.collections.d0.U0(linkedHashSet);
            }
            String string = kotlin.text.u.b1(kotlin.text.u.V0(line, "#", null, 2, null)).toString();
            for (int i10 = 0; i10 < string.length(); i10++) {
                char cCharAt = string.charAt(i10);
                if (cCharAt != '.' && !Character.isJavaIdentifierPart(cCharAt)) {
                    throw new IllegalArgumentException(("Illegal service provider class name: " + string).toString());
                }
            }
            if (string.length() > 0) {
                linkedHashSet.add(string);
            }
        }
    }

    @NotNull
    public final <S> List<S> d(@NotNull Class<S> cls, @NotNull ClassLoader classLoader) {
        ArrayList list = Collections.list(classLoader.getResources(PREFIX + cls.getName()));
        kotlin.jvm.internal.t.i(list, "list(this)");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            kotlin.collections.a0.D(arrayList, INSTANCE.e((URL) it.next()));
        }
        Set setY0 = kotlin.collections.d0.Y0(arrayList);
        if (!(!setY0.isEmpty())) {
            throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.w.x(setY0, 10));
        Iterator it2 = setY0.iterator();
        while (it2.hasNext()) {
            arrayList2.add(INSTANCE.a((String) it2.next(), classLoader, cls));
        }
        return arrayList2;
    }

    private m() {
    }

    private final <S> List<S> b(Class<S> cls, ClassLoader classLoader) {
        try {
            return d(cls, classLoader);
        } catch (Throwable unused) {
            return kotlin.collections.d0.U0(ServiceLoader.load(cls, classLoader));
        }
    }

    private final List<String> e(URL url) throws IOException {
        String string = url.toString();
        if (kotlin.text.t.K(string, ArchiveStreamFactory.JAR, false, 2, null)) {
            String strU0 = kotlin.text.u.U0(kotlin.text.u.N0(string, "jar:file:", null, 2, null), '!', null, 2, null);
            String strN0 = kotlin.text.u.N0(string, "!/", null, 2, null);
            JarFile jarFile = new JarFile(strU0, false);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(strN0)), "UTF-8"));
                try {
                    List<String> listF = INSTANCE.f(bufferedReader);
                    kotlin.io.c.a(bufferedReader, null);
                    jarFile.close();
                    return listF;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        kotlin.io.c.a(bufferedReader, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    try {
                        jarFile.close();
                        throw th4;
                    } catch (Throwable th5) {
                        w7.f.a(th3, th5);
                        throw th3;
                    }
                }
            }
        }
        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(FirebasePerfUrlConnection.openStream(url)));
        try {
            List<String> listF2 = INSTANCE.f(bufferedReader2);
            kotlin.io.c.a(bufferedReader2, null);
            return listF2;
        } catch (Throwable th6) {
            try {
                throw th6;
            } catch (Throwable th7) {
                kotlin.io.c.a(bufferedReader2, th6);
                throw th7;
            }
        }
    }

    @NotNull
    public final List<w> c() {
        w wVar;
        if (!n.a()) {
            return b(w.class, w.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            w wVar2 = null;
            try {
                wVar = (w) w.class.cast(Class.forName("kotlinx.coroutines.android.AndroidDispatcherFactory", true, w.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused) {
                wVar = null;
            }
            if (wVar != null) {
                arrayList.add(wVar);
            }
            try {
                wVar2 = (w) w.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, w.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
            }
            if (wVar2 != null) {
                arrayList.add(wVar2);
                return arrayList;
            }
            return arrayList;
        } catch (Throwable unused3) {
            return b(w.class, w.class.getClassLoader());
        }
    }
}
