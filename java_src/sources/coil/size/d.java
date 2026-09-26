package coil.size;

import android.content.Context;
import android.util.DisplayMetrics;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class d implements j {

    @NotNull
    private final Context context;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && t.e(this.context, ((d) obj).context);
    }

    @Override // coil.size.j
    @Nullable
    public Object b(@NotNull kotlin.coroutines.d<? super i> dVar) {
        DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
        c.a aVarA = a.a(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        return new i(aVarA, aVarA);
    }

    public int hashCode() {
        return this.context.hashCode();
    }

    public d(@NotNull Context context) {
        this.context = context;
    }
}
