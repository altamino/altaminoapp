package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.Offset;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class PointerInputChange {

    @Nullable
    private List<HistoricalChange> _historical;

    @NotNull
    private ConsumedData consumed;
    private final long id;
    private final long position;
    private final boolean pressed;
    private final long previousPosition;
    private final boolean previousPressed;
    private final long previousUptimeMillis;
    private final long scrollDelta;
    private final int type;
    private final long uptimeMillis;

    public /* synthetic */ PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, ConsumedData consumedData, int i10, k kVar) {
        this(j6, j10, j11, z6, j12, j13, z10, consumedData, i10);
    }

    public final long e() {
        return this.id;
    }

    public final long f() {
        return this.position;
    }

    public final boolean g() {
        return this.pressed;
    }

    public final long h() {
        return this.previousPosition;
    }

    public final boolean i() {
        return this.previousPressed;
    }

    public final long j() {
        return this.scrollDelta;
    }

    public final int k() {
        return this.type;
    }

    public final long l() {
        return this.uptimeMillis;
    }

    public /* synthetic */ PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, boolean z11, int i10, long j14, k kVar) {
        this(j6, j10, j11, z6, j12, j13, z10, z11, i10, j14);
    }

    public final void a() {
        this.consumed.c(true);
        this.consumed.d(true);
    }

    @ExperimentalComposeUiApi
    @NotNull
    public final PointerInputChange b(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, int i10, @NotNull List<HistoricalChange> historical, long j14) {
        t.j(historical, "historical");
        PointerInputChange pointerInputChange = new PointerInputChange(j6, j10, j11, z6, j12, j13, z10, false, i10, (List) historical, j14, (k) null);
        pointerInputChange.consumed = this.consumed;
        return pointerInputChange;
    }

    @ExperimentalComposeUiApi
    @NotNull
    public final List<HistoricalChange> d() {
        List<HistoricalChange> list = this._historical;
        return list == null ? v.m() : list;
    }

    public final boolean m() {
        return this.consumed.a() || this.consumed.b();
    }

    @NotNull
    public String toString() {
        return "PointerInputChange(id=" + ((Object) PointerId.f(this.id)) + ", uptimeMillis=" + this.uptimeMillis + ", position=" + ((Object) Offset.t(this.position)) + ", pressed=" + this.pressed + ", previousUptimeMillis=" + this.previousUptimeMillis + ", previousPosition=" + ((Object) Offset.t(this.previousPosition)) + ", previousPressed=" + this.previousPressed + ", isConsumed=" + m() + ", type=" + ((Object) PointerType.j(this.type)) + ", historical=" + d() + ",scrollDelta=" + ((Object) Offset.t(this.scrollDelta)) + ')';
    }

    public /* synthetic */ PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, boolean z11, int i10, List list, long j14, k kVar) {
        this(j6, j10, j11, z6, j12, j13, z10, z11, i10, (List<HistoricalChange>) list, j14);
    }

    private PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, boolean z11, int i10, long j14) {
        this.id = j6;
        this.uptimeMillis = j10;
        this.position = j11;
        this.pressed = z6;
        this.previousUptimeMillis = j12;
        this.previousPosition = j13;
        this.previousPressed = z10;
        this.type = i10;
        this.scrollDelta = j14;
        this.consumed = new ConsumedData(z11, z11);
    }

    public /* synthetic */ PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, boolean z11, int i10, long j14, int i11, k kVar) {
        this(j6, j10, j11, z6, j12, j13, z10, z11, (i11 & 256) != 0 ? PointerType.Companion.d() : i10, (i11 & 512) != 0 ? Offset.Companion.c() : j14, (k) null);
    }

    public /* synthetic */ PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, ConsumedData consumedData, int i10, int i11, k kVar) {
        this(j6, j10, j11, z6, j12, j13, z10, consumedData, (i11 & 256) != 0 ? PointerType.Companion.d() : i10, (k) null);
    }

    private PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, ConsumedData consumedData, int i10) {
        this(j6, j10, j11, z6, j12, j13, z10, consumedData.a() || consumedData.b(), i10, Offset.Companion.c(), (k) null);
    }

    private PointerInputChange(long j6, long j10, long j11, boolean z6, long j12, long j13, boolean z10, boolean z11, int i10, List<HistoricalChange> list, long j14) {
        this(j6, j10, j11, z6, j12, j13, z10, z11, i10, j14, (k) null);
        this._historical = list;
    }
}
