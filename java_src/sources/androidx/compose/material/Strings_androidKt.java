package androidx.compose.material;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class Strings_androidKt {
    @Composable
    @NotNull
    public static final String a(int i10, @Nullable Composer composer, int i11) {
        String string;
        composer.G(-726638443);
        composer.x(AndroidCompositionLocals_androidKt.f());
        Resources resources = ((Context) composer.x(AndroidCompositionLocals_androidKt.g())).getResources();
        Strings.Companion companion = Strings.Companion;
        if (Strings.j(i10, companion.e())) {
            string = resources.getString(androidx.compose.ui.R.string.navigation_menu);
            t.i(string, "resources.getString(R.string.navigation_menu)");
        } else if (Strings.j(i10, companion.a())) {
            string = resources.getString(androidx.compose.ui.R.string.close_drawer);
            t.i(string, "resources.getString(R.string.close_drawer)");
        } else if (Strings.j(i10, companion.b())) {
            string = resources.getString(androidx.compose.ui.R.string.close_sheet);
            t.i(string, "resources.getString(R.string.close_sheet)");
        } else if (Strings.j(i10, companion.c())) {
            string = resources.getString(androidx.compose.ui.R.string.default_error_message);
            t.i(string, "resources.getString(R.st…ng.default_error_message)");
        } else if (Strings.j(i10, companion.d())) {
            string = resources.getString(androidx.compose.ui.R.string.dropdown_menu);
            t.i(string, "resources.getString(R.string.dropdown_menu)");
        } else if (Strings.j(i10, companion.g())) {
            string = resources.getString(androidx.compose.ui.R.string.range_start);
            t.i(string, "resources.getString(R.string.range_start)");
        } else if (Strings.j(i10, companion.f())) {
            string = resources.getString(androidx.compose.ui.R.string.range_end);
            t.i(string, "resources.getString(R.string.range_end)");
        } else {
            string = "";
        }
        composer.Q();
        return string;
    }
}
