package coil.fetch;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import coil.decode.q;
import kotlin.collections.d0;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements i {

    @NotNull
    private final Uri data;

    @NotNull
    private final coil.request.m options;

    /* JADX INFO: renamed from: coil.fetch.a$a, reason: collision with other inner class name */
    public static final class C0101a implements i.a<Uri> {
        @Override // coil.fetch.i.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull Uri uri, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            if (!coil.util.i.s(uri)) {
                return null;
            }
            return new a(uri, mVar);
        }
    }

    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) {
        String strT0 = d0.t0(d0.b0(this.data.getPathSegments(), 1), com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, null, null, 0, null, null, 62, null);
        return new m(q.b(Okio.buffer(Okio.source(this.options.g().getAssets().open(strT0))), this.options.g(), new coil.decode.a(strT0)), coil.util.i.k(MimeTypeMap.getSingleton(), strT0), coil.decode.f.DISK);
    }

    public a(@NotNull Uri uri, @NotNull coil.request.m mVar) {
        this.data = uri;
        this.options = mVar;
    }
}
