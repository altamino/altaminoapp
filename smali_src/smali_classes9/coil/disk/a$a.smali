.class public final Lcoil/disk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/disk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskCache.kt\ncoil/disk/DiskCache$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation


# instance fields
.field private cleanupDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private directory:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fileSystem:Lokio/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxSizeBytes:J

.field private maxSizePercent:D

.field private maximumMaxSizeBytes:J

.field private minimumMaxSizeBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 6
    .line 7
    iput-object v0, p0, Lcoil/disk/a$a;->fileSystem:Lokio/FileSystem;

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    .line 13
    .line 14
    iput-wide v0, p0, Lcoil/disk/a$a;->maxSizePercent:D

    .line 15
    .line 16
    .line 17
    const-wide/32 v0, 0xa00000

    .line 18
    .line 19
    iput-wide v0, p0, Lcoil/disk/a$a;->minimumMaxSizeBytes:J

    .line 20
    .line 21
    .line 22
    const-wide/32 v0, 0xfa00000

    .line 23
    .line 24
    iput-wide v0, p0, Lcoil/disk/a$a;->maximumMaxSizeBytes:J

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlinx/coroutines/e1;->b()Lkotlinx/coroutines/k0;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcoil/disk/a$a;->cleanupDispatcher:Lkotlinx/coroutines/k0;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcoil/disk/a;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v3, p0, Lcoil/disk/a$a;->directory:Lokio/Path;

    .line 3
    .line 4
    if-eqz v3, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Lcoil/disk/a$a;->maxSizePercent:D

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmpl-double v0, v0, v4

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lokio/Path;->toFile()Ljava/io/File;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    iget-wide v1, p0, Lcoil/disk/a$a;->maxSizePercent:D

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 31
    move-result-wide v4

    .line 32
    long-to-double v4, v4

    .line 33
    mul-double/2addr v1, v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 37
    move-result-wide v4

    .line 38
    long-to-double v4, v4

    .line 39
    mul-double/2addr v1, v4

    .line 40
    double-to-long v4, v1

    .line 41
    .line 42
    iget-wide v6, p0, Lcoil/disk/a$a;->minimumMaxSizeBytes:J

    .line 43
    .line 44
    iget-wide v8, p0, Lcoil/disk/a$a;->maximumMaxSizeBytes:J

    .line 45
    .line 46
    .line 47
    invoke-static/range {v4 .. v9}, Lj8/m;->p(JJJ)J

    .line 48
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :catch_0
    iget-wide v0, p0, Lcoil/disk/a$a;->minimumMaxSizeBytes:J

    .line 52
    :goto_0
    move-wide v1, v0

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_0
    iget-wide v0, p0, Lcoil/disk/a$a;->maxSizeBytes:J

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :goto_1
    new-instance v6, Lcoil/disk/d;

    .line 59
    .line 60
    iget-object v4, p0, Lcoil/disk/a$a;->fileSystem:Lokio/FileSystem;

    .line 61
    .line 62
    iget-object v5, p0, Lcoil/disk/a$a;->cleanupDispatcher:Lkotlinx/coroutines/k0;

    .line 63
    move-object v0, v6

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v0 .. v5}, Lcoil/disk/d;-><init>(JLokio/Path;Lokio/FileSystem;Lkotlinx/coroutines/k0;)V

    .line 67
    return-object v6

    .line 68
    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v1, "directory == null"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0
.end method

.method public final b(Ljava/io/File;)Lcoil/disk/a$a;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v3, v1, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcoil/disk/a$a;->c(Lokio/Path;)Lcoil/disk/a$a;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final c(Lokio/Path;)Lcoil/disk/a$a;
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/disk/a$a;->directory:Lokio/Path;

    return-object p0
.end method
