package e0;

import android.net.Uri;
import coil.request.m;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements d<String, Uri> {
    @Override // e0.d
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Uri a(@NotNull String str, @NotNull m mVar) {
        Uri uri = Uri.parse(str);
        t.i(uri, "parse(this)");
        return uri;
    }
}
