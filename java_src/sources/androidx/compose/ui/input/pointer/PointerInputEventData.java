package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class PointerInputEventData {
    private final boolean down;

    @NotNull
    private final List<HistoricalChange> historical;
    private final long id;
    private final boolean issuesEnterExit;
    private final long position;
    private final long positionOnScreen;
    private final long scrollDelta;
    private final int type;
    private final long uptime;

    public /* synthetic */ PointerInputEventData(long j6, long j10, long j11, long j12, boolean z6, int i10, boolean z10, List list, long j13, k kVar) {
        this(j6, j10, j11, j12, z6, i10, z10, list, j13);
    }

    public final boolean a() {
        return this.down;
    }

    @NotNull
    public final List<HistoricalChange> b() {
        return this.historical;
    }

    public final long c() {
        return this.id;
    }

    public final boolean d() {
        return this.issuesEnterExit;
    }

    public final long e() {
        return this.position;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointerInputEventData)) {
            return false;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        return PointerId.d(this.id, pointerInputEventData.id) && this.uptime == pointerInputEventData.uptime && Offset.j(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.j(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && PointerType.h(this.type, pointerInputEventData.type) && this.issuesEnterExit == pointerInputEventData.issuesEnterExit && t.e(this.historical, pointerInputEventData.historical) && Offset.j(this.scrollDelta, pointerInputEventData.scrollDelta);
    }

    public final long f() {
        return this.positionOnScreen;
    }

    public final long g() {
        return this.scrollDelta;
    }

    public final int h() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iE = ((((((PointerId.e(this.id) * 31) + i.a.a(this.uptime)) * 31) + Offset.o(this.positionOnScreen)) * 31) + Offset.o(this.position)) * 31;
        boolean z6 = this.down;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        int i10 = (((iE + r1) * 31) + PointerType.i(this.type)) * 31;
        boolean z10 = this.issuesEnterExit;
        return ((((i10 + (z10 ? 1 : z10)) * 31) + this.historical.hashCode()) * 31) + Offset.o(this.scrollDelta);
    }

    public final long i() {
        return this.uptime;
    }

    @NotNull
    public String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.f(this.id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.t(this.positionOnScreen)) + ", position=" + ((Object) Offset.t(this.position)) + ", down=" + this.down + ", type=" + ((Object) PointerType.j(this.type)) + ", issuesEnterExit=" + this.issuesEnterExit + ", historical=" + this.historical + ", scrollDelta=" + ((Object) Offset.t(this.scrollDelta)) + ')';
    }

    private PointerInputEventData(long j6, long j10, long j11, long j12, boolean z6, int i10, boolean z10, List<HistoricalChange> list, long j13) {
        this.id = j6;
        this.uptime = j10;
        this.positionOnScreen = j11;
        this.position = j12;
        this.down = z6;
        this.type = i10;
        this.issuesEnterExit = z10;
        this.historical = list;
        this.scrollDelta = j13;
    }

    public /* synthetic */ PointerInputEventData(long j6, long j10, long j11, long j12, boolean z6, int i10, boolean z10, List list, long j13, int i11, k kVar) {
        this(j6, j10, j11, j12, z6, i10, (i11 & 64) != 0 ? false : z10, (i11 & 128) != 0 ? new ArrayList() : list, (i11 & 256) != 0 ? Offset.Companion.c() : j13, null);
    }
}
