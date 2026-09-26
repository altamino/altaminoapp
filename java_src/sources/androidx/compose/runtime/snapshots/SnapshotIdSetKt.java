package androidx.compose.runtime.snapshots;

import kotlin.jvm.internal.t;
import okhttp3.internal.ws.WebSocketProtocol;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class SnapshotIdSetKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(long j6) {
        int i10;
        if ((4294967295L & j6) == 0) {
            i10 = 32;
            j6 >>= 32;
        } else {
            i10 = 0;
        }
        if ((WebSocketProtocol.PAYLOAD_SHORT_MAX & j6) == 0) {
            i10 += 16;
            j6 >>= 16;
        }
        if ((255 & j6) == 0) {
            i10 += 8;
            j6 >>= 8;
        }
        if ((15 & j6) == 0) {
            i10 += 4;
            j6 >>= 4;
        }
        if ((1 & j6) != 0) {
            return i10;
        }
        if ((2 & j6) != 0) {
            return i10 + 1;
        }
        if ((4 & j6) != 0) {
            return i10 + 2;
        }
        if ((j6 & 8) != 0) {
            return i10 + 3;
        }
        return -1;
    }

    public static final int b(@NotNull int[] iArr, int i10) {
        t.j(iArr, "<this>");
        int length = iArr.length - 1;
        int i11 = 0;
        while (i11 <= length) {
            int i12 = (i11 + length) >>> 1;
            int i13 = iArr[i12];
            if (i10 > i13) {
                i11 = i12 + 1;
            } else {
                if (i10 >= i13) {
                    return i12;
                }
                length = i12 - 1;
            }
        }
        return -(i11 + 1);
    }
}
