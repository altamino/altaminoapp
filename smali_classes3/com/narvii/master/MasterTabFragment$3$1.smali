.class Lcom/narvii/master/MasterTabFragment$3$1;
.super Ljava/lang/Object;
.source "MasterTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTabFragment$3;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/MasterTabFragment$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment$3;I)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$3$1;->this$1:Lcom/narvii/master/MasterTabFragment$3;

    iput p2, p0, Lcom/narvii/master/MasterTabFragment$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$3$1;->this$1:Lcom/narvii/master/MasterTabFragment$3;

    iget-object v0, v0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget v1, p0, Lcom/narvii/master/MasterTabFragment$3$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 563
    instance-of v1, v0, Lcom/narvii/master/MasterTopOffsetAdapter;

    if-eqz v1, :cond_0

    .line 564
    move-object v1, v0

    check-cast v1, Lcom/narvii/master/MasterTopOffsetAdapter;

    invoke-interface {v1}, Lcom/narvii/master/MasterTopOffsetAdapter;->resetOffset()V

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$3$1;->this$1:Lcom/narvii/master/MasterTabFragment$3;

    iget-object v0, v0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget v2, p0, Lcom/narvii/master/MasterTabFragment$3$1;->val$position:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    goto :goto_1

    .line 569
    :cond_2
    instance-of v2, v0, Lcom/narvii/master/MasterTopBarAvailable;

    if-eqz v2, :cond_3

    .line 570
    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment$3$1;->this$1:Lcom/narvii/master/MasterTabFragment$3;

    iget-object v2, v2, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    check-cast v0, Lcom/narvii/master/MasterTopBarAvailable;

    invoke-interface {v0}, Lcom/narvii/master/MasterTopBarAvailable;->isTopBarAvailable()Z

    move-result v0

    iput-boolean v0, v2, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 572
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$3$1;->this$1:Lcom/narvii/master/MasterTabFragment$3;

    iget-object v0, v0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-static {v0}, Lcom/narvii/master/MasterTabFragment;->access$500(Lcom/narvii/master/MasterTabFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment$3$1;->this$1:Lcom/narvii/master/MasterTabFragment$3;

    iget-object v2, v2, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget-boolean v2, v2, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
