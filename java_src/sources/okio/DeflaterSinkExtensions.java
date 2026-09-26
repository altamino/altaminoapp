package okio;

import java.util.zip.Deflater;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: renamed from: okio.-DeflaterSinkExtensions, reason: invalid class name */
/* JADX INFO: loaded from: classes10.dex */
public final class DeflaterSinkExtensions {
    @NotNull
    public static final DeflaterSink deflate(@NotNull Sink sink, @NotNull Deflater deflater) {
        kotlin.jvm.internal.t.j(sink, "<this>");
        kotlin.jvm.internal.t.j(deflater, "deflater");
        return new DeflaterSink(sink, deflater);
    }

    public static /* synthetic */ DeflaterSink deflate$default(Sink sink, Deflater deflater, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            deflater = new Deflater();
        }
        kotlin.jvm.internal.t.j(sink, "<this>");
        kotlin.jvm.internal.t.j(deflater, "deflater");
        return new DeflaterSink(sink, deflater);
    }
}
