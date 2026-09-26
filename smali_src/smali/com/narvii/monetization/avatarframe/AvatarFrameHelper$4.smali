.class Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->showJoinCommunityDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

.field final synthetic val$ndcId:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->val$ndcId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "id"

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->val$ndcId:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->b(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 23
    return-void
.end method
