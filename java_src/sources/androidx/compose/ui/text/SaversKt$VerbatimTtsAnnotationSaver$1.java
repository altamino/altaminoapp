package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$VerbatimTtsAnnotationSaver$1 extends v implements p<SaverScope, VerbatimTtsAnnotation, Object> {
    public static final SaversKt$VerbatimTtsAnnotationSaver$1 INSTANCE = new SaversKt$VerbatimTtsAnnotationSaver$1();

    SaversKt$VerbatimTtsAnnotationSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull VerbatimTtsAnnotation it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return SaversKt.s(it.a());
    }
}
