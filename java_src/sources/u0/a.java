package u0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.data.j;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.model.m;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a implements n<com.bumptech.glide.load.model.g, InputStream> {
    public static final com.bumptech.glide.load.h<Integer> TIMEOUT = com.bumptech.glide.load.h.f("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    @Nullable
    private final m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> modelCache;

    /* JADX INFO: renamed from: u0.a$a, reason: collision with other inner class name */
    public static class C0499a implements o<com.bumptech.glide.load.model.g, InputStream> {
        private final m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> modelCache = new m<>(500);

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<com.bumptech.glide.load.model.g, InputStream> b(r rVar) {
            return new a(this.modelCache);
        }
    }

    public a() {
        this(null);
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull com.bumptech.glide.load.model.g gVar) {
        return true;
    }

    public a(@Nullable m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> mVar) {
        this.modelCache = mVar;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(@NonNull com.bumptech.glide.load.model.g gVar, int i10, int i11, @NonNull i iVar) {
        m<com.bumptech.glide.load.model.g, com.bumptech.glide.load.model.g> mVar = this.modelCache;
        if (mVar != null) {
            com.bumptech.glide.load.model.g gVarA = mVar.a(gVar, 0, 0);
            if (gVarA == null) {
                this.modelCache.b(gVar, 0, 0, gVar);
            } else {
                gVar = gVarA;
            }
        }
        return new n.a<>(gVar, new j(gVar, ((Integer) iVar.c(TIMEOUT)).intValue()));
    }
}
