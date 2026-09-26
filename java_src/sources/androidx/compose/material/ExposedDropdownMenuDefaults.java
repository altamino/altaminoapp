package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import e8.a;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
@ExperimentalMaterialApi
public final class ExposedDropdownMenuDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final ExposedDropdownMenuDefaults INSTANCE = new ExposedDropdownMenuDefaults();

    /* JADX WARN: Code duplicated, block: B:30:0x004d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x004f  */
    /* JADX WARN: Code duplicated, block: B:32:0x0053  */
    /* JADX WARN: Code duplicated, block: B:37:0x007f  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    @ComposableTarget
    @Composable
    @ExperimentalMaterialApi
    public final void a(boolean z6, @Nullable a<l0> aVar, @Nullable Composer composer, int i10, int i11) {
        int i12;
        a<l0> aVar2;
        a<l0> aVar3;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(876077373);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = i10 | (composerS.m(z6) ? 4 : 2);
        } else {
            i12 = i10;
        }
        int i13 = i11 & 2;
        if (i13 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(aVar) ? 32 : 16;
            }
            if ((i12 & 91) == 18 || !composerS.b()) {
                if (i13 != 0) {
                    aVar2 = ExposedDropdownMenuDefaults$TrailingIcon$1.INSTANCE;
                } else {
                    aVar2 = aVar;
                }
                aVar3 = aVar2;
                IconButtonKt.a(aVar3, SemanticsModifierKt.a(Modifier.Companion, ExposedDropdownMenuDefaults$TrailingIcon$2.INSTANCE), false, null, ComposableLambdaKt.b(composerS, 726122713, true, new ExposedDropdownMenuDefaults$TrailingIcon$3(z6)), composerS, ((i12 >> 3) & 14) | CpioConstants.C_ISBLK, 12);
            } else {
                composerS.g();
                aVar3 = aVar;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ExposedDropdownMenuDefaults$TrailingIcon$4(this, z6, aVar3, i10, i11));
        }
        i12 |= 48;
        if ((i12 & 91) == 18) {
            if (i13 != 0) {
                aVar2 = ExposedDropdownMenuDefaults$TrailingIcon$1.INSTANCE;
            } else {
                aVar2 = aVar;
            }
            aVar3 = aVar2;
            IconButtonKt.a(aVar3, SemanticsModifierKt.a(Modifier.Companion, ExposedDropdownMenuDefaults$TrailingIcon$2.INSTANCE), false, null, ComposableLambdaKt.b(composerS, 726122713, true, new ExposedDropdownMenuDefaults$TrailingIcon$3(z6)), composerS, ((i12 >> 3) & 14) | CpioConstants.C_ISBLK, 12);
        } else {
            if (i13 != 0) {
                aVar2 = ExposedDropdownMenuDefaults$TrailingIcon$1.INSTANCE;
            } else {
                aVar2 = aVar;
            }
            aVar3 = aVar2;
            IconButtonKt.a(aVar3, SemanticsModifierKt.a(Modifier.Companion, ExposedDropdownMenuDefaults$TrailingIcon$2.INSTANCE), false, null, ComposableLambdaKt.b(composerS, 726122713, true, new ExposedDropdownMenuDefaults$TrailingIcon$3(z6)), composerS, ((i12 >> 3) & 14) | CpioConstants.C_ISBLK, 12);
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ExposedDropdownMenuDefaults$TrailingIcon$4(this, z6, aVar3, i10, i11));
    }

    private ExposedDropdownMenuDefaults() {
    }
}
