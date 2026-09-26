package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TouchMode_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class SelectionContainerKt$SelectionContainer$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $children;
    final /* synthetic */ SelectionManager $manager;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ SelectionRegistrarImpl $registrarImpl;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ p<Composer, Integer, l0> $children;
        final /* synthetic */ SelectionManager $manager;
        final /* synthetic */ Modifier $modifier;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00471 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ p<Composer, Integer, l0> $children;
            final /* synthetic */ SelectionManager $manager;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00471(p<? super Composer, ? super Integer, l0> pVar, int i10, SelectionManager selectionManager) {
                super(2);
                this.$children = pVar;
                this.$$dirty = i10;
                this.$manager = selectionManager;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                Selection selectionC;
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                this.$children.invoke(composer, Integer.valueOf((this.$$dirty >> 9) & 14));
                if (TouchMode_androidKt.a() && this.$manager.y() && (selectionC = this.$manager.C()) != null) {
                    SelectionManager selectionManager = this.$manager;
                    List listP = kotlin.collections.v.p(Boolean.TRUE, Boolean.FALSE);
                    int size = listP.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        boolean zBooleanValue = ((Boolean) listP.get(i11)).booleanValue();
                        Boolean boolValueOf = Boolean.valueOf(zBooleanValue);
                        composer.G(1157296644);
                        boolean zK = composer.k(boolValueOf);
                        Object objH = composer.H();
                        if (zK || objH == Composer.Companion.a()) {
                            objH = selectionManager.F(zBooleanValue);
                            composer.z(objH);
                        }
                        composer.Q();
                        TextDragObserver textDragObserver = (TextDragObserver) objH;
                        Offset offsetE = zBooleanValue ? selectionManager.E() : selectionManager.w();
                        ResolvedTextDirection resolvedTextDirectionA = zBooleanValue ? selectionC.e().a() : selectionC.c().a();
                        if (offsetE != null) {
                            AndroidSelectionHandles_androidKt.c(offsetE.u(), zBooleanValue, resolvedTextDirectionA, selectionC.d(), SuspendingPointerInputFilterKt.b(Modifier.Companion, textDragObserver, new SelectionContainerKt$SelectionContainer$3$1$1$1$1$1(textDragObserver, null)), null, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
                        }
                    }
                }
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Modifier modifier, SelectionManager selectionManager, p<? super Composer, ? super Integer, l0> pVar, int i10) {
            super(2);
            this.$modifier = modifier;
            this.$manager = selectionManager;
            this.$children = pVar;
            this.$$dirty = i10;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                SimpleLayoutKt.a(this.$modifier.B(this.$manager.z()), ComposableLambdaKt.b(composer, 1375295262, true, new C00471(this.$children, this.$$dirty, this.$manager)), composer, 48, 0);
            }
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SelectionContainerKt$SelectionContainer$3(SelectionRegistrarImpl selectionRegistrarImpl, Modifier modifier, SelectionManager selectionManager, p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$registrarImpl = selectionRegistrarImpl;
        this.$modifier = modifier;
        this.$manager = selectionManager;
        this.$children = pVar;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{SelectionRegistrarKt.a().c(this.$registrarImpl)}, ComposableLambdaKt.b(composer, 935424596, true, new AnonymousClass1(this.$modifier, this.$manager, this.$children, this.$$dirty)), composer, 56);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
