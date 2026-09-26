package androidx.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentKt {
    @NotNull
    public static final NavController a(@NotNull Fragment fragment) {
        t.j(fragment, "<this>");
        return NavHostFragment.Companion.c(fragment);
    }
}
