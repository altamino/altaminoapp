package androidx.datastore.core;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class UnInitialized extends State<Object> {

    @NotNull
    public static final UnInitialized INSTANCE = new UnInitialized();

    private UnInitialized() {
        super(null);
    }
}
