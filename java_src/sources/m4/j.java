package m4;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
public interface j {
    @NonNull
    a a(@NonNull String str);

    public enum a {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);

        private final int code;

        public int a() {
            return this.code;
        }

        a(int i10) {
            this.code = i10;
        }
    }
}
