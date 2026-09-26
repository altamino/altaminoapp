package u0;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class c implements n<Uri, InputStream> {
    private final Context context;

    public static class a implements o<Uri, InputStream> {
        private final Context context;

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new c(this.context);
        }

        public a(Context context) {
            this.context = context;
        }
    }

    public c(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(@NonNull Uri uri, int i10, int i11, @NonNull i iVar) {
        if (t0.b.d(i10, i11)) {
            return new n.a<>(new z0.b(uri), t0.c.f(this.context, uri));
        }
        return null;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull Uri uri) {
        return t0.b.a(uri);
    }
}
