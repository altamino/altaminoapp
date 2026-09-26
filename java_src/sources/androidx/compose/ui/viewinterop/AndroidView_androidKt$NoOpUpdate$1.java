package androidx.compose.ui.viewinterop;

import android.view.View;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidView_androidKt$NoOpUpdate$1 extends v implements l<View, l0> {
    public static final AndroidView_androidKt$NoOpUpdate$1 INSTANCE = new AndroidView_androidKt$NoOpUpdate$1();

    AndroidView_androidKt$NoOpUpdate$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull View view) {
        t.j(view, "$this$null");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(View view) {
        invoke2(view);
        return l0.INSTANCE;
    }
}
