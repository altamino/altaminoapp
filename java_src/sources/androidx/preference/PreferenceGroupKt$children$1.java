package androidx.preference;

import java.util.Iterator;
import kotlin.sequences.g;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class PreferenceGroupKt$children$1 implements g<Preference> {
    final /* synthetic */ PreferenceGroup $this_children;

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<Preference> iterator() {
        return PreferenceGroupKt.a(this.$this_children);
    }
}
