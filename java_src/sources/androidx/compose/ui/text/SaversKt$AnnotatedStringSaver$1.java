package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$AnnotatedStringSaver$1 extends v implements p<SaverScope, AnnotatedString, Object> {
    public static final SaversKt$AnnotatedStringSaver$1 INSTANCE = new SaversKt$AnnotatedStringSaver$1();

    SaversKt$AnnotatedStringSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull AnnotatedString it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return kotlin.collections.v.g(SaversKt.s(it.g()), SaversKt.t(it.e(), SaversKt.AnnotationRangeListSaver, Saver), SaversKt.t(it.d(), SaversKt.AnnotationRangeListSaver, Saver), SaversKt.t(it.b(), SaversKt.AnnotationRangeListSaver, Saver));
    }
}
