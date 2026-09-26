package coil.request;

import android.view.View;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements d {

    @NotNull
    private volatile v0<? extends i> job;

    @NotNull
    private final View view;

    public void a(@NotNull v0<? extends i> v0Var) {
        this.job = v0Var;
    }

    public r(@NotNull View view, @NotNull v0<? extends i> v0Var) {
        this.view = view;
        this.job = v0Var;
    }
}
