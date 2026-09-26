package coil.fetch;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.TypedValue;
import android.webkit.MimeTypeMap;
import coil.decode.q;
import coil.decode.r;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.text.s;
import kotlin.text.u;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class l implements i {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final String MIME_TYPE_XML = "text/xml";

    @NotNull
    private final Uri data;

    @NotNull
    private final coil.request.m options;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements i.a<Uri> {
        private final boolean c(Uri uri) {
            return t.e(uri.getScheme(), "android.resource");
        }

        @Override // coil.fetch.i.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull Uri uri, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            if (!c(uri)) {
                return null;
            }
            return new l(uri, mVar);
        }
    }

    private final Void b(Uri uri) {
        throw new IllegalStateException("Invalid android.resource URI: " + uri);
    }

    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) {
        Integer numM;
        String authority = this.data.getAuthority();
        if (authority != null) {
            if (!(!kotlin.text.t.z(authority))) {
                authority = null;
            }
            if (authority != null) {
                String str = (String) d0.w0(this.data.getPathSegments());
                if (str == null || (numM = s.m(str)) == null) {
                    b(this.data);
                    throw new w7.i();
                }
                int iIntValue = numM.intValue();
                Context contextG = this.options.g();
                Resources resources = t.e(authority, contextG.getPackageName()) ? contextG.getResources() : contextG.getPackageManager().getResourcesForApplication(authority);
                TypedValue typedValue = new TypedValue();
                resources.getValue(iIntValue, typedValue, true);
                CharSequence charSequence = typedValue.string;
                String strK = coil.util.i.k(MimeTypeMap.getSingleton(), charSequence.subSequence(u.h0(charSequence, '/', 0, false, 6, null), charSequence.length()).toString());
                if (!t.e(strK, MIME_TYPE_XML)) {
                    TypedValue typedValue2 = new TypedValue();
                    return new m(q.b(Okio.buffer(Okio.source(resources.openRawResource(iIntValue, typedValue2))), contextG, new r(authority, iIntValue, typedValue2.density)), strK, coil.decode.f.DISK);
                }
                Drawable drawableA = t.e(authority, contextG.getPackageName()) ? coil.util.d.a(contextG, iIntValue) : coil.util.d.d(contextG, resources, iIntValue);
                boolean zW = coil.util.i.w(drawableA);
                if (zW) {
                    drawableA = new BitmapDrawable(contextG.getResources(), coil.util.k.INSTANCE.a(drawableA, this.options.f(), this.options.n(), this.options.m(), this.options.c()));
                }
                return new g(drawableA, zW, coil.decode.f.DISK);
            }
        }
        b(this.data);
        throw new w7.i();
    }

    public l(@NotNull Uri uri, @NotNull coil.request.m mVar) {
        this.data = uri;
        this.options = mVar;
    }
}
