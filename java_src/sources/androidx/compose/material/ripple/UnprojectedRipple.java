package androidx.compose.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.core.view.ViewCompat;
import j8.o;
import java.lang.reflect.Method;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class UnprojectedRipple extends RippleDrawable {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean setMaxRadiusFetched;

    @Nullable
    private static Method setMaxRadiusMethod;
    private final boolean bounded;
    private boolean projected;

    @Nullable
    private Color rippleColor;

    @Nullable
    private Integer rippleRadius;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @RequiresApi
    private static final class MRadiusHelper {

        @NotNull
        public static final MRadiusHelper INSTANCE = new MRadiusHelper();

        @DoNotInline
        public final void a(@NotNull RippleDrawable ripple, int i10) {
            t.j(ripple, "ripple");
            ripple.setRadius(i10);
        }

        private MRadiusHelper() {
        }
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isProjected() {
        return this.projected;
    }

    public UnprojectedRipple(boolean z6) {
        super(ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK), null, z6 ? new ColorDrawable(-1) : null);
        this.bounded = z6;
    }

    private final long a(long j6, float f) {
        if (Build.VERSION.SDK_INT < 28) {
            f *= 2;
        }
        return Color.l(j6, o.i(f, 1.0f), 0.0f, 0.0f, 0.0f, 14, null);
    }

    public final void c(int i10) {
        Integer num = this.rippleRadius;
        if (num != null && num.intValue() == i10) {
            return;
        }
        this.rippleRadius = Integer.valueOf(i10);
        MRadiusHelper.INSTANCE.a(this, i10);
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.Drawable
    @NotNull
    public Rect getDirtyBounds() {
        if (!this.bounded) {
            this.projected = true;
        }
        Rect dirtyBounds = super.getDirtyBounds();
        t.i(dirtyBounds, "super.getDirtyBounds()");
        this.projected = false;
        return dirtyBounds;
    }

    public final void b(long j6, float f) {
        long jA = a(j6, f);
        Color color = this.rippleColor;
        if (color == null || !Color.n(color.v(), jA)) {
            this.rippleColor = Color.h(jA);
            setColor(ColorStateList.valueOf(ColorKt.l(jA)));
        }
    }
}
