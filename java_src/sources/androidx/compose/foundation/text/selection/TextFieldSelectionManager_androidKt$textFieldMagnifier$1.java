package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.MagnifierKt;
import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class TextFieldSelectionManager_androidKt$textFieldMagnifier$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ TextFieldSelectionManager $manager;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<Offset> {
        final /* synthetic */ MutableState<IntSize> $magnifierSize$delegate;
        final /* synthetic */ TextFieldSelectionManager $manager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TextFieldSelectionManager textFieldSelectionManager, MutableState<IntSize> mutableState) {
            super(0);
            this.$manager = textFieldSelectionManager;
            this.$magnifierSize$delegate = mutableState;
        }

        public final long b() {
            return TextFieldSelectionManagerKt.b(this.$manager, TextFieldSelectionManager_androidKt$textFieldMagnifier$1.d(this.$magnifierSize$delegate));
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ Offset invoke() {
            return Offset.d(b());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<e8.a<? extends Offset>, Modifier> {
        final /* synthetic */ Density $density;
        final /* synthetic */ MutableState<IntSize> $magnifierSize$delegate;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$1, reason: invalid class name */
        static final class AnonymousClass1 extends v implements l<Density, Offset> {
            final /* synthetic */ e8.a<Offset> $center;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(e8.a<Offset> aVar) {
                super(1);
                this.$center = aVar;
            }

            public final long a(@NotNull Density magnifier) {
                t.j(magnifier, "$this$magnifier");
                return this.$center.invoke().u();
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ Offset invoke(Density density) {
                return Offset.d(a(density));
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$textFieldMagnifier$1$2$2, reason: invalid class name and collision with other inner class name */
        static final class C00502 extends v implements l<DpSize, l0> {
            final /* synthetic */ Density $density;
            final /* synthetic */ MutableState<IntSize> $magnifierSize$delegate;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00502(Density density, MutableState<IntSize> mutableState) {
                super(1);
                this.$density = density;
                this.$magnifierSize$delegate = mutableState;
            }

            public final void a(long j6) {
                MutableState<IntSize> mutableState = this.$magnifierSize$delegate;
                Density density = this.$density;
                TextFieldSelectionManager_androidKt$textFieldMagnifier$1.e(mutableState, IntSizeKt.a(density.j0(DpSize.h(j6)), density.j0(DpSize.g(j6))));
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(DpSize dpSize) {
                a(dpSize.l());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Density density, MutableState<IntSize> mutableState) {
            super(1);
            this.$density = density;
            this.$magnifierSize$delegate = mutableState;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Modifier invoke(@NotNull e8.a<Offset> center) {
            t.j(center, "center");
            return MagnifierKt.f(Modifier.Companion, new AnonymousClass1(center), null, 0.0f, MagnifierStyle.Companion.b(), new C00502(this.$density, this.$magnifierSize$delegate), 6, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldSelectionManager_androidKt$textFieldMagnifier$1(TextFieldSelectionManager textFieldSelectionManager) {
        super(3);
        this.$manager = textFieldSelectionManager;
    }

    @Composable
    @NotNull
    public final Modifier c(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1980580247);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(IntSize.b(IntSize.Companion.a()), null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        Modifier modifierE = SelectionMagnifierKt.e(composed, new AnonymousClass1(this.$manager, mutableState), new AnonymousClass2(density, mutableState));
        composer.Q();
        return modifierE;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return c(modifier, composer, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long d(MutableState<IntSize> mutableState) {
        return mutableState.getValue().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(MutableState<IntSize> mutableState, long j6) {
        mutableState.setValue(IntSize.b(j6));
    }
}
