package coil.size;

import android.view.View;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class g<T extends View> implements l<T> {
    private final boolean subtractPadding;

    @NotNull
    private final T view;

    @Override // coil.size.l
    public boolean a() {
        return this.subtractPadding;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (t.e(getView(), gVar.getView()) && a() == gVar.a()) {
                return true;
            }
        }
        return false;
    }

    @Override // coil.size.l
    @NotNull
    public T getView() {
        return this.view;
    }

    public g(@NotNull T t5, boolean z6) {
        this.view = t5;
        this.subtractPadding = z6;
    }

    @Override // coil.size.j
    @Nullable
    public Object b(@NotNull kotlin.coroutines.d<? super i> dVar) {
        return l.a.h(this, dVar);
    }

    public int hashCode() {
        return (getView().hashCode() * 31) + androidx.compose.foundation.c.a(a());
    }
}
