.class public final Lcom/narvii/scene/helper/StickerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/helper/StickerHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/helper/StickerHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STICKER_COPIED_SRC_DIR:Ljava/lang/String; = "EditorSticker/CopiedStickerSrc"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STICKER_INSTALLED_DIR:Ljava/lang/String; = "EditorSticker/InstalledSticker"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final installedStickerFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stickerSrcFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/helper/StickerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/StickerHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/helper/StickerHelper;->Companion:Lcom/narvii/scene/helper/StickerHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "EditorSticker/InstalledSticker"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->installedStickerFile:Ljava/io/File;

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v1, "EditorSticker/CopiedStickerSrc"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->stickerSrcFile:Ljava/io/File;

    .line 45
    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->installedStickerFile:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->stickerSrcFile:Ljava/io/File;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "videoManager"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/video/services/VideoManager;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/video/services/VideoManager;->onLocalStickerCacheCleared()V

    .line 25
    return-void
.end method

.method public final getCacheSize()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->installedStickerFile:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/scene/helper/StickerHelper;->stickerSrcFile:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method
