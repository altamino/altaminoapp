package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$ShadowSaver$2 extends v implements l<Object, Shadow> {
    public static final SaversKt$ShadowSaver$2 INSTANCE = new SaversKt$ShadowSaver$2();

    SaversKt$ShadowSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Shadow invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        Saver<Color, Object> saverG = SaversKt.g(Color.Companion);
        Boolean bool = Boolean.FALSE;
        Color colorB = (t.e(obj, bool) || obj == null) ? null : saverG.b(obj);
        t.g(colorB);
        long jV = colorB.v();
        Object obj2 = list.get(1);
        Offset offsetB = (t.e(obj2, bool) || obj2 == null) ? null : SaversKt.f(Offset.Companion).b(obj2);
        t.g(offsetB);
        long jU = offsetB.u();
        Object obj3 = list.get(2);
        Float f = obj3 != null ? (Float) obj3 : null;
        t.g(f);
        return new Shadow(jV, jU, f.floatValue(), null);
    }
}
