package okio.internal;

import e8.a;
import java.util.List;
import kotlin.jvm.internal.v;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
final class ResourceFileSystem$roots$2 extends v implements a<List<? extends u<? extends FileSystem, ? extends Path>>> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResourceFileSystem$roots$2(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    @Override // e8.a
    @NotNull
    public final List<? extends u<? extends FileSystem, ? extends Path>> invoke() {
        return ResourceFileSystem.Companion.toClasspathRoots(this.$classLoader);
    }
}
