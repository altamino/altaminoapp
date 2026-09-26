package androidx.core.content;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class SharedPreferencesCompat {

    @Deprecated
    public static final class EditorCompat {
        private static EditorCompat sInstance;
        private final Helper mHelper = new Helper();

        private static class Helper {
            Helper() {
            }
        }

        private EditorCompat() {
        }
    }

    private SharedPreferencesCompat() {
    }
}
