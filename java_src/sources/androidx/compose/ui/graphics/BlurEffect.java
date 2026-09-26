package androidx.compose.ui.graphics;

import androidx.annotation.RequiresApi;
import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class BlurEffect extends RenderEffect {
    private final int edgeTreatment;
    private final float radiusX;
    private final float radiusY;

    @Nullable
    private final RenderEffect renderEffect;

    public /* synthetic */ BlurEffect(RenderEffect renderEffect, float f, float f6, int i10, kotlin.jvm.internal.k kVar) {
        this(renderEffect, f, f6, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlurEffect)) {
            return false;
        }
        BlurEffect blurEffect = (BlurEffect) obj;
        return this.radiusX == blurEffect.radiusX && this.radiusY == blurEffect.radiusY && TileMode.g(this.edgeTreatment, blurEffect.edgeTreatment) && kotlin.jvm.internal.t.e(this.renderEffect, blurEffect.renderEffect);
    }

    private BlurEffect(RenderEffect renderEffect, float f, float f6, int i10) {
        super(null);
        this.renderEffect = renderEffect;
        this.radiusX = f;
        this.radiusY = f6;
        this.edgeTreatment = i10;
    }

    @Override // androidx.compose.ui.graphics.RenderEffect
    @RequiresApi
    @NotNull
    protected android.graphics.RenderEffect b() {
        return RenderEffectVerificationHelper.INSTANCE.a(this.renderEffect, this.radiusX, this.radiusY, this.edgeTreatment);
    }

    public int hashCode() {
        RenderEffect renderEffect = this.renderEffect;
        return ((((((renderEffect != null ? renderEffect.hashCode() : 0) * 31) + Float.floatToIntBits(this.radiusX)) * 31) + Float.floatToIntBits(this.radiusY)) * 31) + TileMode.h(this.edgeTreatment);
    }

    @NotNull
    public String toString() {
        return "BlurEffect(renderEffect=" + this.renderEffect + ", radiusX=" + this.radiusX + ", radiusY=" + this.radiusY + ", edgeTreatment=" + ((Object) TileMode.i(this.edgeTreatment)) + ')';
    }

    public /* synthetic */ BlurEffect(RenderEffect renderEffect, float f, float f6, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(renderEffect, f, (i11 & 4) != 0 ? f : f6, (i11 & 8) != 0 ? TileMode.Companion.a() : i10, null);
    }
}
