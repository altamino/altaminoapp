.class Lcom/narvii/livelayer/LiveLayerMainFragment$4;
.super Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected blockUserClick()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$000(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z

    move-result v0

    return v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    const-string v1, "pageTopic"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleIcon()I
    .locals 1

    const v0, 0x7f0803b0

    return v0
.end method

.method public getTitleIconBackground()I
    .locals 1

    const v0, -0x3cccbe

    return v0
.end method

.method public getTitleView()Ljava/lang/String;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0afb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    invoke-static {v0, v1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMoreItemClick()Z
    .locals 3

    .line 287
    const-class v0, Lcom/narvii/livelayer/MemberOnPageFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const v2, 0x7f0f0afb

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    const-string v2, "pageTopic"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$100(Lcom/narvii/livelayer/LiveLayerMainFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
