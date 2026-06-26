.class Lcom/narvii/livelayer/LiveLayerMainFragment$9;
.super Ljava/lang/Object;
.source "LiveLayerMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->blockClickEvent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

.field final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;I)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iput p2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->val$cid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 516
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    const-string v0, "fromCommunityDetail"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 518
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "join"

    .line 519
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 521
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 524
    :cond_0
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 525
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->val$cid:I

    const-string v2, "id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "joinOnly"

    .line 526
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 513
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$9;->call(Ljava/lang/Boolean;)V

    return-void
.end method
