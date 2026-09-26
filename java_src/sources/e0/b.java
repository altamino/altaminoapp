package e0;

import android.net.Uri;
import coil.request.m;
import coil.util.i;
import java.io.File;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements d<Uri, File> {
    private final boolean b(Uri uri) {
        if (i.s(uri)) {
            return false;
        }
        String scheme = uri.getScheme();
        if (scheme != null && !t.e(scheme, "file")) {
            return false;
        }
        String path = uri.getPath();
        if (path == null) {
            path = "";
        }
        if (!u.H0(path, '/', false, 2, null) || i.i(uri) == null) {
            return false;
        }
        return true;
    }

    @Override // e0.d
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public File a(@NotNull Uri uri, @NotNull m mVar) {
        if (!b(uri)) {
            return null;
        }
        if (uri.getScheme() != null) {
            uri = uri.buildUpon().scheme(null).build();
        }
        return new File(uri.toString());
    }
}
