package androidx.compose.material;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.RotateKt;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class ExposedDropdownMenuDefaults$TrailingIcon$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ boolean $expanded;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuDefaults$TrailingIcon$3(boolean z6) {
        super(2);
        this.$expanded = z6;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            IconKt.b(ArrowDropDownKt.a(Icons.Filled.INSTANCE), "Trailing icon for exposed dropdown menu", RotateKt.a(Modifier.Companion, this.$expanded ? 180.0f : 360.0f), 0L, composer, 48, 8);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
