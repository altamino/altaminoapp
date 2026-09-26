package coil.compose;

import android.content.Context;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    @NotNull
    private final ProvidableCompositionLocal<coil.e> delegate;

    static final class a extends v implements e8.a<coil.e> {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // e8.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final coil.e invoke() {
            return null;
        }
    }

    @NotNull
    public static ProvidableCompositionLocal<coil.e> a(@NotNull ProvidableCompositionLocal<coil.e> providableCompositionLocal) {
        return providableCompositionLocal;
    }

    public static boolean c(ProvidableCompositionLocal<coil.e> providableCompositionLocal, Object obj) {
        return (obj instanceof g) && t.e(providableCompositionLocal, ((g) obj).g());
    }

    public static int e(ProvidableCompositionLocal<coil.e> providableCompositionLocal) {
        return providableCompositionLocal.hashCode();
    }

    public static String f(ProvidableCompositionLocal<coil.e> providableCompositionLocal) {
        return "ImageLoaderProvidableCompositionLocal(delegate=" + providableCompositionLocal + ')';
    }

    public boolean equals(Object obj) {
        return c(this.delegate, obj);
    }

    public final /* synthetic */ ProvidableCompositionLocal g() {
        return this.delegate;
    }

    public int hashCode() {
        return e(this.delegate);
    }

    public String toString() {
        return f(this.delegate);
    }

    public static /* synthetic */ ProvidableCompositionLocal b(ProvidableCompositionLocal providableCompositionLocal, int i10, k kVar) {
        if ((i10 & 1) != 0) {
            providableCompositionLocal = CompositionLocalKt.e(a.INSTANCE);
        }
        return a(providableCompositionLocal);
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final coil.e d(ProvidableCompositionLocal<coil.e> providableCompositionLocal, @Nullable Composer composer, int i10) {
        if (ComposerKt.O()) {
            ComposerKt.Z(-617597678, i10, -1, "coil.compose.ImageLoaderProvidableCompositionLocal.<get-current> (LocalImageLoader.kt:49)");
        }
        coil.e eVarA = (coil.e) composer.x(providableCompositionLocal);
        if (eVarA == null) {
            eVarA = coil.a.a((Context) composer.x(AndroidCompositionLocals_androidKt.g()));
        }
        if (ComposerKt.O()) {
            ComposerKt.Y();
        }
        return eVarA;
    }
}
