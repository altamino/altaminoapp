package androidx.compose.ui.res;

import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.vector.ImageVector;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class ImageVectorCache {

    @NotNull
    private final HashMap<Key, WeakReference<ImageVectorEntry>> map = new HashMap<>();

    @StabilityInferred
    public static final class ImageVectorEntry {
        public static final int $stable = 0;
        private final int configFlags;

        @NotNull
        private final ImageVector imageVector;

        public final int a() {
            return this.configFlags;
        }

        @NotNull
        public final ImageVector b() {
            return this.imageVector;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImageVectorEntry)) {
                return false;
            }
            ImageVectorEntry imageVectorEntry = (ImageVectorEntry) obj;
            return t.e(this.imageVector, imageVectorEntry.imageVector) && this.configFlags == imageVectorEntry.configFlags;
        }

        public int hashCode() {
            return (this.imageVector.hashCode() * 31) + this.configFlags;
        }

        @NotNull
        public String toString() {
            return "ImageVectorEntry(imageVector=" + this.imageVector + ", configFlags=" + this.configFlags + ')';
        }

        public ImageVectorEntry(@NotNull ImageVector imageVector, int i10) {
            t.j(imageVector, "imageVector");
            this.imageVector = imageVector;
            this.configFlags = i10;
        }
    }

    @StabilityInferred
    public static final class Key {
        public static final int $stable = 8;
        private final int id;

        @NotNull
        private final Resources.Theme theme;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return t.e(this.theme, key.theme) && this.id == key.id;
        }

        public int hashCode() {
            return (this.theme.hashCode() * 31) + this.id;
        }

        @NotNull
        public String toString() {
            return "Key(theme=" + this.theme + ", id=" + this.id + ')';
        }

        public Key(@NotNull Resources.Theme theme, int i10) {
            t.j(theme, "theme");
            this.theme = theme;
            this.id = i10;
        }
    }

    public final void a() {
        this.map.clear();
    }

    @Nullable
    public final ImageVectorEntry b(@NotNull Key key) {
        t.j(key, "key");
        WeakReference<ImageVectorEntry> weakReference = this.map.get(key);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void c(int i10) {
        Iterator<Map.Entry<Key, WeakReference<ImageVectorEntry>>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Key, WeakReference<ImageVectorEntry>> next = it.next();
            t.i(next, "it.next()");
            ImageVectorEntry imageVectorEntry = next.getValue().get();
            if (imageVectorEntry == null || Configuration.needNewResources(i10, imageVectorEntry.a())) {
                it.remove();
            }
        }
    }

    public final void d(@NotNull Key key, @NotNull ImageVectorEntry imageVectorEntry) {
        t.j(key, "key");
        t.j(imageVectorEntry, "imageVectorEntry");
        this.map.put(key, new WeakReference<>(imageVectorEntry));
    }
}
