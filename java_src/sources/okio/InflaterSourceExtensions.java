package okio;

import java.util.zip.Inflater;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: renamed from: okio.-InflaterSourceExtensions, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public final class InflaterSourceExtensions {
    @NotNull
    public static final InflaterSource inflate(@NotNull Source source, @NotNull Inflater inflater) {
        kotlin.jvm.internal.t.j(source, "<this>");
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }

    public static /* synthetic */ InflaterSource inflate$default(Source source, Inflater inflater, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            inflater = new Inflater();
        }
        kotlin.jvm.internal.t.j(source, "<this>");
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }
}
