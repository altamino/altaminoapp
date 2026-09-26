.class Lcom/narvii/feed/SubTypeFeedListFragment$3;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/SubTypeFeedListFragment;->collapse(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

.field final synthetic val$initialHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/feed/SubTypeFeedListFragment;Landroid/view/View;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$3;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/SubTypeFeedListFragment$3;->val$v:Landroid/view/View;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/feed/SubTypeFeedListFragment$3;->val$initialHeight:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    .line 2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    .line 4
    cmpl-float p2, p1, p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$3;->val$v:Landroid/view/View;

    .line 9
    .line 10
    const/16 p2, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p2, p0, Lcom/narvii/feed/SubTypeFeedListFragment$3;->val$v:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment$3;->val$initialHeight:I

    .line 23
    int-to-float v1, v0

    .line 24
    mul-float/2addr v1, p1

    .line 25
    float-to-int p1, v1

    .line 26
    sub-int/2addr v0, p1

    .line 27
    .line 28
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$3;->val$v:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 34
    :goto_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
