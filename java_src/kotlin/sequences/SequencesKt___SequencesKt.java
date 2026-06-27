package kotlin.sequences;

import java.io.IOException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringBuilderKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Sequences.kt */
/* loaded from: classes4.dex */
public class SequencesKt___SequencesKt extends SequencesKt___SequencesJvmKt {
    public static <T> Sequence<T> filter(Sequence<? extends T> filter, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(filter, "$this$filter");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        return new FilteringSequence(filter, true, predicate);
    }

    public static <T, R> Sequence<R> map(Sequence<? extends T> map, Function1<? super T, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(map, "$this$map");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        return new TransformingSequence(map, transform);
    }

    public static final <T, A extends Appendable> A joinTo(Sequence<? extends T> joinTo, A buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i, CharSequence truncated, Function1<? super T, ? extends CharSequence> function1) throws IOException {
        Intrinsics.checkParameterIsNotNull(joinTo, "$this$joinTo");
        Intrinsics.checkParameterIsNotNull(buffer, "buffer");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        Intrinsics.checkParameterIsNotNull(postfix, "postfix");
        Intrinsics.checkParameterIsNotNull(truncated, "truncated");
        buffer.append(prefix);
        int i2 = 0;
        for (T t : joinTo) {
            i2++;
            if (i2 > 1) {
                buffer.append(separator);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            StringsKt__StringBuilderKt.appendElement(buffer, t, function1);
        }
        if (i >= 0 && i2 > i) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static /* synthetic */ String joinToString$default(Sequence sequence, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i2 & 4) == 0 ? charSequence3 : "";
        int i3 = (i2 & 8) != 0 ? -1 : i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i2 & 32) != 0) {
            function1 = null;
        }
        return joinToString(sequence, charSequence, charSequence5, charSequence6, i3, charSequence7, function1);
    }

    public static final <T> String joinToString(Sequence<? extends T> joinToString, CharSequence separator, CharSequence prefix, CharSequence postfix, int i, CharSequence truncated, Function1<? super T, ? extends CharSequence> function1) throws IOException {
        Intrinsics.checkParameterIsNotNull(joinToString, "$this$joinToString");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        Intrinsics.checkParameterIsNotNull(postfix, "postfix");
        Intrinsics.checkParameterIsNotNull(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        joinTo(joinToString, sb, separator, prefix, postfix, i, truncated, function1);
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static <T> Iterable<T> asIterable(Sequence<? extends T> asIterable) {
        Intrinsics.checkParameterIsNotNull(asIterable, "$this$asIterable");
        return new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(asIterable);
    }
}
