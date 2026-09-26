package e0;

import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import coil.request.m;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class f implements d<Uri, Uri> {
    private final boolean b(Uri uri) {
        String authority;
        if (t.e(uri.getScheme(), "android.resource") && (authority = uri.getAuthority()) != null && !kotlin.text.t.z(authority) && uri.getPathSegments().size() == 2) {
            return true;
        }
        return false;
    }

    @Override // e0.d
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Uri a(@NotNull Uri uri, @NotNull m mVar) throws PackageManager.NameNotFoundException {
        if (!b(uri)) {
            return null;
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            authority = "";
        }
        Resources resourcesForApplication = mVar.g().getPackageManager().getResourcesForApplication(authority);
        List<String> pathSegments = uri.getPathSegments();
        int identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        if (identifier != 0) {
            Uri uri2 = Uri.parse("android.resource://" + authority + '/' + identifier);
            t.i(uri2, "parse(this)");
            return uri2;
        }
        throw new IllegalStateException(("Invalid android.resource URI: " + uri).toString());
    }
}
