.class public Lcom/narvii/editor/utils/MeisheUtils;
.super Ljava/lang/Object;
.source "MeisheUtils.java"


# static fields
.field public static final CAPTION_STYLE:Ljava/lang/String; = ".captionstyle"

.field public static isSupportMeishe:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCaptionStyle(Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneDraft;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 31
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 35
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    .line 37
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/Caption;

    .line 41
    iget-object v3, v2, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "captionStyle"

    .line 42
    invoke-interface {p0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/asset/AssetDownloader;

    .line 43
    iget-object v4, v2, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/asset/AssetDownloader;->getDownloadedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 44
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 45
    iget-object v5, v2, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageStatus(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 47
    iget-object v2, v2, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcom/meicam/sdk/NvsAssetPackageManager;->uninstallAssetPackage(Ljava/lang/String;I)I

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static installAsset(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 75
    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v5, p0, v2

    if-eqz v5, :cond_1

    .line 76
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v5

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".lic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v0

    move-object v4, v3

    :cond_3
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 86
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object p0

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    move-object v5, p0

    move v8, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v1

    if-nez v1, :cond_4

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersion(Ljava/lang/String;I)I

    move-result v1

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersionFromAssetPackageFilePath(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_5

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    move-object v5, p0

    move v8, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    if-nez p0, :cond_7

    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-ne v2, v1, :cond_6

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/meicam/sdk/NvsAssetPackageManager;->uninstallAssetPackage(Ljava/lang/String;I)I

    .line 104
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    move-object v5, p0

    move v8, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    if-nez p0, :cond_7

    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static isSupportMeishe()Z
    .locals 2

    .line 27
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static uninstallAllAssetsOfType(I)V
    .locals 3

    .line 57
    invoke-static {}, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageListOfType(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v2, p0}, Lcom/meicam/sdk/NvsAssetPackageManager;->uninstallAssetPackage(Ljava/lang/String;I)I

    goto :goto_0

    :cond_1
    return-void
.end method
