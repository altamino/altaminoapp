package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.annotation.RequiresApi;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public final class PlatformMagnifierFactoryApi29Impl implements PlatformMagnifierFactory {

    @NotNull
    public static final PlatformMagnifierFactoryApi29Impl INSTANCE = new PlatformMagnifierFactoryApi29Impl();
    private static final boolean canUpdateZoom = true;

    @StabilityInferred
    @RequiresApi
    public static final class PlatformMagnifierImpl extends PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl {
        public static final int $stable = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlatformMagnifierImpl(@NotNull Magnifier magnifier) {
            super(magnifier);
            t.j(magnifier, "magnifier");
        }

        @Override // androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl, androidx.compose.foundation.PlatformMagnifier
        public void b(long j6, long j10, float f) {
            if (!Float.isNaN(f)) {
                d().setZoom(f);
            }
            if (OffsetKt.c(j10)) {
                d().show(Offset.m(j6), Offset.n(j6), Offset.m(j10), Offset.n(j10));
            } else {
                d().show(Offset.m(j6), Offset.n(j6));
            }
        }
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public boolean b() {
        return canUpdateZoom;
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public PlatformMagnifierImpl a(@NotNull MagnifierStyle style, @NotNull View view, @NotNull Density density, float f) {
        t.j(style, "style");
        t.j(view, "view");
        t.j(density, "density");
        if (t.e(style, MagnifierStyle.Companion.b())) {
            return new PlatformMagnifierImpl(new Magnifier(view));
        }
        long jX = density.X(style.g());
        float fH0 = density.H0(style.d());
        float fH1 = density.H0(style.e());
        Magnifier.Builder builder = new Magnifier.Builder(view);
        if (jX != Size.Companion.a()) {
            builder.setSize(g8.c.c(Size.i(jX)), g8.c.c(Size.g(jX)));
        }
        if (!Float.isNaN(fH0)) {
            builder.setCornerRadius(fH0);
        }
        if (!Float.isNaN(fH1)) {
            builder.setElevation(fH1);
        }
        if (!Float.isNaN(f)) {
            builder.setInitialZoom(f);
        }
        builder.setClippingEnabled(style.c());
        Magnifier magnifierBuild = builder.build();
        t.i(magnifierBuild, "Builder(view).run {\n    …    build()\n            }");
        return new PlatformMagnifierImpl(magnifierBuild);
    }

    private PlatformMagnifierFactoryApi29Impl() {
    }
}
