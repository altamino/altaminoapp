package androidx.preference;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class PreferenceGroupKt {
    @NotNull
    public static final Iterator<Preference> a(@NotNull PreferenceGroup preferenceGroup) {
        t.j(preferenceGroup, "<this>");
        return new PreferenceGroupKt$iterator$1(preferenceGroup);
    }
}
