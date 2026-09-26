package androidx.compose.material;

import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Stable
public final class ScaffoldState {

    @NotNull
    private final DrawerState drawerState;

    @NotNull
    private final SnackbarHostState snackbarHostState;

    @NotNull
    public final DrawerState a() {
        return this.drawerState;
    }

    @NotNull
    public final SnackbarHostState b() {
        return this.snackbarHostState;
    }

    public ScaffoldState(@NotNull DrawerState drawerState, @NotNull SnackbarHostState snackbarHostState) {
        t.j(drawerState, "drawerState");
        t.j(snackbarHostState, "snackbarHostState");
        this.drawerState = drawerState;
        this.snackbarHostState = snackbarHostState;
    }
}
