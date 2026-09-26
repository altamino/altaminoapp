package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TextFieldScrollerPosition$Companion$Saver$1 extends v implements p<SaverScope, TextFieldScrollerPosition, List<? extends Object>> {
    public static final TextFieldScrollerPosition$Companion$Saver$1 INSTANCE = new TextFieldScrollerPosition$Companion$Saver$1();

    TextFieldScrollerPosition$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Object> invoke(@NotNull SaverScope listSaver, @NotNull TextFieldScrollerPosition it) {
        t.j(listSaver, "$this$listSaver");
        t.j(it, "it");
        Object[] objArr = new Object[2];
        objArr[0] = Float.valueOf(it.d());
        objArr[1] = Boolean.valueOf(it.f() == Orientation.Vertical);
        return kotlin.collections.v.p(objArr);
    }
}
