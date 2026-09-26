package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.R;
import androidx.lifecycle.Lifecycle;
import io.agora.rtc.Constants;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class WrappedComposition$setContent$1 extends kotlin.jvm.internal.v implements e8.l<AndroidComposeView.ViewTreeOwners, w7.l0> {
    final /* synthetic */ e8.p<Composer, Integer, w7.l0> $content;
    final /* synthetic */ WrappedComposition this$0;

    /* JADX INFO: renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
        final /* synthetic */ e8.p<Composer, Integer, w7.l0> $content;
        final /* synthetic */ WrappedComposition this$0;

        /* JADX INFO: renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1$1$1, reason: invalid class name and collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.WrappedComposition$setContent$1$1$1", f = "Wrapper.android.kt", l = {Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED}, m = "invokeSuspend")
        static final class C00731 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
            int label;
            final /* synthetic */ WrappedComposition this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00731(WrappedComposition wrappedComposition, kotlin.coroutines.d<? super C00731> dVar) {
                super(2, dVar);
                this.this$0 = wrappedComposition;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new C00731(this.this$0, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
                return ((C00731) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        w7.w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w7.w.b(obj);
                    AndroidComposeView androidComposeViewY = this.this$0.y();
                    this.label = 1;
                    if (androidComposeViewY.Z(this) == objE) {
                        return objE;
                    }
                }
                return w7.l0.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1$1$2, reason: invalid class name */
        @kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.WrappedComposition$setContent$1$1$2", f = "Wrapper.android.kt", l = {Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR}, m = "invokeSuspend")
        static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
            int label;
            final /* synthetic */ WrappedComposition this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(WrappedComposition wrappedComposition, kotlin.coroutines.d<? super AnonymousClass2> dVar) {
                super(2, dVar);
                this.this$0 = wrappedComposition;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new AnonymousClass2(this.this$0, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
                return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        w7.w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w7.w.b(obj);
                    AndroidComposeView androidComposeViewY = this.this$0.y();
                    this.label = 1;
                    if (androidComposeViewY.H(this) == objE) {
                        return objE;
                    }
                }
                return w7.l0.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1$1$3, reason: invalid class name */
        static final class AnonymousClass3 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
            final /* synthetic */ e8.p<Composer, Integer, w7.l0> $content;
            final /* synthetic */ WrappedComposition this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass3(WrappedComposition wrappedComposition, e8.p<? super Composer, ? super Integer, w7.l0> pVar) {
                super(2);
                this.this$0 = wrappedComposition;
                this.$content = pVar;
            }

            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                } else {
                    AndroidCompositionLocals_androidKt.a(this.this$0.y(), this.$content, composer, 8);
                }
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return w7.l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(WrappedComposition wrappedComposition, e8.p<? super Composer, ? super Integer, w7.l0> pVar) {
            super(2);
            this.this$0 = wrappedComposition;
            this.$content = pVar;
        }

        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
                return;
            }
            AndroidComposeView androidComposeViewY = this.this$0.y();
            int i11 = R.id.inspection_slot_table_set;
            Object tag = androidComposeViewY.getTag(i11);
            Set<CompositionData> set = kotlin.jvm.internal.v0.n(tag) ? (Set) tag : null;
            if (set == null) {
                Object parent = this.this$0.y().getParent();
                View view = parent instanceof View ? (View) parent : null;
                Object tag2 = view != null ? view.getTag(i11) : null;
                set = kotlin.jvm.internal.v0.n(tag2) ? (Set) tag2 : null;
            }
            if (set != null) {
                set.add(composer.I());
                composer.D();
            }
            EffectsKt.d(this.this$0.y(), new C00731(this.this$0, null), composer, 8);
            EffectsKt.d(this.this$0.y(), new AnonymousClass2(this.this$0, null), composer, 8);
            CompositionLocalKt.b(new ProvidedValue[]{InspectionTablesKt.a().c(set)}, ComposableLambdaKt.b(composer, -1193460702, true, new AnonymousClass3(this.this$0, this.$content)), composer, 56);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return w7.l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    WrappedComposition$setContent$1(WrappedComposition wrappedComposition, e8.p<? super Composer, ? super Integer, w7.l0> pVar) {
        super(1);
        this.this$0 = wrappedComposition;
        this.$content = pVar;
    }

    public final void a(@NotNull AndroidComposeView.ViewTreeOwners it) {
        kotlin.jvm.internal.t.j(it, "it");
        if (this.this$0.disposed) {
            return;
        }
        Lifecycle lifecycle = it.a().getLifecycle();
        kotlin.jvm.internal.t.i(lifecycle, "it.lifecycleOwner.lifecycle");
        this.this$0.lastContent = this.$content;
        if (this.this$0.addedToLifecycle == null) {
            this.this$0.addedToLifecycle = lifecycle;
            lifecycle.a(this.this$0);
        } else if (lifecycle.b().b(Lifecycle.State.CREATED)) {
            this.this$0.x().v(ComposableLambdaKt.c(-2000640158, true, new AnonymousClass1(this.this$0, this.$content)));
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(AndroidComposeView.ViewTreeOwners viewTreeOwners) {
        a(viewTreeOwners);
        return w7.l0.INSTANCE;
    }
}
