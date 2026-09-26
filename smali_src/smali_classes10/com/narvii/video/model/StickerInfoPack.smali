.class public Lcom/narvii/video/model/StickerInfoPack;
.super Lcom/narvii/video/model/BaseAttachmentInfoPack;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;-><init>()V

    .line 4
    return-void
.end method

.method public static composeInstallFileForAnimatedSticker(Lcom/narvii/video/model/StickerInfoPack;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    const-string v1, "/"

    .line 13
    .line 14
    const-string v2, "_"

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    new-instance p2, Ljava/io/File;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    :goto_0
    new-instance p2, Ljava/io/File;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    return-object p2

    .line 104
    .line 105
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    .line 155
    :goto_2
    new-instance p2, Ljava/io/File;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 160
    .line 161
    .line 162
    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    return-object p2
.end method

.method public static composeStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "_"

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 79
    .line 80
    const-string v1, "/"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method public static constructFromSticker(Lcom/narvii/model/Sticker;)Lcom/narvii/video/model/StickerInfoPack;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/model/StickerInfoPack;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/video/model/StickerInfoPack;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget p0, p0, Lcom/narvii/model/Sticker;->sourceType:I

    .line 20
    .line 21
    iput p0, v0, Lcom/narvii/video/model/StickerInfoPack;->sourceType:I

    .line 22
    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/narvii/video/model/StickerInfoPack;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
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

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    return v1

    .line 33
    .line 34
    :cond_2
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    return v1

    .line 44
    .line 45
    :cond_3
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 46
    .line 47
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    return v1

    .line 55
    .line 56
    :cond_4
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 57
    .line 58
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    return v1

    .line 66
    .line 67
    :cond_5
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 68
    .line 69
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 73
    move-result v2

    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    return v1

    .line 77
    .line 78
    :cond_6
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 84
    move-result v2

    .line 85
    .line 86
    if-nez v2, :cond_7

    .line 87
    return v1

    .line 88
    .line 89
    :cond_7
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 95
    move-result v2

    .line 96
    .line 97
    if-nez v2, :cond_8

    .line 98
    return v1

    .line 99
    .line 100
    :cond_8
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 106
    move-result v2

    .line 107
    .line 108
    if-nez v2, :cond_9

    .line 109
    return v1

    .line 110
    .line 111
    :cond_9
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 117
    move-result v2

    .line 118
    .line 119
    if-nez v2, :cond_a

    .line 120
    return v1

    .line 121
    .line 122
    :cond_a
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 123
    .line 124
    if-eqz v2, :cond_b

    .line 125
    .line 126
    iget-object v3, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v2

    .line 131
    .line 132
    if-nez v2, :cond_c

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_b
    iget-object v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 136
    .line 137
    if-eqz v2, :cond_c

    .line 138
    :goto_0
    return v1

    .line 139
    .line 140
    :cond_c
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 143
    .line 144
    if-eqz v2, :cond_d

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v0

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_d
    if-nez p1, :cond_e

    .line 152
    goto :goto_1

    .line 153
    :cond_e
    move v0, v1

    .line 154
    :goto_1
    return v0

    .line 155
    :cond_f
    :goto_2
    return v1
.end method

.method public getPrefsKey()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "_"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    :goto_0
    return-object v0
.end method

.method public mergeEditings(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 16
    .line 17
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 20
    .line 21
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 24
    .line 25
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 28
    .line 29
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 32
    .line 33
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 34
    .line 35
    iput p1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 36
    return-void
.end method
