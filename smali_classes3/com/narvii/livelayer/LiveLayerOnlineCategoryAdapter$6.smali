.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;
.super Ljava/lang/Object;
.source "LiveLayerOnlineCategoryAdapter.java"

# interfaces
.implements Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$membersCountTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$cell:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$membersCountTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMemberCountChanged(I)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_2

    .line 363
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$cell:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->access$300(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/view/View;I)V

    .line 370
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$membersCountTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
