package androidx.compose.foundation.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.Placeable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AlignmentLineProvider {

    @StabilityInferred
    public static final class Block extends AlignmentLineProvider {
        public static final int $stable = 0;

        @NotNull
        private final e8.l<Measured, Integer> lineProviderBlock;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Block) && t.e(this.lineProviderBlock, ((Block) obj).lineProviderBlock);
        }

        public int hashCode() {
            return this.lineProviderBlock.hashCode();
        }

        @NotNull
        public String toString() {
            return "Block(lineProviderBlock=" + this.lineProviderBlock + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Block(@NotNull e8.l<? super Measured, Integer> lineProviderBlock) {
            super(null);
            t.j(lineProviderBlock, "lineProviderBlock");
            this.lineProviderBlock = lineProviderBlock;
        }

        @Override // androidx.compose.foundation.layout.AlignmentLineProvider
        public int a(@NotNull Placeable placeable) {
            t.j(placeable, "placeable");
            return this.lineProviderBlock.invoke(placeable).intValue();
        }
    }

    @StabilityInferred
    public static final class Value extends AlignmentLineProvider {
        public static final int $stable = 0;

        @NotNull
        private final AlignmentLine alignmentLine;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Value) && t.e(this.alignmentLine, ((Value) obj).alignmentLine);
        }

        public int hashCode() {
            return this.alignmentLine.hashCode();
        }

        @NotNull
        public String toString() {
            return "Value(alignmentLine=" + this.alignmentLine + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Value(@NotNull AlignmentLine alignmentLine) {
            super(null);
            t.j(alignmentLine, "alignmentLine");
            this.alignmentLine = alignmentLine;
        }

        @Override // androidx.compose.foundation.layout.AlignmentLineProvider
        public int a(@NotNull Placeable placeable) {
            t.j(placeable, "placeable");
            return placeable.c0(this.alignmentLine);
        }
    }

    public /* synthetic */ AlignmentLineProvider(kotlin.jvm.internal.k kVar) {
        this();
    }

    public abstract int a(@NotNull Placeable placeable);

    private AlignmentLineProvider() {
    }
}
