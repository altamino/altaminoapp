package com.google.android.exoplayer2.source;

/* JADX INFO: loaded from: classes6.dex */
public class h implements x0 {
    protected final x0[] loaders;

    @Override // com.google.android.exoplayer2.source.x0
    public boolean continueLoading(long j6) {
        boolean zContinueLoading;
        boolean z6 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            zContinueLoading = false;
            for (x0 x0Var : this.loaders) {
                long nextLoadPositionUs2 = x0Var.getNextLoadPositionUs();
                boolean z10 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j6;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z10) {
                    zContinueLoading |= x0Var.continueLoading(j6);
                }
            }
            z6 |= zContinueLoading;
        } while (zContinueLoading);
        return z6;
    }

    @Override // com.google.android.exoplayer2.source.x0
    public final long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (x0 x0Var : this.loaders) {
            long bufferedPositionUs = x0Var.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, bufferedPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.exoplayer2.source.x0
    public final long getNextLoadPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (x0 x0Var : this.loaders) {
            long nextLoadPositionUs = x0Var.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, nextLoadPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.exoplayer2.source.x0
    public boolean isLoading() {
        for (x0 x0Var : this.loaders) {
            if (x0Var.isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.x0
    public final void reevaluateBuffer(long j6) {
        for (x0 x0Var : this.loaders) {
            x0Var.reevaluateBuffer(j6);
        }
    }

    public h(x0[] x0VarArr) {
        this.loaders = x0VarArr;
    }
}
