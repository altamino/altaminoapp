.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$cell:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$membersCountTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onMemberCountChanged(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    if-lez p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    iput-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$cell:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->g(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/view/View;I)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;->val$membersCountTextView:Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
