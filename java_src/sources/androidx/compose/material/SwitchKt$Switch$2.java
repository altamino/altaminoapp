package androidx.compose.material;

import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class SwitchKt$Switch$2 extends v implements p<Boolean, Boolean, ThresholdConfig> {
    public static final SwitchKt$Switch$2 INSTANCE = new SwitchKt$Switch$2();

    SwitchKt$Switch$2() {
        super(2);
    }

    @NotNull
    public final ThresholdConfig a(boolean z6, boolean z10) {
        return new FractionalThreshold(0.5f);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ ThresholdConfig invoke(Boolean bool, Boolean bool2) {
        return a(bool.booleanValue(), bool2.booleanValue());
    }
}
