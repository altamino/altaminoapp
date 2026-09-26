package u0;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class b implements n<Uri, InputStream> {
    private static final Set<String> SCHEMES = Collections.unmodifiableSet(new HashSet(Arrays.asList(ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS)));
    private final n<com.bumptech.glide.load.model.g, InputStream> urlLoader;

    public static class a implements o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new b(rVar.d(com.bumptech.glide.load.model.g.class, InputStream.class));
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(@NonNull Uri uri, int i10, int i11, @NonNull i iVar) {
        return this.urlLoader.a(new com.bumptech.glide.load.model.g(uri.toString()), i10, i11, iVar);
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull Uri uri) {
        return SCHEMES.contains(uri.getScheme());
    }

    public b(n<com.bumptech.glide.load.model.g, InputStream> nVar) {
        this.urlLoader = nVar;
    }
}
