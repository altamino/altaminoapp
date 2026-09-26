package androidx.compose.foundation;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class IndicationKt$LocalIndication$1 extends v implements e8.a<Indication> {
    public static final IndicationKt$LocalIndication$1 INSTANCE = new IndicationKt$LocalIndication$1();

    IndicationKt$LocalIndication$1() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Indication invoke() {
        return DefaultDebugIndication.INSTANCE;
    }
}
