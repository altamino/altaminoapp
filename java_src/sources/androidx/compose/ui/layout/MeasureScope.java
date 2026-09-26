package androidx.compose.ui.layout;

import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public interface MeasureScope extends IntrinsicMeasureScope {

    /* JADX INFO: renamed from: androidx.compose.ui.layout.MeasureScope$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes9.dex */
    public final /* synthetic */ class CC {
        @NotNull
        public static MeasureResult a(final MeasureScope measureScope, final int i10, final int i11, @NotNull final Map alignmentLines, @NotNull final l placementBlock) {
            t.j(alignmentLines, "alignmentLines");
            t.j(placementBlock, "placementBlock");
            return new MeasureResult(i10, i11, alignmentLines, measureScope, placementBlock) { // from class: androidx.compose.ui.layout.MeasureScope$layout$1
                final /* synthetic */ l<Placeable.PlacementScope, l0> $placementBlock;
                final /* synthetic */ int $width;

                @NotNull
                private final Map<AlignmentLine, Integer> alignmentLines;
                private final int height;
                final /* synthetic */ MeasureScope this$0;
                private final int width;

                @Override // androidx.compose.ui.layout.MeasureResult
                @NotNull
                public Map<AlignmentLine, Integer> c() {
                    return this.alignmentLines;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public int getHeight() {
                    return this.height;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public int getWidth() {
                    return this.width;
                }

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.$width = i10;
                    this.this$0 = measureScope;
                    this.$placementBlock = placementBlock;
                    this.width = i10;
                    this.height = i11;
                    this.alignmentLines = alignmentLines;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public void d() {
                    Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
                    int i12 = this.$width;
                    LayoutDirection layoutDirection = this.this$0.getLayoutDirection();
                    l<Placeable.PlacementScope, l0> lVar = this.$placementBlock;
                    int iH = companion.h();
                    LayoutDirection layoutDirectionG = companion.g();
                    Placeable.PlacementScope.parentWidth = i12;
                    Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
                    lVar.invoke(companion);
                    Placeable.PlacementScope.parentWidth = iH;
                    Placeable.PlacementScope.parentLayoutDirection = layoutDirectionG;
                }
            };
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ MeasureResult b(MeasureScope measureScope, int i10, int i11, Map map, l lVar, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: layout");
            }
            if ((i12 & 4) != 0) {
                map = s0.h();
            }
            return measureScope.G0(i10, i11, map, lVar);
        }
    }

    public static final class DefaultImpls {
    }

    @NotNull
    MeasureResult G0(int i10, int i11, @NotNull Map<AlignmentLine, Integer> map, @NotNull l<? super Placeable.PlacementScope, l0> lVar);
}
