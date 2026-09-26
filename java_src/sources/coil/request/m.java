package coil.request;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;
import kotlin.jvm.internal.t;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class m {
    private final boolean allowInexactSize;
    private final boolean allowRgb565;

    @Nullable
    private final ColorSpace colorSpace;

    @NotNull
    private final Bitmap.Config config;

    @NotNull
    private final Context context;

    @Nullable
    private final String diskCacheKey;

    @NotNull
    private final a diskCachePolicy;

    @NotNull
    private final Headers headers;

    @NotNull
    private final a memoryCachePolicy;

    @NotNull
    private final a networkCachePolicy;

    @NotNull
    private final n parameters;
    private final boolean premultipliedAlpha;

    @NotNull
    private final coil.size.h scale;

    @NotNull
    private final coil.size.i size;

    @NotNull
    private final q tags;

    public m(@NotNull Context context, @NotNull Bitmap.Config config, @Nullable ColorSpace colorSpace, @NotNull coil.size.i iVar, @NotNull coil.size.h hVar, boolean z6, boolean z10, boolean z11, @Nullable String str, @NotNull Headers headers, @NotNull q qVar, @NotNull n nVar, @NotNull a aVar, @NotNull a aVar2, @NotNull a aVar3) {
        this.context = context;
        this.config = config;
        this.colorSpace = colorSpace;
        this.size = iVar;
        this.scale = hVar;
        this.allowInexactSize = z6;
        this.allowRgb565 = z10;
        this.premultipliedAlpha = z11;
        this.diskCacheKey = str;
        this.headers = headers;
        this.tags = qVar;
        this.parameters = nVar;
        this.memoryCachePolicy = aVar;
        this.diskCachePolicy = aVar2;
        this.networkCachePolicy = aVar3;
    }

    @NotNull
    public final m a(@NotNull Context context, @NotNull Bitmap.Config config, @Nullable ColorSpace colorSpace, @NotNull coil.size.i iVar, @NotNull coil.size.h hVar, boolean z6, boolean z10, boolean z11, @Nullable String str, @NotNull Headers headers, @NotNull q qVar, @NotNull n nVar, @NotNull a aVar, @NotNull a aVar2, @NotNull a aVar3) {
        return new m(context, config, colorSpace, iVar, hVar, z6, z10, z11, str, headers, qVar, nVar, aVar, aVar2, aVar3);
    }

    public final boolean c() {
        return this.allowInexactSize;
    }

    public final boolean d() {
        return this.allowRgb565;
    }

    @Nullable
    public final ColorSpace e() {
        return this.colorSpace;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (t.e(this.context, mVar.context) && this.config == mVar.config && ((Build.VERSION.SDK_INT < 26 || t.e(this.colorSpace, mVar.colorSpace)) && t.e(this.size, mVar.size) && this.scale == mVar.scale && this.allowInexactSize == mVar.allowInexactSize && this.allowRgb565 == mVar.allowRgb565 && this.premultipliedAlpha == mVar.premultipliedAlpha && t.e(this.diskCacheKey, mVar.diskCacheKey) && t.e(this.headers, mVar.headers) && t.e(this.tags, mVar.tags) && t.e(this.parameters, mVar.parameters) && this.memoryCachePolicy == mVar.memoryCachePolicy && this.diskCachePolicy == mVar.diskCachePolicy && this.networkCachePolicy == mVar.networkCachePolicy)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final Bitmap.Config f() {
        return this.config;
    }

    @NotNull
    public final Context g() {
        return this.context;
    }

    @Nullable
    public final String h() {
        return this.diskCacheKey;
    }

    @NotNull
    public final a i() {
        return this.diskCachePolicy;
    }

    @NotNull
    public final Headers j() {
        return this.headers;
    }

    @NotNull
    public final a k() {
        return this.networkCachePolicy;
    }

    public final boolean l() {
        return this.premultipliedAlpha;
    }

    @NotNull
    public final coil.size.h m() {
        return this.scale;
    }

    @NotNull
    public final coil.size.i n() {
        return this.size;
    }

    @NotNull
    public final q o() {
        return this.tags;
    }

    public /* synthetic */ m(Context context, Bitmap.Config config, ColorSpace colorSpace, coil.size.i iVar, coil.size.h hVar, boolean z6, boolean z10, boolean z11, String str, Headers headers, q qVar, n nVar, a aVar, a aVar2, a aVar3, int i10, kotlin.jvm.internal.k kVar) {
        this(context, (i10 & 2) != 0 ? Bitmap.Config.ARGB_8888 : config, (i10 & 4) != 0 ? coil.util.i.l() : colorSpace, (i10 & 8) != 0 ? coil.size.i.ORIGINAL : iVar, (i10 & 16) != 0 ? coil.size.h.FIT : hVar, (i10 & 32) != 0 ? false : z6, (i10 & 64) == 0 ? z10 : false, (i10 & 128) != 0 ? true : z11, (i10 & 256) != 0 ? null : str, (i10 & 512) != 0 ? coil.util.i.g() : headers, (i10 & 1024) != 0 ? q.EMPTY : qVar, (i10 & 2048) != 0 ? n.EMPTY : nVar, (i10 & 4096) != 0 ? a.ENABLED : aVar, (i10 & 8192) != 0 ? a.ENABLED : aVar2, (i10 & 16384) != 0 ? a.ENABLED : aVar3);
    }

    public int hashCode() {
        int iHashCode = ((this.context.hashCode() * 31) + this.config.hashCode()) * 31;
        ColorSpace colorSpace = this.colorSpace;
        int iHashCode2 = (((((((((((iHashCode + (colorSpace != null ? colorSpace.hashCode() : 0)) * 31) + this.size.hashCode()) * 31) + this.scale.hashCode()) * 31) + androidx.compose.foundation.c.a(this.allowInexactSize)) * 31) + androidx.compose.foundation.c.a(this.allowRgb565)) * 31) + androidx.compose.foundation.c.a(this.premultipliedAlpha)) * 31;
        String str = this.diskCacheKey;
        return ((((((((((((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.headers.hashCode()) * 31) + this.tags.hashCode()) * 31) + this.parameters.hashCode()) * 31) + this.memoryCachePolicy.hashCode()) * 31) + this.diskCachePolicy.hashCode()) * 31) + this.networkCachePolicy.hashCode();
    }
}
