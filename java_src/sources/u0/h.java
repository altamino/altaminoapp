package u0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes9.dex */
public class h implements n<URL, InputStream> {
    private final n<com.bumptech.glide.load.model.g, InputStream> glideUrlLoader;

    public static class a implements o<URL, InputStream> {
        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<URL, InputStream> b(r rVar) {
            return new h(rVar.d(com.bumptech.glide.load.model.g.class, InputStream.class));
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull URL url) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(@NonNull URL url, int i10, int i11, @NonNull i iVar) {
        return this.glideUrlLoader.a(new com.bumptech.glide.load.model.g(url), i10, i11, iVar);
    }

    public h(n<com.bumptech.glide.load.model.g, InputStream> nVar) {
        this.glideUrlLoader = nVar;
    }
}
