.class public final Lcom/narvii/editors/NVEditorDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editors/NVEditorDelegate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile instance:Lcom/narvii/editors/NVEditorDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private ffmpegEditorDelegate:Lg7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editors/NVEditorDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editors/NVEditorDelegate$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editors/NVEditorDelegate;->Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    invoke-virtual {v0, p1}, Lffmpeg/executable/a$a;->g(Ljava/io/File;)Lffmpeg/executable/a;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lg7/a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/editors/NVEditorDelegate;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/narvii/editors/NVEditorDelegate;
    .locals 1

    sget-object v0, Lcom/narvii/editors/NVEditorDelegate;->instance:Lcom/narvii/editors/NVEditorDelegate;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/narvii/editors/NVEditorDelegate;)V
    .locals 0

    sput-object p0, Lcom/narvii/editors/NVEditorDelegate;->instance:Lcom/narvii/editors/NVEditorDelegate;

    return-void
.end method


# virtual methods
.method public abort(Lg7/d;)V
    .locals 1
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lg7/a;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lg7/a;->abort(Lg7/d;)V

    .line 11
    return-void
.end method

.method public abortAll(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lg7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lg7/a;->abortAll(Z)V

    .line 6
    return-void
.end method

.method public abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->a(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)V

    .line 4
    return-void
.end method

.method public abortAnimatedStickerConvertTasks()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/a$a;->b(Lg7/a;)V

    .line 4
    return-void
.end method

.method public execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V
    .locals 1
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lg7/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lg7/a;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 11
    return-void
.end method

.method public fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lg7/a;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lg7/a;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->c(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->d(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/a$a;->e(Lg7/a;Lcom/narvii/video/model/StickerInfoPack;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lg7/b;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lg7/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "stickerInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLocalStickerCacheCleared()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/a$a;->g(Lg7/a;)V

    .line 4
    return-void
.end method
