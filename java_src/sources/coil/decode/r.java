package coil.decode;

import androidx.annotation.DrawableRes;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class r extends p.a {
    private final int density;

    @NotNull
    private final String packageName;
    private final int resId;

    public final int a() {
        return this.density;
    }

    public r(@NotNull String str, @DrawableRes int i10, int i11) {
        this.packageName = str;
        this.resId = i10;
        this.density = i11;
    }
}
