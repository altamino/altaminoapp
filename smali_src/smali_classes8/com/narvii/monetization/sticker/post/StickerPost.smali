.class public Lcom/narvii/monetization/sticker/post/StickerPost;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public originalSticker:Lcom/narvii/model/Sticker;

.field public sticker:Lcom/narvii/model/Sticker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/Sticker;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->sticker:Lcom/narvii/model/Sticker;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIconPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->icon:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->sticker:Lcom/narvii/model/Sticker;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method
