.class public final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;
.super Ljava/lang/Object;
.source "AvatarFrameCache.kt"

# interfaces
.implements Lcom/narvii/util/fileloader/INVFileCache;


# instance fields
.field private final dir:Ljava/io/File;

.field private final diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->dir:Ljava/io/File;

    .line 12
    new-instance p1, Lcom/narvii/util/fileloader/DiskDaemonHelper;

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->dir:Ljava/io/File;

    const-string v1, "avatar-frame-disk-daemon"

    invoke-direct {p1, v0, v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->touch(Ljava/io/File;)V

    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->dir:Ljava/io/File;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 23
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public touch(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    return-void
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->trimAndFlush(IJ)V

    return-void
.end method
