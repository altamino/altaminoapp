package androidx.work.impl.constraints;

import androidx.work.impl.model.WorkSpec;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface WorkConstraintsCallback {
    void a(@NotNull List<WorkSpec> list);

    void f(@NotNull List<WorkSpec> list);
}
