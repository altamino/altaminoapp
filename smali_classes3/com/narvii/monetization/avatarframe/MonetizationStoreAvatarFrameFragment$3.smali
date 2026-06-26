.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;
.super Ljava/lang/Object;
.source "MonetizationStoreAvatarFrameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

.field final synthetic val$ref:Lcom/narvii/monetization/avatarframe/AvatarFrame;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;->val$ref:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$3;->val$ref:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-static {v0, v1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->access$300(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method
