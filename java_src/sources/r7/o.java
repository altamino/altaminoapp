package r7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class o extends Exception {
    /* JADX WARN: Multi-variable type inference failed */
    public o() {
        this((String) null, 1, (kotlin.jvm.internal.k) (0 == true ? 1 : 0));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(@NotNull String message) {
        super(message);
        t.j(message, "message");
    }

    public /* synthetic */ o(String str, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? "Not enough free space" : str);
    }

    public o(int i10, int i11) {
        this("Not enough free space to write " + i10 + " bytes, available " + i11 + " bytes.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(@NotNull String name, int i10, int i11) {
        this("Not enough free space to write " + name + " of " + i10 + " bytes, available " + i11 + " bytes.");
        t.j(name, "name");
    }

    public o(long j6, long j10) {
        this("Not enough free space to write " + j6 + " bytes, available " + j10 + " bytes.");
    }
}
