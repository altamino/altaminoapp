package androidx.compose.ui.text.platform.extensions;

import android.text.style.TtsSpan;
import androidx.compose.ui.text.TtsAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes9.dex */
public final class TtsAnnotationExtensions_androidKt {
    @NotNull
    public static final TtsSpan a(@NotNull TtsAnnotation ttsAnnotation) {
        t.j(ttsAnnotation, "<this>");
        if (ttsAnnotation instanceof VerbatimTtsAnnotation) {
            return b((VerbatimTtsAnnotation) ttsAnnotation);
        }
        throw new s();
    }

    @NotNull
    public static final TtsSpan b(@NotNull VerbatimTtsAnnotation verbatimTtsAnnotation) {
        t.j(verbatimTtsAnnotation, "<this>");
        TtsSpan ttsSpanBuild = new TtsSpan.VerbatimBuilder(verbatimTtsAnnotation.a()).build();
        t.i(ttsSpanBuild, "builder.build()");
        return ttsSpanBuild;
    }
}
