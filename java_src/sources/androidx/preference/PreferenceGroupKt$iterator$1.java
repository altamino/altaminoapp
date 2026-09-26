package androidx.preference;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class PreferenceGroupKt$iterator$1 implements Iterator<Preference>, f8.a {
    final /* synthetic */ PreferenceGroup $this_iterator;
    private int index;

    PreferenceGroupKt$iterator$1(PreferenceGroup preferenceGroup) {
        this.$this_iterator = preferenceGroup;
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Preference next() {
        PreferenceGroup preferenceGroup = this.$this_iterator;
        int i10 = this.index;
        this.index = i10 + 1;
        Preference preferenceB0 = preferenceGroup.B0(i10);
        t.i(preferenceB0, "getPreference(index++)");
        return preferenceB0;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_iterator.C0();
    }

    @Override // java.util.Iterator
    public void remove() {
        PreferenceGroup preferenceGroup = this.$this_iterator;
        int i10 = this.index - 1;
        this.index = i10;
        preferenceGroup.E0(preferenceGroup.B0(i10));
    }
}
