.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5$1;
.super Ljava/lang/Object;
.source "MonetizationStoreAvatarFrameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;->onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5$1;->this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5$1;->this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$5;

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickUseItem()V

    return-void
.end method
