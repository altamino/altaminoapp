package androidx.compose.animation;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class TransitionData {

    @Nullable
    private final ChangeSize changeSize;

    @Nullable
    private final Fade fade;

    @Nullable
    private final Scale scale;

    @Nullable
    private final Slide slide;

    public TransitionData() {
        this(null, null, null, null, 15, null);
    }

    @Nullable
    public final ChangeSize a() {
        return this.changeSize;
    }

    @Nullable
    public final Fade b() {
        return this.fade;
    }

    @Nullable
    public final Scale c() {
        return this.scale;
    }

    @Nullable
    public final Slide d() {
        return this.slide;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionData)) {
            return false;
        }
        TransitionData transitionData = (TransitionData) obj;
        return t.e(this.fade, transitionData.fade) && t.e(this.slide, transitionData.slide) && t.e(this.changeSize, transitionData.changeSize) && t.e(this.scale, transitionData.scale);
    }

    public int hashCode() {
        Fade fade = this.fade;
        int iHashCode = (fade == null ? 0 : fade.hashCode()) * 31;
        Slide slide = this.slide;
        int iHashCode2 = (iHashCode + (slide == null ? 0 : slide.hashCode())) * 31;
        ChangeSize changeSize = this.changeSize;
        int iHashCode3 = (iHashCode2 + (changeSize == null ? 0 : changeSize.hashCode())) * 31;
        Scale scale = this.scale;
        return iHashCode3 + (scale != null ? scale.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "TransitionData(fade=" + this.fade + ", slide=" + this.slide + ", changeSize=" + this.changeSize + ", scale=" + this.scale + ')';
    }

    public TransitionData(@Nullable Fade fade, @Nullable Slide slide, @Nullable ChangeSize changeSize, @Nullable Scale scale) {
        this.fade = fade;
        this.slide = slide;
        this.changeSize = changeSize;
        this.scale = scale;
    }

    public /* synthetic */ TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : fade, (i10 & 2) != 0 ? null : slide, (i10 & 4) != 0 ? null : changeSize, (i10 & 8) != 0 ? null : scale);
    }
}
