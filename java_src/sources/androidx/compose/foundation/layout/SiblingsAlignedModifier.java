package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SiblingsAlignedModifier extends InspectorValueInfo implements ParentDataModifier {

    public static final class WithAlignmentLine extends SiblingsAlignedModifier {

        @NotNull
        private final AlignmentLine alignmentLine;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithAlignmentLine(@NotNull AlignmentLine alignmentLine, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
            super(inspectorInfo, null);
            t.j(alignmentLine, "alignmentLine");
            t.j(inspectorInfo, "inspectorInfo");
            this.alignmentLine = alignmentLine;
        }

        @Override // androidx.compose.ui.layout.ParentDataModifier
        @NotNull
        public Object Q(@NotNull Density density, @Nullable Object obj) {
            t.j(density, "<this>");
            RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
            if (rowColumnParentData == null) {
                rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
            }
            rowColumnParentData.d(CrossAxisAlignment.Companion.a(new AlignmentLineProvider.Value(this.alignmentLine)));
            return rowColumnParentData;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            WithAlignmentLine withAlignmentLine = obj instanceof WithAlignmentLine ? (WithAlignmentLine) obj : null;
            if (withAlignmentLine == null) {
                return false;
            }
            return t.e(this.alignmentLine, withAlignmentLine.alignmentLine);
        }

        public int hashCode() {
            return this.alignmentLine.hashCode();
        }

        @NotNull
        public String toString() {
            return "WithAlignmentLine(line=" + this.alignmentLine + ')';
        }
    }

    public static final class WithAlignmentLineBlock extends SiblingsAlignedModifier {

        @NotNull
        private final e8.l<Measured, Integer> block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public WithAlignmentLineBlock(@NotNull e8.l<? super Measured, Integer> block, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
            super(inspectorInfo, null);
            t.j(block, "block");
            t.j(inspectorInfo, "inspectorInfo");
            this.block = block;
        }

        @Override // androidx.compose.ui.layout.ParentDataModifier
        @NotNull
        public Object Q(@NotNull Density density, @Nullable Object obj) {
            t.j(density, "<this>");
            RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
            if (rowColumnParentData == null) {
                rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
            }
            rowColumnParentData.d(CrossAxisAlignment.Companion.a(new AlignmentLineProvider.Block(this.block)));
            return rowColumnParentData;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            WithAlignmentLineBlock withAlignmentLineBlock = obj instanceof WithAlignmentLineBlock ? (WithAlignmentLineBlock) obj : null;
            if (withAlignmentLineBlock == null) {
                return false;
            }
            return t.e(this.block, withAlignmentLineBlock.block);
        }

        public int hashCode() {
            return this.block.hashCode();
        }

        @NotNull
        public String toString() {
            return "WithAlignmentLineBlock(block=" + this.block + ')';
        }
    }

    public /* synthetic */ SiblingsAlignedModifier(e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    private SiblingsAlignedModifier(e8.l<? super InspectorInfo, l0> lVar) {
        super(lVar);
    }
}
