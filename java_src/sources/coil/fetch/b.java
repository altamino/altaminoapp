package coil.fetch;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class b implements i {

    @NotNull
    private final Bitmap data;

    @NotNull
    private final coil.request.m options;

    public static final class a implements i.a<Bitmap> {
        @Override // coil.fetch.i.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull Bitmap bitmap, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            return new b(bitmap, mVar);
        }
    }

    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) {
        return new g(new BitmapDrawable(this.options.g().getResources(), this.data), false, coil.decode.f.MEMORY);
    }

    public b(@NotNull Bitmap bitmap, @NotNull coil.request.m mVar) {
        this.data = bitmap;
        this.options = mVar;
    }
}
