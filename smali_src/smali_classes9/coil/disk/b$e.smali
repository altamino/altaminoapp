.class public final Lcoil/disk/b$e;
.super Lokio/ForwardingFileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/disk/b;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlinx/coroutines/k0;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil/disk/DiskLruCache$fileSystem$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"
.end annotation


# direct methods
.method constructor <init>(Lokio/FileSystem;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lokio/ForwardingFileSystem;-><init>(Lokio/FileSystem;)V

    .line 4
    return-void
.end method


# virtual methods
.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lokio/Path;->parent()Lokio/Path;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lokio/FileSystem;->createDirectories(Lokio/Path;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lokio/ForwardingFileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
