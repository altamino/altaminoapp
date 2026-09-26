package androidx.compose.ui.text;

import e8.l;
import e8.q;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class JvmAnnotatedString_jvmKt$transform$1 extends v implements l<List<? extends Integer>, Integer> {
    final /* synthetic */ Map<Integer, Integer> $offsetMap;
    final /* synthetic */ p0<String> $resultStr;
    final /* synthetic */ AnnotatedString $this_transform;
    final /* synthetic */ q<String, Integer, Integer, String> $transform;

    /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.String] */
    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(@NotNull List<Integer> list) {
        t.j(list, "<name for destructuring parameter 0>");
        int iIntValue = list.get(0).intValue();
        int iIntValue2 = list.get(1).intValue();
        this.$resultStr.element = this.$resultStr.element + this.$transform.invoke(this.$this_transform.g(), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2));
        return this.$offsetMap.put(Integer.valueOf(iIntValue2), Integer.valueOf(this.$resultStr.element.length()));
    }
}
