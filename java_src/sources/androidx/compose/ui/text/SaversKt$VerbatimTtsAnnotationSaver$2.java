package androidx.compose.ui.text;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$VerbatimTtsAnnotationSaver$2 extends v implements l<Object, VerbatimTtsAnnotation> {
    public static final SaversKt$VerbatimTtsAnnotationSaver$2 INSTANCE = new SaversKt$VerbatimTtsAnnotationSaver$2();

    SaversKt$VerbatimTtsAnnotationSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final VerbatimTtsAnnotation invoke(@NotNull Object it) {
        t.j(it, "it");
        return new VerbatimTtsAnnotation((String) it);
    }
}
