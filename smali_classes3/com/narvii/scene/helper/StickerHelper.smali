.class public final Lcom/narvii/scene/helper/StickerHelper;
.super Ljava/lang/Object;
.source "StickerHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/helper/StickerHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/helper/StickerHelper$Companion;

.field public static final STICKER_COPIED_SRC_DIR:Ljava/lang/String; = "EditorSticker/CopiedStickerSrc"

.field public static final STICKER_INSTALLED_DIR:Ljava/lang/String; = "EditorSticker/InstalledSticker"


# instance fields
.field private final installedStickerFile:Ljava/io/File;

.field private final nvContext:Lcom/narvii/app/NVContext;

.field private final stickerSrcFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/helper/StickerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/StickerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/helper/StickerHelper;->Companion:Lcom/narvii/scene/helper/StickerHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nvContext.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "EditorSticker/InstalledSticker"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/helper/StickerHelper;->installedStickerFile:Ljava/io/File;

    .line 20
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "EditorSticker/CopiedStickerSrc"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/helper/StickerHelper;->stickerSrcFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->installedStickerFile:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 29
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->stickerSrcFile:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 30
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "videoManager"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v0}, Lcom/narvii/video/services/VideoManager;->onLocalStickerCacheCleared()V

    return-void
.end method

.method public final getCacheSize()J
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->installedStickerFile:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/scene/helper/StickerHelper;->stickerSrcFile:Ljava/io/File;

    invoke-static {v2}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/narvii/scene/helper/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method
