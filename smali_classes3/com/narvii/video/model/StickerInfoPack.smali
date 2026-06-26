.class public Lcom/narvii/video/model/StickerInfoPack;
.super Lcom/narvii/video/model/BaseAttachmentInfoPack;
.source "StickerInfoPack.java"


# instance fields
.field public installedPath:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sourceType:I

.field public srcImagePath:Ljava/lang/String;

.field public stickerCollectionId:Ljava/lang/String;

.field public stickerId:Ljava/lang/String;

.field public templateUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;-><init>()V

    return-void
.end method

.method public static composeInstallFileForAnimatedSticker(Lcom/narvii/video/model/StickerInfoPack;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    const-string v2, "_"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    :goto_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2

    .line 27
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public static composeStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    const-string v2, "_"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 49
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructFromSticker(Lcom/narvii/model/Sticker;)Lcom/narvii/video/model/StickerInfoPack;
    .locals 2

    .line 53
    new-instance v0, Lcom/narvii/video/model/StickerInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/StickerInfoPack;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    .line 57
    iget p0, p0, Lcom/narvii/model/Sticker;->sourceType:I

    iput p0, v0, Lcom/narvii/video/model/StickerInfoPack;->sourceType:I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/narvii/video/model/StickerInfoPack;
    .locals 2

    .line 82
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/StickerInfoPack;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 88
    const-class v2, Lcom/narvii/video/model/StickerInfoPack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 90
    :cond_1
    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 92
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 93
    :cond_2
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 94
    :cond_3
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 95
    :cond_4
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 96
    :cond_5
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 97
    :cond_6
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 98
    :cond_7
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 99
    :cond_8
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 100
    :cond_9
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 101
    :cond_a
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    if-eqz v2, :cond_c

    :goto_0
    return v1

    .line 102
    :cond_c
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_d
    if-nez p1, :cond_e

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_f
    :goto_2
    return v1
.end method

.method public getPrefsKey()Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public mergeEditings(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 70
    iget-object v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 71
    iget-object v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 72
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 73
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 74
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 75
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 76
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iput p1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    return-void
.end method
