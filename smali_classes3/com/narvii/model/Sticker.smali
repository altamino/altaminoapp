.class public Lcom/narvii/model/Sticker;
.super Lcom/narvii/model/NVObject;
.source "Sticker.java"

# interfaces
.implements Lcom/narvii/media/IEditorSticker;
.implements Lcom/narvii/util/LenientObject;


# static fields
.field public static final MOOD_STICKER_PREFIX:Ljava/lang/String; = "e/"

.field public static final STICKER_SCHEME:Ljava/lang/String; = "ndcsticker://"


# instance fields
.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "iconV2"
    .end annotation
.end field

.field public isGift:Z

.field public name:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "smallIconV2"
    .end annotation
.end field

.field public sourceType:I

.field public status:I

.field public stickerCollectionId:Ljava/lang/String;

.field public stickerId:Ljava/lang/String;

.field public stickerStatus:I

.field public thumbnail:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mediumIconV2"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/narvii/model/Sticker;->stickerStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/narvii/model/Sticker;->stickerStatus:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    return-void
.end method

.method public static isEmpty(Lcom/narvii/model/Sticker;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public checkEqual(Ljava/lang/Object;)I
    .locals 1

    .line 158
    invoke-virtual {p0, p1}, Lcom/narvii/model/Sticker;->isNormalPartEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/Sticker;->checkLenientPart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public checkLenientPart(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 124
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Sticker;

    if-eqz v2, :cond_4

    .line 125
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v3, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v3, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p1, Lcom/narvii/model/Sticker;->smallIcon:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Sticker;->smallIcon:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public collectionId()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/model/Sticker;->checkEqual(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMoodUnicode()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStickerPath()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/model/Sticker;->getMoodUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/emojione/EmojionePng;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Sticker;->smallIcon:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/narvii/model/Sticker;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGift()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/narvii/model/Sticker;->isGift:Z

    return v0
.end method

.method public isLocalMood()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "e/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNormalPartEqual(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 146
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Sticker;

    if-eqz v2, :cond_2

    .line 147
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 148
    iget v2, p1, Lcom/narvii/model/Sticker;->status:I

    iget v3, p0, Lcom/narvii/model/Sticker;->status:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 149
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 150
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p1, p1, Lcom/narvii/model/Sticker;->isGift:Z

    .line 151
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, p0, Lcom/narvii/model/Sticker;->isGift:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x71

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/narvii/model/Sticker;->status:I

    return v0
.end method

.method public stickerStatus()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/narvii/model/Sticker;->stickerStatus:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
