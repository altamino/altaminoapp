package androidx.compose.foundation.lazy.grid;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface LazyGridItemInfo {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int UnknownColumn = -1;
    public static final int UnknownRow = -1;

    long a();

    int b();

    long c();

    int d();

    int getIndex();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int UnknownColumn = -1;
        public static final int UnknownRow = -1;

        private Companion() {
        }
    }
}
