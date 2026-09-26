package androidx.core.util;

import android.util.Range;
import j8.f;

/* JADX INFO: loaded from: classes6.dex */
public final class RangeKt$toClosedRange$1 implements f<Comparable<Object>> {
    final /* synthetic */ Range<Comparable<Object>> $this_toClosedRange;

    @Override // j8.f
    public Comparable<Object> c() {
        return this.$this_toClosedRange.getUpper();
    }

    @Override // j8.f
    public Comparable<Object> getStart() {
        return this.$this_toClosedRange.getLower();
    }

    @Override // j8.f
    public boolean isEmpty() {
        return f.a.a(this);
    }
}
