package okio.internal;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.sequences.i;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
@f(c = "okio.internal._FileSystemKt$commonDeleteRecursively$sequence$1", f = "-FileSystem.kt", l = {72}, m = "invokeSuspend")
final class _FileSystemKt$commonDeleteRecursively$sequence$1 extends k implements p<i<? super Path>, d<? super l0>, Object> {
    final /* synthetic */ Path $fileOrDirectory;
    final /* synthetic */ FileSystem $this_commonDeleteRecursively;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    _FileSystemKt$commonDeleteRecursively$sequence$1(FileSystem fileSystem, Path path, d<? super _FileSystemKt$commonDeleteRecursively$sequence$1> dVar) {
        super(2, dVar);
        this.$this_commonDeleteRecursively = fileSystem;
        this.$fileOrDirectory = path;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        _FileSystemKt$commonDeleteRecursively$sequence$1 _filesystemkt_commondeleterecursively_sequence_1 = new _FileSystemKt$commonDeleteRecursively$sequence$1(this.$this_commonDeleteRecursively, this.$fileOrDirectory, dVar);
        _filesystemkt_commondeleterecursively_sequence_1.L$0 = obj;
        return _filesystemkt_commondeleterecursively_sequence_1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull i<? super Path> iVar, @Nullable d<? super l0> dVar) {
        return ((_FileSystemKt$commonDeleteRecursively$sequence$1) create(iVar, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            i iVar = (i) this.L$0;
            FileSystem fileSystem = this.$this_commonDeleteRecursively;
            kotlin.collections.k kVar = new kotlin.collections.k();
            Path path = this.$fileOrDirectory;
            this.label = 1;
            if (_FileSystemKt.collectRecursively(iVar, fileSystem, kVar, path, false, true, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
