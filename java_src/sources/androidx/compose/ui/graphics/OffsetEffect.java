package androidx.compose.ui.graphics;

import androidx.annotation.RequiresApi;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Offset;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class OffsetEffect extends RenderEffect {
    private final long offset;

    @Nullable
    private final RenderEffect renderEffect;

    public /* synthetic */ OffsetEffect(RenderEffect renderEffect, long j6, kotlin.jvm.internal.k kVar) {
        this(renderEffect, j6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OffsetEffect)) {
            return false;
        }
        OffsetEffect offsetEffect = (OffsetEffect) obj;
        return kotlin.jvm.internal.t.e(this.renderEffect, offsetEffect.renderEffect) && Offset.j(this.offset, offsetEffect.offset);
    }

    private OffsetEffect(RenderEffect renderEffect, long j6) {
        super(null);
        this.renderEffect = renderEffect;
        this.offset = j6;
    }

    @Override // androidx.compose.ui.graphics.RenderEffect
    @RequiresApi
    @NotNull
    protected android.graphics.RenderEffect b() {
        return RenderEffectVerificationHelper.INSTANCE.b(this.renderEffect, this.offset);
    }

    public int hashCode() {
        RenderEffect renderEffect = this.renderEffect;
        return ((renderEffect != null ? renderEffect.hashCode() : 0) * 31) + Offset.o(this.offset);
    }

    @NotNull
    public String toString() {
        return "OffsetEffect(renderEffect=" + this.renderEffect + ", offset=" + ((Object) Offset.t(this.offset)) + ')';
    }
}
