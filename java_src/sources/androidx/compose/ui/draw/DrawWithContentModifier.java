package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class DrawWithContentModifier extends InspectorValueInfo implements DrawModifier {

    @NotNull
    private final l<ContentDrawScope, l0> onDraw;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DrawWithContentModifier(@NotNull l<? super ContentDrawScope, l0> onDraw, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(onDraw, "onDraw");
        t.j(inspectorInfo, "inspectorInfo");
        this.onDraw = onDraw;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DrawWithContentModifier) {
            return t.e(this.onDraw, ((DrawWithContentModifier) obj).onDraw);
        }
        return false;
    }

    public int hashCode() {
        return this.onDraw.hashCode();
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void r(@NotNull ContentDrawScope contentDrawScope) {
        t.j(contentDrawScope, "<this>");
        this.onDraw.invoke(contentDrawScope);
    }
}
