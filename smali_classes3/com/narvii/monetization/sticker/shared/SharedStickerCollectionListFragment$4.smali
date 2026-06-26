.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "SharedStickerCollectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$4;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$4;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->access$000(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    :cond_0
    return-void
.end method
