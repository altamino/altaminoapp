package a0;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final c f35a = new c();

    @Nullable
    public final byte[] a(@Nullable File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(fileInputStream.available(), 64));
                byte[] bArr = new byte[4096];
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (i10 == -1) {
                        fileInputStream.close();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        kotlin.io.c.a(fileInputStream, null);
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                    return null;
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.c.a(fileInputStream, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public final boolean d(@Nullable File file, @Nullable byte[] bArr) {
        return e(file, bArr, false);
    }

    public final boolean e(@Nullable File file, @Nullable byte[] bArr, boolean z6) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                kotlin.io.c.a(fileOutputStream, null);
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.c.a(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            Log.w("file-write", "fail to write " + file, e);
            return false;
        }
    }

    private c() {
    }

    @Nullable
    public final String b(@Nullable File file) {
        byte[] bArrA = a(file);
        if (bArrA == null) {
            return null;
        }
        Charset UTF_8 = a.f26b;
        t.i(UTF_8, "UTF_8");
        return new String(bArrA, UTF_8);
    }

    public final boolean c(@Nullable File file, @NotNull String str) {
        t.j(str, "str");
        Charset UTF_8 = a.f26b;
        t.i(UTF_8, "UTF_8");
        byte[] bytes = str.getBytes(UTF_8);
        t.i(bytes, "getBytes(...)");
        return d(file, bytes);
    }
}
