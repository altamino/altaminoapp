.class Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$8;
.super Lcom/narvii/post/PostHelper;
.source "StickerCollectionPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;->doPost(Lcom/narvii/monetization/sticker/post/StickerCollectionPost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity$8;->this$0:Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-direct {p0, p2}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected keepPng(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
