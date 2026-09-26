package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidAlertDialog_androidKt$AlertDialog$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $buttons;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ p<Composer, Integer, l0> $text;
    final /* synthetic */ p<Composer, Integer, l0> $title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidAlertDialog_androidKt$AlertDialog$3(p<? super Composer, ? super Integer, l0> pVar, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, Shape shape, long j6, long j10, int i10) {
        super(2);
        this.$buttons = pVar;
        this.$modifier = modifier;
        this.$title = pVar2;
        this.$text = pVar3;
        this.$shape = shape;
        this.$backgroundColor = j6;
        this.$contentColor = j10;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        p<Composer, Integer, l0> pVar = this.$buttons;
        Modifier modifier = this.$modifier;
        p<Composer, Integer, l0> pVar2 = this.$title;
        p<Composer, Integer, l0> pVar3 = this.$text;
        Shape shape = this.$shape;
        long j6 = this.$backgroundColor;
        long j10 = this.$contentColor;
        int i11 = this.$$dirty;
        AlertDialogKt.b(pVar, modifier, pVar2, pVar3, shape, j6, j10, composer, ((i11 >> 3) & 14) | ((i11 >> 3) & 112) | ((i11 >> 3) & 896) | ((i11 >> 3) & 7168) | ((i11 >> 3) & 57344) | ((i11 >> 3) & 458752) | ((i11 >> 3) & 3670016), 0);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
