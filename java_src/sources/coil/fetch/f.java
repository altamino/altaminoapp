package coil.fetch;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class f implements i {

    @NotNull
    private final Drawable data;

    @NotNull
    private final coil.request.m options;

    public static final class a implements i.a<Drawable> {
        @Override // coil.fetch.i.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull Drawable drawable, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            return new f(drawable, mVar);
        }
    }

    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) {
        Drawable bitmapDrawable;
        boolean zW = coil.util.i.w(this.data);
        if (zW) {
            bitmapDrawable = new BitmapDrawable(this.options.g().getResources(), coil.util.k.INSTANCE.a(this.data, this.options.f(), this.options.n(), this.options.m(), this.options.c()));
        } else {
            bitmapDrawable = this.data;
        }
        return new g(bitmapDrawable, zW, coil.decode.f.MEMORY);
    }

    public f(@NotNull Drawable drawable, @NotNull coil.request.m mVar) {
        this.data = drawable;
        this.options = mVar;
    }
}
