package coil.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class o extends m {
    private final boolean allowHardware;

    public o(boolean z6) {
        super(null);
        this.allowHardware = z6;
    }

    @Override // coil.util.m
    public boolean a(@NotNull coil.size.i iVar) {
        return this.allowHardware;
    }

    @Override // coil.util.m
    public boolean b() {
        return this.allowHardware;
    }
}
