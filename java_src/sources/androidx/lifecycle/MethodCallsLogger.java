package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public class MethodCallsLogger {

    @NotNull
    private final Map<String, Integer> calledMethods = new HashMap();
}
