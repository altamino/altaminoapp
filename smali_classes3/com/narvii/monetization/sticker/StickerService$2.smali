.class Lcom/narvii/monetization/sticker/StickerService$2;
.super Ljava/lang/Object;
.source "StickerService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerService;->onNotification(Lcom/narvii/notification/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$2;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 0

    .line 96
    invoke-interface {p1}, Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;->onListChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerService$2;->call(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    return-void
.end method
