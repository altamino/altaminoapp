package k8;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
class f {
    public static final double a(double d, @NotNull e sourceUnit, @NotNull e targetUnit) {
        t.j(sourceUnit, "sourceUnit");
        t.j(targetUnit, "targetUnit");
        long jConvert = targetUnit.b().convert(1L, sourceUnit.b());
        return jConvert > 0 ? d * jConvert : d / sourceUnit.b().convert(1L, targetUnit.b());
    }

    public static final long b(long j6, @NotNull e sourceUnit, @NotNull e targetUnit) {
        t.j(sourceUnit, "sourceUnit");
        t.j(targetUnit, "targetUnit");
        return targetUnit.b().convert(j6, sourceUnit.b());
    }

    public static final long c(long j6, @NotNull e sourceUnit, @NotNull e targetUnit) {
        t.j(sourceUnit, "sourceUnit");
        t.j(targetUnit, "targetUnit");
        return targetUnit.b().convert(j6, sourceUnit.b());
    }
}
