package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ LazyLayoutItemContentFactory this$0;
    final /* synthetic */ LazyLayoutItemContentFactory.CachedItemContent this$1;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $index;
        final /* synthetic */ LazyLayoutItemProvider $itemProvider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LazyLayoutItemProvider lazyLayoutItemProvider, int i10) {
            super(2);
            this.$itemProvider = lazyLayoutItemProvider;
            this.$index = i10;
        }

        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                this.$itemProvider.b(this.$index, composer, 0);
            }
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ LazyLayoutItemContentFactory.CachedItemContent this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(LazyLayoutItemContentFactory.CachedItemContent cachedItemContent) {
            super(1);
            this.this$0 = cachedItemContent;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            final LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = this.this$0;
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1$2$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                    cachedItemContent._content = null;
                }
            };
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, LazyLayoutItemContentFactory.CachedItemContent cachedItemContent) {
        super(2);
        this.this$0 = lazyLayoutItemContentFactory;
        this.this$1 = cachedItemContent;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        int iF;
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        LazyLayoutItemProvider lazyLayoutItemProviderInvoke = this.this$0.d().invoke();
        Integer num = lazyLayoutItemProviderInvoke.c().get(this.this$1.e());
        if (num != null) {
            this.this$1.h(num.intValue());
            iF = num.intValue();
        } else {
            iF = this.this$1.f();
        }
        composer.G(-715769699);
        if (iF < lazyLayoutItemProviderInvoke.f()) {
            Object objD = lazyLayoutItemProviderInvoke.d(iF);
            if (t.e(objD, this.this$1.e())) {
                this.this$0.saveableStateHolder.a(objD, ComposableLambdaKt.b(composer, -1238863364, true, new AnonymousClass1(lazyLayoutItemProviderInvoke, iF)), composer, 568);
            }
        }
        composer.Q();
        EffectsKt.a(this.this$1.e(), new AnonymousClass2(this.this$1), composer, 8);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
