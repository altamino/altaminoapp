package d0;

import coil.request.m;
import java.io.File;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements b<File> {
    private final boolean addLastModifiedToFileCacheKey;

    @Override // d0.b
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String a(@NotNull File file, @NotNull m mVar) {
        if (!this.addLastModifiedToFileCacheKey) {
            return file.getPath();
        }
        return file.getPath() + kotlinx.serialization.json.internal.b.COLON + file.lastModified();
    }

    public a(boolean z6) {
        this.addLastModifiedToFileCacheKey = z6;
    }
}
