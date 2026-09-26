package androidx.compose.foundation.text;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.text.ComposableSingletons$BasicTextFieldKt$lambda-2$1, reason: invalid class name */
/* JADX INFO: loaded from: classes8.dex */
final class ComposableSingletons$BasicTextFieldKt$lambda2$1 extends v implements q<p<? super Composer, ? super Integer, ? extends l0>, Composer, Integer, l0> {
    public static final ComposableSingletons$BasicTextFieldKt$lambda2$1 INSTANCE = new ComposableSingletons$BasicTextFieldKt$lambda2$1();

    ComposableSingletons$BasicTextFieldKt$lambda2$1() {
        super(3);
    }

    @Composable
    @ComposableInferredTarget
    public final void a(@NotNull p<? super Composer, ? super Integer, l0> innerTextField, @Nullable Composer composer, int i10) {
        t.j(innerTextField, "innerTextField");
        if ((i10 & 14) == 0) {
            i10 |= composer.k(innerTextField) ? 4 : 2;
        }
        if ((i10 & 91) == 18 && composer.b()) {
            composer.g();
        } else {
            innerTextField.invoke(composer, Integer.valueOf(i10 & 14));
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(p<? super Composer, ? super Integer, ? extends l0> pVar, Composer composer, Integer num) {
        a(pVar, composer, num.intValue());
        return l0.INSTANCE;
    }
}
