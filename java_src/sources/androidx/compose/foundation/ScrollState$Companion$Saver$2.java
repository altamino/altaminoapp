package androidx.compose.foundation;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class ScrollState$Companion$Saver$2 extends v implements l<Integer, ScrollState> {
    public static final ScrollState$Companion$Saver$2 INSTANCE = new ScrollState$Companion$Saver$2();

    ScrollState$Companion$Saver$2() {
        super(1);
    }

    @Nullable
    public final ScrollState b(int i10) {
        return new ScrollState(i10);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ ScrollState invoke(Integer num) {
        return b(num.intValue());
    }
}
