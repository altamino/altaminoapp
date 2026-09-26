package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.e0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class d implements g, c {

    @NotNull
    public static final d INSTANCE = new d();

    @Override // kotlin.sequences.c
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public d a(int i10) {
        return INSTANCE;
    }

    @Override // kotlin.sequences.c
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public d b(int i10) {
        return INSTANCE;
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator iterator() {
        return e0.INSTANCE;
    }

    private d() {
    }
}
