package androidx.preference;

import androidx.annotation.Nullable;
import java.util.Set;

/* JADX INFO: loaded from: classes11.dex */
public abstract class PreferenceDataStore {
    public boolean a(String str, boolean z6) {
        return z6;
    }

    public int b(String str, int i10) {
        return i10;
    }

    @Nullable
    public String c(String str, @Nullable String str2) {
        return str2;
    }

    @Nullable
    public Set<String> d(String str, @Nullable Set<String> set) {
        return set;
    }

    public void e(String str, boolean z6) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void f(String str, int i10) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void g(String str, @Nullable String str2) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void h(String str, @Nullable Set<String> set) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }
}
