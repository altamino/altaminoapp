package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface b0 {

    public static final class a {
        public final c0 first;
        public final c0 second;

        public a(c0 c0Var) {
            this(c0Var, c0Var);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.first.equals(aVar.first) && this.second.equals(aVar.second);
        }

        public a(c0 c0Var, c0 c0Var2) {
            this.first = (c0) com.google.android.exoplayer2.util.a.e(c0Var);
            this.second = (c0) com.google.android.exoplayer2.util.a.e(c0Var2);
        }

        public int hashCode() {
            return (this.first.hashCode() * 31) + this.second.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(this.first);
            if (this.first.equals(this.second)) {
                str = "";
            } else {
                str = ", " + this.second;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    public static class b implements b0 {
        private final long durationUs;
        private final a startSeekPoints;

        public b(long j6) {
            this(j6, 0L);
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public a getSeekPoints(long j6) {
            return this.startSeekPoints;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean isSeekable() {
            return false;
        }

        public b(long j6, long j10) {
            this.durationUs = j6;
            this.startSeekPoints = new a(j10 == 0 ? c0.START : new c0(0L, j10));
        }
    }

    long getDurationUs();

    a getSeekPoints(long j6);

    boolean isSeekable();
}
