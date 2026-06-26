.class public Lcom/narvii/monetization/sticker/post/StickerPost;
.super Ljava/lang/Object;
.source "StickerPost.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public originalSticker:Lcom/narvii/model/Sticker;

.field public sticker:Lcom/narvii/model/Sticker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/Sticker;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->sticker:Lcom/narvii/model/Sticker;

    .line 20
    iput-object p2, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIconPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->icon:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerPost;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
