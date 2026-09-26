package androidx.compose.ui.node;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class DrawEntity$Companion$onCommitAffectingDrawEntity$1 extends v implements l<DrawEntity, l0> {
    public static final DrawEntity$Companion$onCommitAffectingDrawEntity$1 INSTANCE = new DrawEntity$Companion$onCommitAffectingDrawEntity$1();

    DrawEntity$Companion$onCommitAffectingDrawEntity$1() {
        super(1);
    }

    public final void a(@NotNull DrawEntity drawEntity) {
        t.j(drawEntity, "drawEntity");
        if (drawEntity.isValid()) {
            drawEntity.invalidateCache = true;
            drawEntity.b().M1();
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawEntity drawEntity) {
        a(drawEntity);
        return l0.INSTANCE;
    }
}
