package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class b {
    static {
        Owner.Companion companion = Owner.Companion;
    }

    public static /* synthetic */ void a(Owner owner, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: measureAndLayout");
        }
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        owner.a(z6);
    }
}
