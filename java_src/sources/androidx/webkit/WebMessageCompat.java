package androidx.webkit;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class WebMessageCompat {
    public static final int TYPE_ARRAY_BUFFER = 1;
    public static final int TYPE_STRING = 0;

    @Nullable
    private final byte[] mArrayBuffer;

    @Nullable
    private final WebMessagePortCompat[] mPorts;

    @Nullable
    private final String mString;
    private final int mType;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface Type {
    }

    public WebMessageCompat(@Nullable String str) {
        this(str, (WebMessagePortCompat[]) null);
    }

    @NonNull
    private String f(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? "Unknown" : "ArrayBuffer";
        }
        return "String";
    }

    @NonNull
    public byte[] b() {
        a(1);
        Objects.requireNonNull(this.mArrayBuffer);
        return this.mArrayBuffer;
    }

    @Nullable
    public String c() {
        a(0);
        return this.mString;
    }

    @Nullable
    public WebMessagePortCompat[] d() {
        return this.mPorts;
    }

    public int e() {
        return this.mType;
    }

    public WebMessageCompat(@Nullable String str, @Nullable WebMessagePortCompat[] webMessagePortCompatArr) {
        this.mString = str;
        this.mArrayBuffer = null;
        this.mPorts = webMessagePortCompatArr;
        this.mType = 0;
    }

    private void a(int i10) {
        if (i10 == this.mType) {
            return;
        }
        throw new IllegalStateException("Wrong data accessor type detected. " + f(this.mType) + " expected, but got " + f(i10));
    }

    public WebMessageCompat(@NonNull byte[] bArr) {
        this(bArr, (WebMessagePortCompat[]) null);
    }

    public WebMessageCompat(@NonNull byte[] bArr, @Nullable WebMessagePortCompat[] webMessagePortCompatArr) {
        Objects.requireNonNull(bArr);
        this.mArrayBuffer = bArr;
        this.mString = null;
        this.mPorts = webMessagePortCompatArr;
        this.mType = 1;
    }
}
