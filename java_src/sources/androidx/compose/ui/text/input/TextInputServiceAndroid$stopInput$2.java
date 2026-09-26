package androidx.compose.ui.text.input;

import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TextInputServiceAndroid$stopInput$2 extends v implements l<ImeAction, l0> {
    public static final TextInputServiceAndroid$stopInput$2 INSTANCE = new TextInputServiceAndroid$stopInput$2();

    TextInputServiceAndroid$stopInput$2() {
        super(1);
    }

    public final void b(int i10) {
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ImeAction imeAction) {
        b(imeAction.o());
        return l0.INSTANCE;
    }
}
