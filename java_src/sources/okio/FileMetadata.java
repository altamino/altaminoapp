package okio;

import java.util.ArrayList;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.reflect.KClass;
import kotlin.reflect.KClasses;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class FileMetadata {

    @Nullable
    private final Long createdAtMillis;

    @NotNull
    private final Map<KClass<?>, Object> extras;
    private final boolean isDirectory;
    private final boolean isRegularFile;

    @Nullable
    private final Long lastAccessedAtMillis;

    @Nullable
    private final Long lastModifiedAtMillis;

    @Nullable
    private final Long size;

    @Nullable
    private final Path symlinkTarget;

    public FileMetadata() {
        this(false, false, null, null, null, null, null, null, 255, null);
    }

    @Nullable
    public final Long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    @NotNull
    public final Map<KClass<?>, Object> getExtras() {
        return this.extras;
    }

    @Nullable
    public final Long getLastAccessedAtMillis() {
        return this.lastAccessedAtMillis;
    }

    @Nullable
    public final Long getLastModifiedAtMillis() {
        return this.lastModifiedAtMillis;
    }

    @Nullable
    public final Long getSize() {
        return this.size;
    }

    @Nullable
    public final Path getSymlinkTarget() {
        return this.symlinkTarget;
    }

    public final boolean isDirectory() {
        return this.isDirectory;
    }

    public final boolean isRegularFile() {
        return this.isRegularFile;
    }

    public FileMetadata(boolean z6, boolean z10, @Nullable Path path, @Nullable Long l, @Nullable Long l6, @Nullable Long l10, @Nullable Long l11, @NotNull Map<KClass<?>, ? extends Object> extras) {
        kotlin.jvm.internal.t.j(extras, "extras");
        this.isRegularFile = z6;
        this.isDirectory = z10;
        this.symlinkTarget = path;
        this.size = l;
        this.createdAtMillis = l6;
        this.lastModifiedAtMillis = l10;
        this.lastAccessedAtMillis = l11;
        this.extras = s0.w(extras);
    }

    @NotNull
    public final FileMetadata copy(boolean z6, boolean z10, @Nullable Path path, @Nullable Long l, @Nullable Long l6, @Nullable Long l10, @Nullable Long l11, @NotNull Map<KClass<?>, ? extends Object> extras) {
        kotlin.jvm.internal.t.j(extras, "extras");
        return new FileMetadata(z6, z10, path, l, l6, l10, l11, extras);
    }

    @Nullable
    public final <T> T extra(@NotNull KClass<? extends T> type) {
        kotlin.jvm.internal.t.j(type, "type");
        Object obj = this.extras.get(type);
        if (obj == null) {
            return null;
        }
        return (T) KClasses.cast(type, obj);
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.isRegularFile) {
            arrayList.add("isRegularFile");
        }
        if (this.isDirectory) {
            arrayList.add("isDirectory");
        }
        if (this.size != null) {
            arrayList.add("byteCount=" + this.size);
        }
        if (this.createdAtMillis != null) {
            arrayList.add("createdAt=" + this.createdAtMillis);
        }
        if (this.lastModifiedAtMillis != null) {
            arrayList.add("lastModifiedAt=" + this.lastModifiedAtMillis);
        }
        if (this.lastAccessedAtMillis != null) {
            arrayList.add("lastAccessedAt=" + this.lastAccessedAtMillis);
        }
        if (!this.extras.isEmpty()) {
            arrayList.add("extras=" + this.extras);
        }
        return d0.t0(arrayList, ", ", "FileMetadata(", ")", 0, null, null, 56, null);
    }

    public /* synthetic */ FileMetadata(boolean z6, boolean z10, Path path, Long l, Long l6, Long l10, Long l11, Map map, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) == 0 ? z10 : false, (i10 & 4) != 0 ? null : path, (i10 & 8) != 0 ? null : l, (i10 & 16) != 0 ? null : l6, (i10 & 32) != 0 ? null : l10, (i10 & 64) == 0 ? l11 : null, (i10 & 128) != 0 ? s0.h() : map);
    }
}
