.class Lcom/narvii/feed/SubTypeFeedListFragment$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/SubTypeFeedListFragment;->expand(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

.field final synthetic val$targetHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/feed/SubTypeFeedListFragment;Landroid/view/View;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$2;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/SubTypeFeedListFragment$2;->val$v:Landroid/view/View;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/feed/SubTypeFeedListFragment$2;->val$targetHeight:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/feed/SubTypeFeedListFragment$2;->val$v:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v0, p1, v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p1, -0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment$2;->val$targetHeight:I

    .line 17
    int-to-float v0, v0

    .line 18
    mul-float/2addr v0, p1

    .line 19
    float-to-int p1, v0

    .line 20
    .line 21
    :goto_0
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$2;->val$v:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 27
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
