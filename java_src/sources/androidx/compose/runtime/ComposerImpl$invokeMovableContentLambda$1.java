package androidx.compose.runtime;

import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$invokeMovableContentLambda$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ MovableContent<Object> $content;
    final /* synthetic */ Object $parameter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$invokeMovableContentLambda$1(MovableContent<Object> movableContent, Object obj) {
        super(2);
        this.$content = movableContent;
        this.$parameter = obj;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            this.$content.a().invoke(this.$parameter, composer, 8);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
