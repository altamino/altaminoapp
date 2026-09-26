package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.StringRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class StringResources_androidKt {
    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final String b(@StringRes int i10, @Nullable Composer composer, int i11) {
        String string = a(composer, 0).getString(i10);
        t.i(string, "resources.getString(id)");
        return string;
    }

    @Composable
    @ReadOnlyComposable
    private static final Resources a(Composer composer, int i10) {
        composer.x(AndroidCompositionLocals_androidKt.f());
        Resources resources = ((Context) composer.x(AndroidCompositionLocals_androidKt.g())).getResources();
        t.i(resources, "LocalContext.current.resources");
        return resources;
    }
}
