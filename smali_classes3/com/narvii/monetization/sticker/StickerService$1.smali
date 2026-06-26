.class Lcom/narvii/monetization/sticker/StickerService$1;
.super Landroid/content/BroadcastReceiver;
.source "StickerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/StickerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$1;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$1;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 72
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService$1;->this$0:Lcom/narvii/monetization/sticker/StickerService;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/StickerService;->access$000(Lcom/narvii/monetization/sticker/StickerService;)V

    :cond_0
    return-void
.end method
