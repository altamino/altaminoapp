package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SetUserVisibleHintViolation extends Violation {
    private final boolean isVisibleToUser;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetUserVisibleHintViolation(@NotNull Fragment fragment, boolean z6) {
        super(fragment, "Attempting to set user visible hint to " + z6 + " for fragment " + fragment);
        t.j(fragment, "fragment");
        this.isVisibleToUser = z6;
    }
}
