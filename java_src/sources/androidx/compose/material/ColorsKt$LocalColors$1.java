package androidx.compose.material;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import e8.a;
import kotlin.jvm.internal.v;
import org.apache.commons.compress.archivers.zip.UnixStat;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class ColorsKt$LocalColors$1 extends v implements a<Colors> {
    public static final ColorsKt$LocalColors$1 INSTANCE = new ColorsKt$LocalColors$1();

    ColorsKt$LocalColors$1() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Colors invoke() {
        return ColorsKt.g((UnixStat.PERM_MASK & 1) != 0 ? ColorKt.d(4284612846L) : 0L, (UnixStat.PERM_MASK & 2) != 0 ? ColorKt.d(4281794739L) : 0L, (UnixStat.PERM_MASK & 4) != 0 ? ColorKt.d(4278442694L) : 0L, (UnixStat.PERM_MASK & 8) != 0 ? ColorKt.d(4278290310L) : 0L, (UnixStat.PERM_MASK & 16) != 0 ? Color.Companion.g() : 0L, (UnixStat.PERM_MASK & 32) != 0 ? Color.Companion.g() : 0L, (UnixStat.PERM_MASK & 64) != 0 ? ColorKt.d(4289724448L) : 0L, (UnixStat.PERM_MASK & 128) != 0 ? Color.Companion.g() : 0L, (UnixStat.PERM_MASK & 256) != 0 ? Color.Companion.a() : 0L, (UnixStat.PERM_MASK & 512) != 0 ? Color.Companion.a() : 0L, (UnixStat.PERM_MASK & 1024) != 0 ? Color.Companion.a() : 0L, (UnixStat.PERM_MASK & 2048) != 0 ? Color.Companion.g() : 0L);
    }
}
