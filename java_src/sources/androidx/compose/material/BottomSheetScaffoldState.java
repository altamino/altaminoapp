package androidx.compose.material;

import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Stable
@ExperimentalMaterialApi
public final class BottomSheetScaffoldState {

    @NotNull
    private final BottomSheetState bottomSheetState;

    @NotNull
    private final DrawerState drawerState;

    @NotNull
    private final SnackbarHostState snackbarHostState;

    @NotNull
    public final BottomSheetState a() {
        return this.bottomSheetState;
    }

    @NotNull
    public final DrawerState b() {
        return this.drawerState;
    }

    @NotNull
    public final SnackbarHostState c() {
        return this.snackbarHostState;
    }

    public BottomSheetScaffoldState(@NotNull DrawerState drawerState, @NotNull BottomSheetState bottomSheetState, @NotNull SnackbarHostState snackbarHostState) {
        t.j(drawerState, "drawerState");
        t.j(bottomSheetState, "bottomSheetState");
        t.j(snackbarHostState, "snackbarHostState");
        this.drawerState = drawerState;
        this.bottomSheetState = bottomSheetState;
        this.snackbarHostState = snackbarHostState;
    }
}
