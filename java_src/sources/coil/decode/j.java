package coil.decode;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    public static final j NONE = new j(false, 0);
    private final boolean isFlipped;
    private final int rotationDegrees;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public final int a() {
        return this.rotationDegrees;
    }

    public final boolean b() {
        return this.isFlipped;
    }

    public j(boolean z6, int i10) {
        this.isFlipped = z6;
        this.rotationDegrees = i10;
    }
}
