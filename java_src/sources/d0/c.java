package d0;

import android.net.Uri;
import coil.request.m;
import coil.util.i;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements b<Uri> {
    @Override // d0.b
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String a(@NotNull Uri uri, @NotNull m mVar) {
        if (t.e(uri.getScheme(), "android.resource")) {
            StringBuilder sb = new StringBuilder();
            sb.append(uri);
            sb.append('-');
            sb.append(i.m(mVar.g().getResources().getConfiguration()));
            return sb.toString();
        }
        return uri.toString();
    }
}
