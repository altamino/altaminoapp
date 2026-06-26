.class public final Lcom/narvii/editor/provider/MeisheEditorDelegate;
.super Ljava/lang/Object;
.source "MeisheEditorDelegate.kt"

# interfaces
.implements Lffmpeg/base/IEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;,
        Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;,
        Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheEditorDelegate.kt\ncom/narvii/editor/provider/MeisheEditorDelegate\n*L\n1#1,343:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;

.field private static volatile instance:Lcom/narvii/editor/provider/MeisheEditorDelegate;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private volatile animatedStickerTemplateUuid:Ljava/lang/String;

.field private ffmpegEditorDelegate:Lffmpeg/base/IEditor;

.field private final flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private final stickerCopiedSrcDir:Ljava/io/File;

.field private final stickerFrameRate:Lcom/meishe/cafconvertor/NvRational;

.field private final stickerInstalledDir:Ljava/io/File;

.field private final stickerPixelAspectRatio:Lcom/meishe/cafconvertor/NvRational;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->Companion:Lcom/narvii/editor/provider/MeisheEditorDelegate$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->prefs:Landroid/content/SharedPreferences;

    .line 35
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->LOCK:Ljava/lang/Object;

    .line 36
    sget-object p2, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual {p2, p1}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getInstance(Ljava/io/File;)Lffmpeg/executable/FFMpegEditorDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    .line 37
    new-instance p2, Lcom/meishe/cafconvertor/NvRational;

    const/4 p3, 0x1

    const/16 v0, 0x14

    invoke-direct {p2, v0, p3}, Lcom/meishe/cafconvertor/NvRational;-><init>(II)V

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerFrameRate:Lcom/meishe/cafconvertor/NvRational;

    .line 38
    new-instance p2, Lcom/meishe/cafconvertor/NvRational;

    invoke-direct {p2, p3, p3}, Lcom/meishe/cafconvertor/NvRational;-><init>(II)V

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerPixelAspectRatio:Lcom/meishe/cafconvertor/NvRational;

    .line 39
    new-instance p2, Ljava/io/File;

    const-string p3, "EditorSticker/InstalledSticker"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerInstalledDir:Ljava/io/File;

    .line 40
    new-instance p2, Ljava/io/File;

    const-string p3, "EditorSticker/CopiedStickerSrc"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerCopiedSrcDir:Ljava/io/File;

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerInstalledDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerInstalledDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerCopiedSrcDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerCopiedSrcDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/editor/provider/MeisheEditorDelegate;-><init>(Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static final synthetic access$getAnimatedStickerTemplateUuid$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFlyingAnimatedStickerConvertTasks$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/narvii/editor/provider/MeisheEditorDelegate;
    .locals 1

    .line 33
    sget-object v0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->instance:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    return-object v0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Landroid/content/SharedPreferences;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$getStickerFrameRate$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Lcom/meishe/cafconvertor/NvRational;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerFrameRate:Lcom/meishe/cafconvertor/NvRational;

    return-object p0
.end method

.method public static final synthetic access$getStickerPixelAspectRatio$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Lcom/meishe/cafconvertor/NvRational;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerPixelAspectRatio:Lcom/meishe/cafconvertor/NvRational;

    return-object p0
.end method

.method public static final synthetic access$installStickerTemplate(Lcom/narvii/editor/provider/MeisheEditorDelegate;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->installStickerTemplate()V

    return-void
.end method

.method public static final synthetic access$setAnimatedStickerTemplateUuid$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/narvii/editor/provider/MeisheEditorDelegate;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->instance:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    return-void
.end method

.method private final installStickerTemplate()V
    .locals 8

    .line 173
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "sharedpreference_sticker_template_uuid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v2

    const-string v3, "NvsStreamingContext.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v2

    const-string v3, "assets:/E14FEE65-71A0-4717-9D66-3397B6C11223.5.animatedsticker"

    const-string v4, "assets:/E14FEE65-71A0-4717-9D66-3397B6C11223.lic"

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 187
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sharedpreference_sticker_template_uuid"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abort(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->abort(Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public abortAll(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->abortAll(Z)V

    return-void
.end method

.method public abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/narvii/video/model/StickerInfoPack;->getPrefsKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort()V

    :cond_0
    return-void
.end method

.method public abortAnimatedStickerConvertTasks()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    .line 167
    invoke-virtual {v1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1, p2, p3}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-void
.end method

.method public fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p1

    return-object p1
.end method

.method public getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 2

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerCopiedSrcDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerInstalledDir:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/narvii/video/model/StickerInfoPack;->composeStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerCopiedSrcDir:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/narvii/video/model/StickerInfoPack;->composeStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 2

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerInstalledDir:Ljava/io/File;

    const-string v1, ".caf"

    invoke-static {p1, v0, v1}, Lcom/narvii/video/model/StickerInfoPack;->composeInstallFileForAnimatedSticker(Lcom/narvii/video/model/StickerInfoPack;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->installStickerTemplate()V

    .line 98
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 99
    iput-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p2, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 107
    invoke-interface {p5}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p2, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 113
    invoke-direct {p0}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->installStickerTemplate()V

    .line 114
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    .line 115
    invoke-interface {p5}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    :cond_3
    if-eqz p5, :cond_b

    .line 116
    invoke-interface {p5}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    goto/16 :goto_4

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->animatedStickerTemplateUuid:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    if-eqz p5, :cond_b

    .line 119
    invoke-interface {p5}, Lffmpeg/base/IEditorBaseCallback;->onSuccess()V

    goto/16 :goto_4

    .line 122
    :cond_5
    iget-object v0, p2, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 124
    new-instance v0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;-><init>(Lcom/narvii/editor/provider/MeisheEditorDelegate;Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLffmpeg/base/IEditorBaseCallback;)V

    goto :goto_2

    .line 126
    :cond_8
    new-instance v0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;-><init>(Lcom/narvii/editor/provider/MeisheEditorDelegate;Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLffmpeg/base/IEditorBaseCallback;)V

    :goto_2
    if-nez p4, :cond_9

    new-array p1, v2, [Ljava/lang/Void;

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_9
    new-array p1, v2, [Ljava/lang/Void;

    .line 131
    invoke-virtual {v0, p4, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    if-eqz v1, :cond_b

    .line 134
    invoke-virtual {p2}, Lcom/narvii/video/model/StickerInfoPack;->getPrefsKey()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 136
    iget-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    if-eqz p2, :cond_a

    .line 137
    invoke-virtual {p2}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort()V

    .line 139
    :cond_a
    iget-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->flyingAnimatedStickerConvertTasks:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p3, "key"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    return-void
.end method

.method public onLocalStickerCacheCleared()V
    .locals 1

    .line 70
    invoke-static {p0}, Lffmpeg/base/IEditor$DefaultImpls;->onLocalStickerCacheCleared(Lffmpeg/base/IEditor;)V

    .line 71
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerInstalledDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerInstalledDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerCopiedSrcDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate;->stickerCopiedSrcDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method
