package kotlin.io;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class q {
    public static final long a(@NotNull Reader reader, @NotNull Writer out, int i10) throws IOException {
        t.j(reader, "<this>");
        t.j(out, "out");
        char[] cArr = new char[i10];
        int i11 = reader.read(cArr);
        long j6 = 0;
        while (i11 >= 0) {
            out.write(cArr, 0, i11);
            j6 += (long) i11;
            i11 = reader.read(cArr);
        }
        return j6;
    }

    public static /* synthetic */ long b(Reader reader, Writer writer, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        return a(reader, writer, i10);
    }

    public static final void c(@NotNull Reader reader, @NotNull e8.l<? super String, l0> action) {
        t.j(reader, "<this>");
        t.j(action, "action");
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            Iterator<String> it = d(bufferedReader).iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
            l0 l0Var = l0.INSTANCE;
            c.a(bufferedReader, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(bufferedReader, th);
                throw th2;
            }
        }
    }

    @NotNull
    public static final kotlin.sequences.g<String> d(@NotNull BufferedReader bufferedReader) {
        t.j(bufferedReader, "<this>");
        return kotlin.sequences.m.d(new o(bufferedReader));
    }

    @NotNull
    public static final byte[] e(@NotNull URL url) throws IOException {
        t.j(url, "<this>");
        InputStream inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
        try {
            t.g(inputStreamOpenStream);
            byte[] bArrC = b.c(inputStreamOpenStream);
            c.a(inputStreamOpenStream, null);
            return bArrC;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(inputStreamOpenStream, th);
                throw th2;
            }
        }
    }

    @NotNull
    public static final String f(@NotNull Reader reader) {
        t.j(reader, "<this>");
        StringWriter stringWriter = new StringWriter();
        b(reader, stringWriter, 0, 2, null);
        String string = stringWriter.toString();
        t.i(string, "toString(...)");
        return string;
    }
}
