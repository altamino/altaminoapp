package androidx.media3.common;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class FlagSet {
    private final SparseBooleanArray flags;

    public static final class Builder {
        private boolean buildCalled;
        private final SparseBooleanArray flags = new SparseBooleanArray();

        public Builder b(FlagSet flagSet) {
            for (int i10 = 0; i10 < flagSet.d(); i10++) {
                a(flagSet.c(i10));
            }
            return this;
        }

        public Builder c(int... iArr) {
            for (int i10 : iArr) {
                a(i10);
            }
            return this;
        }

        public Builder a(int i10) {
            Assertions.g(!this.buildCalled);
            this.flags.append(i10, true);
            return this;
        }

        public Builder d(int i10, boolean z6) {
            return z6 ? a(i10) : this;
        }

        public FlagSet e() {
            Assertions.g(!this.buildCalled);
            this.buildCalled = true;
            return new FlagSet(this.flags);
        }
    }

    public boolean b(int... iArr) {
        for (int i10 : iArr) {
            if (a(i10)) {
                return true;
            }
        }
        return false;
    }

    public int c(int i10) {
        Assertions.c(i10, 0, d());
        return this.flags.keyAt(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlagSet)) {
            return false;
        }
        FlagSet flagSet = (FlagSet) obj;
        if (Util.SDK_INT >= 24) {
            return this.flags.equals(flagSet.flags);
        }
        if (d() != flagSet.d()) {
            return false;
        }
        for (int i10 = 0; i10 < d(); i10++) {
            if (c(i10) != flagSet.c(i10)) {
                return false;
            }
        }
        return true;
    }

    private FlagSet(SparseBooleanArray sparseBooleanArray) {
        this.flags = sparseBooleanArray;
    }

    public boolean a(int i10) {
        return this.flags.get(i10);
    }

    public int d() {
        return this.flags.size();
    }

    public int hashCode() {
        if (Util.SDK_INT >= 24) {
            return this.flags.hashCode();
        }
        int iD = d();
        for (int i10 = 0; i10 < d(); i10++) {
            iD = (iD * 31) + c(i10);
        }
        return iD;
    }
}
