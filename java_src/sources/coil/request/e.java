package coil.request;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends i {

    @Nullable
    private final Drawable drawable;

    @NotNull
    private final h request;

    @NotNull
    private final Throwable throwable;

    public e(@Nullable Drawable drawable, @NotNull h hVar, @NotNull Throwable th) {
        super(null);
        this.drawable = drawable;
        this.request = hVar;
        this.throwable = th;
    }

    @Override // coil.request.i
    @Nullable
    public Drawable a() {
        return this.drawable;
    }

    @Override // coil.request.i
    @NotNull
    public h b() {
        return this.request;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (t.e(a(), eVar.a()) && t.e(b(), eVar.b()) && t.e(this.throwable, eVar.throwable)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode;
        Drawable drawableA = a();
        if (drawableA != null) {
            iHashCode = drawableA.hashCode();
        } else {
            iHashCode = 0;
        }
        return (((iHashCode * 31) + b().hashCode()) * 31) + this.throwable.hashCode();
    }
}
