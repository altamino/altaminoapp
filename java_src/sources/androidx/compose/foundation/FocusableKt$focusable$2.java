package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import e8.p;
import e8.q;
import io.agora.rtc.Constants;
import kotlin.coroutines.d;
import kotlin.coroutines.h;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class FocusableKt$focusable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
        final /* synthetic */ MutableInteractionSource $interactionSource;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource) {
            super(1);
            this.$focusedInteraction = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            final MutableState<FocusInteraction.Focus> mutableState = this.$focusedInteraction;
            final MutableInteractionSource mutableInteractionSource = this.$interactionSource;
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.FocusableKt$focusable$2$1$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                    FocusInteraction.Focus focus = (FocusInteraction.Focus) mutableState.getValue();
                    if (focus != null) {
                        FocusInteraction.Unfocus unfocus = new FocusInteraction.Unfocus(focus);
                        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        if (mutableInteractionSource2 != null) {
                            mutableInteractionSource2.a(unfocus);
                        }
                        mutableState.setValue(null);
                    }
                }
            };
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ o0 $scope;

        /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$2$1, reason: invalid class name */
        @f(c = "androidx.compose.foundation.FocusableKt$focusable$2$2$1", f = "Focusable.kt", l = {105}, m = "invokeSuspend")
        static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
            final /* synthetic */ MutableInteractionSource $interactionSource;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource, d<? super AnonymousClass1> dVar) {
                super(2, dVar);
                this.$focusedInteraction = mutableState;
                this.$interactionSource = mutableInteractionSource;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new AnonymousClass1(this.$focusedInteraction, this.$interactionSource, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                MutableState<FocusInteraction.Focus> mutableState;
                MutableState<FocusInteraction.Focus> mutableState2;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        mutableState2 = (MutableState) this.L$0;
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    FocusInteraction.Focus value = this.$focusedInteraction.getValue();
                    if (value != null) {
                        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                        mutableState = this.$focusedInteraction;
                        FocusInteraction.Unfocus unfocus = new FocusInteraction.Unfocus(value);
                        if (mutableInteractionSource != null) {
                            this.L$0 = mutableState;
                            this.label = 1;
                            if (mutableInteractionSource.b(unfocus, this) == objE) {
                                return objE;
                            }
                            mutableState2 = mutableState;
                        }
                        mutableState.setValue(null);
                    }
                    return l0.INSTANCE;
                }
                mutableState = mutableState2;
                mutableState.setValue(null);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(boolean z6, o0 o0Var, MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource) {
            super(1);
            this.$enabled = z6;
            this.$scope = o0Var;
            this.$focusedInteraction = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            if (!this.$enabled) {
                k.d(this.$scope, null, null, new AnonymousClass1(this.$focusedInteraction, this.$interactionSource, null), 3, null);
            }
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.FocusableKt$focusable$2$2$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                }
            };
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements l<SemanticsPropertyReceiver, l0> {
        final /* synthetic */ FocusRequester $focusRequester;
        final /* synthetic */ MutableState<Boolean> $isFocused$delegate;

        /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$3$1, reason: invalid class name */
        static final class AnonymousClass1 extends v implements e8.a<Boolean> {
            final /* synthetic */ FocusRequester $focusRequester;
            final /* synthetic */ MutableState<Boolean> $isFocused$delegate;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(FocusRequester focusRequester, MutableState<Boolean> mutableState) {
                super(0);
                this.$focusRequester = focusRequester;
                this.$isFocused$delegate = mutableState;
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke() {
                this.$focusRequester.c();
                return Boolean.valueOf(FocusableKt$focusable$2.h(this.$isFocused$delegate));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(MutableState<Boolean> mutableState, FocusRequester focusRequester) {
            super(1);
            this.$isFocused$delegate = mutableState;
            this.$focusRequester = focusRequester;
        }

        public final void a(@NotNull SemanticsPropertyReceiver semantics) {
            t.j(semantics, "$this$semantics");
            SemanticsPropertiesKt.I(semantics, FocusableKt$focusable$2.h(this.$isFocused$delegate));
            SemanticsPropertiesKt.z(semantics, null, new AnonymousClass1(this.$focusRequester, this.$isFocused$delegate), 1, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            a(semanticsPropertyReceiver);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements l<PinnableParent, l0> {
        final /* synthetic */ MutableState<PinnableParent> $pinnableParent$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(MutableState<PinnableParent> mutableState) {
            super(1);
            this.$pinnableParent$delegate = mutableState;
        }

        public final void a(@Nullable PinnableParent pinnableParent) {
            FocusableKt$focusable$2.g(this.$pinnableParent$delegate, pinnableParent);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(PinnableParent pinnableParent) {
            a(pinnableParent);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$5, reason: invalid class name */
    static final class AnonymousClass5 extends v implements l<FocusState, l0> {
        final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;
        final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ MutableState<Boolean> $isFocused$delegate;
        final /* synthetic */ MutableState<PinnableParent> $pinnableParent$delegate;
        final /* synthetic */ o0 $scope;

        /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$5$1, reason: invalid class name */
        @f(c = "androidx.compose.foundation.FocusableKt$focusable$2$5$1", f = "Focusable.kt", l = {144}, m = "invokeSuspend")
        static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;
            final /* synthetic */ MutableState<PinnableParent> $pinnableParent$delegate;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(BringIntoViewRequester bringIntoViewRequester, MutableState<PinnableParent> mutableState, d<? super AnonymousClass1> dVar) {
                super(2, dVar);
                this.$bringIntoViewRequester = bringIntoViewRequester;
                this.$pinnableParent$delegate = mutableState;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new AnonymousClass1(this.$bringIntoViewRequester, this.$pinnableParent$delegate, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:25:0x0044  */
            /* JADX WARN: Code duplicated, block: B:31:0x004e  */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                PinnableParent.PinnedItemsHandle pinnedItemsHandle;
                Throwable th;
                PinnableParent.PinnedItemsHandle pinnedItemsHandleA;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        pinnedItemsHandle = (PinnableParent.PinnedItemsHandle) this.L$0;
                        try {
                            w.b(obj);
                            if (pinnedItemsHandle != null) {
                                pinnedItemsHandle.a();
                            }
                            return l0.INSTANCE;
                        } catch (Throwable th2) {
                            th = th2;
                            if (pinnedItemsHandle != null) {
                                pinnedItemsHandle.a();
                            }
                            throw th;
                        }
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
                try {
                    PinnableParent pinnableParentF = FocusableKt$focusable$2.f(this.$pinnableParent$delegate);
                    if (pinnableParentF != null) {
                        pinnedItemsHandleA = pinnableParentF.a();
                    } else {
                        pinnedItemsHandleA = null;
                    }
                    try {
                        BringIntoViewRequester bringIntoViewRequester = this.$bringIntoViewRequester;
                        this.L$0 = pinnedItemsHandleA;
                        this.label = 1;
                        if (androidx.compose.foundation.relocation.a.a(bringIntoViewRequester, null, this, 1, null) == objE) {
                            return objE;
                        }
                        pinnedItemsHandle = pinnedItemsHandleA;
                        if (pinnedItemsHandle != null) {
                            pinnedItemsHandle.a();
                        }
                        return l0.INSTANCE;
                    } catch (Throwable th3) {
                        th = th3;
                        pinnedItemsHandle = pinnedItemsHandleA;
                        if (pinnedItemsHandle != null) {
                            pinnedItemsHandle.a();
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    pinnedItemsHandle = null;
                    th = th4;
                }
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$5$2, reason: invalid class name */
        @f(c = "androidx.compose.foundation.FocusableKt$focusable$2$5$2", f = "Focusable.kt", l = {Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "invokeSuspend")
        static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
            final /* synthetic */ MutableInteractionSource $interactionSource;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource, d<? super AnonymousClass2> dVar) {
                super(2, dVar);
                this.$focusedInteraction = mutableState;
                this.$interactionSource = mutableInteractionSource;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new AnonymousClass2(this.$focusedInteraction, this.$interactionSource, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:22:0x0058  */
            /* JADX WARN: Code duplicated, block: B:24:0x0062 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:25:0x0063  */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                MutableState<FocusInteraction.Focus> mutableState;
                MutableState<FocusInteraction.Focus> mutableState2;
                FocusInteraction.Focus focus;
                MutableInteractionSource mutableInteractionSource;
                FocusInteraction.Focus focus2;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            focus2 = (FocusInteraction.Focus) this.L$0;
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        mutableState2 = (MutableState) this.L$0;
                        w.b(obj);
                    }
                    focus = focus2;
                    this.$focusedInteraction.setValue(focus);
                    return l0.INSTANCE;
                }
                w.b(obj);
                FocusInteraction.Focus value = this.$focusedInteraction.getValue();
                if (value != null) {
                    MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
                    mutableState = this.$focusedInteraction;
                    FocusInteraction.Unfocus unfocus = new FocusInteraction.Unfocus(value);
                    if (mutableInteractionSource2 != null) {
                        this.L$0 = mutableState;
                        this.label = 1;
                        if (mutableInteractionSource2.b(unfocus, this) == objE) {
                            return objE;
                        }
                        mutableState2 = mutableState;
                    }
                    mutableState.setValue(null);
                    focus = new FocusInteraction.Focus();
                    mutableInteractionSource = this.$interactionSource;
                    if (mutableInteractionSource != null) {
                        this.L$0 = focus;
                        this.label = 2;
                        if (mutableInteractionSource.b(focus, this) == objE) {
                            return objE;
                        }
                        focus2 = focus;
                        focus = focus2;
                    }
                } else {
                    focus = new FocusInteraction.Focus();
                    mutableInteractionSource = this.$interactionSource;
                    if (mutableInteractionSource != null) {
                        this.L$0 = focus;
                        this.label = 2;
                        if (mutableInteractionSource.b(focus, this) == objE) {
                            return objE;
                        }
                        focus2 = focus;
                        focus = focus2;
                    }
                }
                this.$focusedInteraction.setValue(focus);
                return l0.INSTANCE;
                mutableState = mutableState2;
                mutableState.setValue(null);
                focus = new FocusInteraction.Focus();
                mutableInteractionSource = this.$interactionSource;
                if (mutableInteractionSource != null) {
                    this.L$0 = focus;
                    this.label = 2;
                    if (mutableInteractionSource.b(focus, this) == objE) {
                        return objE;
                    }
                    focus2 = focus;
                    focus = focus2;
                }
                this.$focusedInteraction.setValue(focus);
                return l0.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusable$2$5$3, reason: invalid class name */
        @f(c = "androidx.compose.foundation.FocusableKt$focusable$2$5$3", f = "Focusable.kt", l = {163}, m = "invokeSuspend")
        static final class AnonymousClass3 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
            final /* synthetic */ MutableInteractionSource $interactionSource;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource, d<? super AnonymousClass3> dVar) {
                super(2, dVar);
                this.$focusedInteraction = mutableState;
                this.$interactionSource = mutableInteractionSource;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new AnonymousClass3(this.$focusedInteraction, this.$interactionSource, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((AnonymousClass3) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                MutableState<FocusInteraction.Focus> mutableState;
                MutableState<FocusInteraction.Focus> mutableState2;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        mutableState2 = (MutableState) this.L$0;
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    FocusInteraction.Focus value = this.$focusedInteraction.getValue();
                    if (value != null) {
                        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                        mutableState = this.$focusedInteraction;
                        FocusInteraction.Unfocus unfocus = new FocusInteraction.Unfocus(value);
                        if (mutableInteractionSource != null) {
                            this.L$0 = mutableState;
                            this.label = 1;
                            if (mutableInteractionSource.b(unfocus, this) == objE) {
                                return objE;
                            }
                            mutableState2 = mutableState;
                        }
                        mutableState.setValue(null);
                    }
                    return l0.INSTANCE;
                }
                mutableState = mutableState2;
                mutableState.setValue(null);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(o0 o0Var, MutableState<Boolean> mutableState, BringIntoViewRequester bringIntoViewRequester, MutableState<PinnableParent> mutableState2, MutableState<FocusInteraction.Focus> mutableState3, MutableInteractionSource mutableInteractionSource) {
            super(1);
            this.$scope = o0Var;
            this.$isFocused$delegate = mutableState;
            this.$bringIntoViewRequester = bringIntoViewRequester;
            this.$pinnableParent$delegate = mutableState2;
            this.$focusedInteraction = mutableState3;
            this.$interactionSource = mutableInteractionSource;
        }

        public final void a(@NotNull FocusState it) {
            t.j(it, "it");
            FocusableKt$focusable$2.i(this.$isFocused$delegate, it.a());
            if (!FocusableKt$focusable$2.h(this.$isFocused$delegate)) {
                k.d(this.$scope, null, null, new AnonymousClass3(this.$focusedInteraction, this.$interactionSource, null), 3, null);
            } else {
                k.d(this.$scope, null, q0.UNDISPATCHED, new AnonymousClass1(this.$bringIntoViewRequester, this.$pinnableParent$delegate, null), 1, null);
                k.d(this.$scope, null, null, new AnonymousClass2(this.$focusedInteraction, this.$interactionSource, null), 3, null);
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(FocusState focusState) {
            a(focusState);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusableKt$focusable$2(MutableInteractionSource mutableInteractionSource, boolean z6) {
        super(3);
        this.$interactionSource = mutableInteractionSource;
        this.$enabled = z6;
    }

    @Composable
    @NotNull
    public final Modifier e(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        Modifier modifierA;
        Modifier modifier;
        t.j(composed, "$this$composed");
        composer.G(1871352361);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH2;
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            objH3 = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH3);
        }
        composer.Q();
        MutableState mutableState2 = (MutableState) objH3;
        composer.G(-492369756);
        Object objH4 = composer.H();
        if (objH4 == companion.a()) {
            objH4 = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            composer.z(objH4);
        }
        composer.Q();
        MutableState mutableState3 = (MutableState) objH4;
        composer.G(-492369756);
        Object objH5 = composer.H();
        if (objH5 == companion.a()) {
            objH5 = new FocusRequester();
            composer.z(objH5);
        }
        composer.Q();
        FocusRequester focusRequester = (FocusRequester) objH5;
        composer.G(-492369756);
        Object objH6 = composer.H();
        if (objH6 == companion.a()) {
            objH6 = BringIntoViewRequesterKt.a();
            composer.z(objH6);
        }
        composer.Q();
        BringIntoViewRequester bringIntoViewRequester = (BringIntoViewRequester) objH6;
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        EffectsKt.a(mutableInteractionSource, new AnonymousClass1(mutableState, mutableInteractionSource), composer, 0);
        EffectsKt.a(Boolean.valueOf(this.$enabled), new AnonymousClass2(this.$enabled, o0VarA, mutableState, this.$interactionSource), composer, 0);
        if (this.$enabled) {
            if (h(mutableState3)) {
                composer.G(-492369756);
                Object objH7 = composer.H();
                if (objH7 == companion.a()) {
                    objH7 = new FocusedBoundsModifier();
                    composer.z(objH7);
                }
                composer.Q();
                modifier = (Modifier) objH7;
            } else {
                modifier = Modifier.Companion;
            }
            modifierA = FocusModifierKt.a(FocusChangedModifierKt.a(FocusRequesterModifierKt.a(BringIntoViewRequesterKt.b(FocusableKt.f(SemanticsModifierKt.c(Modifier.Companion, false, new AnonymousClass3(mutableState3, focusRequester), 1, null), new AnonymousClass4(mutableState2)), bringIntoViewRequester), focusRequester).B(modifier), new AnonymousClass5(o0VarA, mutableState3, bringIntoViewRequester, mutableState2, mutableState, this.$interactionSource)));
        } else {
            modifierA = Modifier.Companion;
        }
        composer.Q();
        return modifierA;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return e(modifier, composer, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PinnableParent f(MutableState<PinnableParent> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(MutableState<PinnableParent> mutableState, PinnableParent pinnableParent) {
        mutableState.setValue(pinnableParent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(MutableState<Boolean> mutableState, boolean z6) {
        mutableState.setValue(Boolean.valueOf(z6));
    }
}
