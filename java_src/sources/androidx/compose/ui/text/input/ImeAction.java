package androidx.compose.ui.text.input;

import androidx.webkit.Profile;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ImeAction {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Default = j(1);
    private static final int None = j(0);
    private static final int Go = j(2);
    private static final int Search = j(3);
    private static final int Send = j(4);
    private static final int Previous = j(5);
    private static final int Next = j(6);
    private static final int Done = j(7);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return ImeAction.Default;
        }

        public final int b() {
            return ImeAction.Done;
        }

        public final int c() {
            return ImeAction.Go;
        }

        public final int d() {
            return ImeAction.Next;
        }

        public final int e() {
            return ImeAction.None;
        }

        public final int f() {
            return ImeAction.Previous;
        }

        public final int g() {
            return ImeAction.Search;
        }

        public final int h() {
            return ImeAction.Send;
        }
    }

    public static final /* synthetic */ ImeAction i(int i10) {
        return new ImeAction(i10);
    }

    public static int j(int i10) {
        return i10;
    }

    public static boolean k(int i10, Object obj) {
        return (obj instanceof ImeAction) && i10 == ((ImeAction) obj).o();
    }

    public static final boolean l(int i10, int i11) {
        return i10 == i11;
    }

    public static int m(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return k(this.value, obj);
    }

    public int hashCode() {
        return m(this.value);
    }

    public final /* synthetic */ int o() {
        return this.value;
    }

    @NotNull
    public static String n(int i10) {
        if (l(i10, None)) {
            return "None";
        }
        if (l(i10, Default)) {
            return Profile.DEFAULT_PROFILE_NAME;
        }
        if (l(i10, Go)) {
            return "Go";
        }
        if (l(i10, Search)) {
            return "Search";
        }
        if (l(i10, Send)) {
            return "Send";
        }
        if (l(i10, Previous)) {
            return "Previous";
        }
        if (l(i10, Next)) {
            return "Next";
        }
        return l(i10, Done) ? "Done" : "Invalid";
    }

    @NotNull
    public String toString() {
        return n(this.value);
    }

    private /* synthetic */ ImeAction(int i10) {
        this.value = i10;
    }
}
