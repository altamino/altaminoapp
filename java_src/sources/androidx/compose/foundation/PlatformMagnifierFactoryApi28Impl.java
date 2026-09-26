package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.annotation.RequiresApi;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
public final class PlatformMagnifierFactoryApi28Impl implements PlatformMagnifierFactory {

    @NotNull
    public static final PlatformMagnifierFactoryApi28Impl INSTANCE = new PlatformMagnifierFactoryApi28Impl();
    private static final boolean canUpdateZoom = false;

    @StabilityInferred
    @RequiresApi
    public static class PlatformMagnifierImpl implements PlatformMagnifier {
        public static final int $stable = 8;

        @NotNull
        private final Magnifier magnifier;

        @NotNull
        public final Magnifier d() {
            return this.magnifier;
        }

        public PlatformMagnifierImpl(@NotNull Magnifier magnifier) {
            t.j(magnifier, "magnifier");
            this.magnifier = magnifier;
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        public long a() {
            return IntSizeKt.a(this.magnifier.getWidth(), this.magnifier.getHeight());
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        public void b(long j6, long j10, float f) {
            this.magnifier.show(Offset.m(j6), Offset.n(j6));
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        public void c() {
            this.magnifier.update();
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        public void dismiss() {
            this.magnifier.dismiss();
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
        return new PlatformMagnifierImpl(new Magnifier(view));
    }

    private PlatformMagnifierFactoryApi28Impl() {
    }
}
