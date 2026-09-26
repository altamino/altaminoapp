package androidx.compose.foundation.relocation;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class BringIntoViewRequesterKt$bringIntoViewRequester$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;

    /* JADX INFO: renamed from: androidx.compose.foundation.relocation.BringIntoViewRequesterKt$bringIntoViewRequester$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;
        final /* synthetic */ BringIntoViewRequesterModifier $modifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BringIntoViewRequester bringIntoViewRequester, BringIntoViewRequesterModifier bringIntoViewRequesterModifier) {
            super(1);
            this.$bringIntoViewRequester = bringIntoViewRequester;
            this.$modifier = bringIntoViewRequesterModifier;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            ((BringIntoViewRequesterImpl) this.$bringIntoViewRequester).b().b(this.$modifier);
            final BringIntoViewRequester bringIntoViewRequester = this.$bringIntoViewRequester;
            final BringIntoViewRequesterModifier bringIntoViewRequesterModifier = this.$modifier;
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.relocation.BringIntoViewRequesterKt$bringIntoViewRequester$2$1$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                    ((BringIntoViewRequesterImpl) bringIntoViewRequester).b().s(bringIntoViewRequesterModifier);
                }
            };
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BringIntoViewRequesterKt$bringIntoViewRequester$2(BringIntoViewRequester bringIntoViewRequester) {
        super(3);
        this.$bringIntoViewRequester = bringIntoViewRequester;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-992853993);
        BringIntoViewParent bringIntoViewParentB = BringIntoViewResponder_androidKt.b(composer, 0);
        composer.G(1157296644);
        boolean zK = composer.k(bringIntoViewParentB);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new BringIntoViewRequesterModifier(bringIntoViewParentB);
            composer.z(objH);
        }
        composer.Q();
        BringIntoViewRequesterModifier bringIntoViewRequesterModifier = (BringIntoViewRequesterModifier) objH;
        BringIntoViewRequester bringIntoViewRequester = this.$bringIntoViewRequester;
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            EffectsKt.a(bringIntoViewRequester, new AnonymousClass1(bringIntoViewRequester, bringIntoViewRequesterModifier), composer, 0);
        }
        composer.Q();
        return bringIntoViewRequesterModifier;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
