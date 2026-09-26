package kotlin.io;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
class l extends k {

    static final class a extends v implements e8.l<String, l0> {
        final /* synthetic */ ArrayList<String> $result;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ArrayList<String> arrayList) {
            super(1);
            this.$result = arrayList;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(String str) {
            invoke2(str);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull String it) {
            t.j(it, "it");
            this.$result.add(it);
        }
    }

    public static void c(@NotNull File file, @NotNull byte[] array) throws IOException {
        t.j(file, "<this>");
        t.j(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            fileOutputStream.write(array);
            l0 l0Var = l0.INSTANCE;
            c.a(fileOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(fileOutputStream, th);
                throw th2;
            }
        }
    }

    public static final void d(@NotNull File file, @NotNull Charset charset, @NotNull e8.l<? super String, l0> action) {
        t.j(file, "<this>");
        t.j(charset, "charset");
        t.j(action, "action");
        q.c(new BufferedReader(new InputStreamReader(new FileInputStream(file), charset)), action);
    }

    @NotNull
    public static byte[] e(@NotNull File file) throws IOException {
        t.j(file, "<this>");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i10 = (int) length;
            byte[] bArrD = new byte[i10];
            int i11 = i10;
            int i12 = 0;
            while (i11 > 0) {
                int i13 = fileInputStream.read(bArrD, i12, i11);
                if (i13 < 0) {
                    break;
                }
                i11 -= i13;
                i12 += i13;
            }
            if (i11 > 0) {
                bArrD = Arrays.copyOf(bArrD, i12);
                t.i(bArrD, "copyOf(...)");
            } else {
                int i14 = fileInputStream.read();
                if (i14 != -1) {
                    e eVar = new e(8193);
                    eVar.write(i14);
                    b.b(fileInputStream, eVar, 0, 2, null);
                    int size = eVar.size() + i10;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                    }
                    byte[] bArrD2 = eVar.d();
                    byte[] bArrCopyOf = Arrays.copyOf(bArrD, size);
                    t.i(bArrCopyOf, "copyOf(...)");
                    bArrD = kotlin.collections.o.d(bArrD2, bArrCopyOf, i10, 0, eVar.size());
                }
            }
            c.a(fileInputStream, null);
            return bArrD;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(fileInputStream, th);
                throw th2;
            }
        }
    }

    @NotNull
    public static final List<String> f(@NotNull File file, @NotNull Charset charset) {
        t.j(file, "<this>");
        t.j(charset, "charset");
        ArrayList arrayList = new ArrayList();
        d(file, charset, new a(arrayList));
        return arrayList;
    }

    public static /* synthetic */ List g(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        return f(file, charset);
    }

    @NotNull
    public static String h(@NotNull File file, @NotNull Charset charset) throws IOException {
        t.j(file, "<this>");
        t.j(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String strF = q.f(inputStreamReader);
            c.a(inputStreamReader, null);
            return strF;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(inputStreamReader, th);
                throw th2;
            }
        }
    }

    public static /* synthetic */ String i(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        return h(file, charset);
    }

    public static void j(@NotNull File file, @NotNull byte[] array) throws IOException {
        t.j(file, "<this>");
        t.j(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(array);
            l0 l0Var = l0.INSTANCE;
            c.a(fileOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(fileOutputStream, th);
                throw th2;
            }
        }
    }

    public static void k(@NotNull File file, @NotNull String text, @NotNull Charset charset) throws IOException {
        t.j(file, "<this>");
        t.j(text, "text");
        t.j(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        t.i(bytes, "getBytes(...)");
        j(file, bytes);
    }

    public static /* synthetic */ void l(File file, String str, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        k(file, str, charset);
    }
}
