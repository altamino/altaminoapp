.class Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;
.super Ljava/lang/Object;
.source "AvatarFrameHelper.java"

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

    .line 201
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iput p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->val$ndcId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 204
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 205
    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->val$ndcId:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
