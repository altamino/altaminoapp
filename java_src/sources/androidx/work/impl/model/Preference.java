package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Entity
@RestrictTo
public final class Preference {

    @PrimaryKey
    @ColumnInfo
    @NotNull
    private final String key;

    @ColumnInfo
    @Nullable
    private final Long value;

    public Preference(@NotNull String key, @Nullable Long l) {
        t.j(key, "key");
        this.key = key;
        this.value = l;
    }

    @NotNull
    public final String a() {
        return this.key;
    }

    @Nullable
    public final Long b() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        return t.e(this.key, preference.key) && t.e(this.value, preference.value);
    }

    public int hashCode() {
        int iHashCode = this.key.hashCode() * 31;
        Long l = this.value;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    @NotNull
    public String toString() {
        return "Preference(key=" + this.key + ", value=" + this.value + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Preference(@NotNull String key, boolean z6) {
        this(key, Long.valueOf(z6 ? 1L : 0L));
        t.j(key, "key");
    }
}
