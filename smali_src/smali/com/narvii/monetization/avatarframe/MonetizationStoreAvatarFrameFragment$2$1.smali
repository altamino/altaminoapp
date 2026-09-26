.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;->this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;->this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;

    .line 2
    iget-object v0, v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->C(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;->this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;

    .line 3
    iget-object v0, v0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->C(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/narvii/model/User;->onlineStatus:I

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;->this$1:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;

    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->I(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$2$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
