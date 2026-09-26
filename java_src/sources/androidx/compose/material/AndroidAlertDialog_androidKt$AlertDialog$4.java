package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.window.DialogProperties;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidAlertDialog_androidKt$AlertDialog$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $buttons;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ a<l0> $onDismissRequest;
    final /* synthetic */ DialogProperties $properties;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ p<Composer, Integer, l0> $text;
    final /* synthetic */ p<Composer, Integer, l0> $title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidAlertDialog_androidKt$AlertDialog$4(a<l0> aVar, p<? super Composer, ? super Integer, l0> pVar, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, Shape shape, long j6, long j10, DialogProperties dialogProperties, int i10, int i11) {
        super(2);
        this.$onDismissRequest = aVar;
        this.$buttons = pVar;
        this.$modifier = modifier;
        this.$title = pVar2;
        this.$text = pVar3;
        this.$shape = shape;
        this.$backgroundColor = j6;
        this.$contentColor = j10;
        this.$properties = dialogProperties;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidAlertDialog_androidKt.b(this.$onDismissRequest, this.$buttons, this.$modifier, this.$title, this.$text, this.$shape, this.$backgroundColor, this.$contentColor, this.$properties, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
