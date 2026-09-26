package androidx.work.impl.constraints;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class NetworkState {
    private final boolean isConnected;
    private final boolean isMetered;
    private final boolean isNotRoaming;
    private final boolean isValidated;

    public final boolean a() {
        return this.isConnected;
    }

    public final boolean b() {
        return this.isMetered;
    }

    public final boolean c() {
        return this.isNotRoaming;
    }

    public final boolean d() {
        return this.isValidated;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkState)) {
            return false;
        }
        NetworkState networkState = (NetworkState) obj;
        return this.isConnected == networkState.isConnected && this.isValidated == networkState.isValidated && this.isMetered == networkState.isMetered && this.isNotRoaming == networkState.isNotRoaming;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public int hashCode() {
        boolean z6 = this.isConnected;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        int i10 = r1 * 31;
        boolean z10 = this.isValidated;
        ?? r5 = z10;
        if (z10) {
            r5 = 1;
        }
        int i11 = (i10 + r5) * 31;
        boolean z11 = this.isMetered;
        ?? r10 = z11;
        if (z11) {
            r10 = 1;
        }
        int i12 = (i11 + r10) * 31;
        boolean z12 = this.isNotRoaming;
        return i12 + (z12 ? 1 : z12);
    }

    @NotNull
    public String toString() {
        return "NetworkState(isConnected=" + this.isConnected + ", isValidated=" + this.isValidated + ", isMetered=" + this.isMetered + ", isNotRoaming=" + this.isNotRoaming + ')';
    }

    public NetworkState(boolean z6, boolean z10, boolean z11, boolean z12) {
        this.isConnected = z6;
        this.isValidated = z10;
        this.isMetered = z11;
        this.isNotRoaming = z12;
    }
}
