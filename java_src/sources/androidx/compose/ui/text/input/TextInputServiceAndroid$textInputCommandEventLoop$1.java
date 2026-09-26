package androidx.compose.ui.text.input;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.ui.text.input.TextInputServiceAndroid", f = "TextInputServiceAndroid.android.kt", l = {189}, m = "textInputCommandEventLoop")
final class TextInputServiceAndroid$textInputCommandEventLoop$1 extends d {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TextInputServiceAndroid this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextInputServiceAndroid$textInputCommandEventLoop$1(TextInputServiceAndroid textInputServiceAndroid, kotlin.coroutines.d<? super TextInputServiceAndroid$textInputCommandEventLoop$1> dVar) {
        super(dVar);
        this.this$0 = textInputServiceAndroid;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.n(this);
    }
}
