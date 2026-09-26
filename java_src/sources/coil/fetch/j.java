package coil.fetch;

import android.webkit.MimeTypeMap;
import coil.decode.q;
import java.io.File;
import kotlin.io.n;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class j implements i {

    @NotNull
    private final File data;

    public static final class a implements i.a<File> {
        @Override // coil.fetch.i.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull File file, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            return new j(file);
        }
    }

    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) {
        return new m(q.d(Path.Companion.get$default(Path.Companion, this.data, false, 1, (Object) null), null, null, null, 14, null), MimeTypeMap.getSingleton().getMimeTypeFromExtension(n.r(this.data)), coil.decode.f.DISK);
    }

    public j(@NotNull File file) {
        this.data = file;
    }
}
