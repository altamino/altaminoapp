.class Lcom/narvii/list/refresh/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/refresh/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;II)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$startingAlpha:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$endingAlpha:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->d(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$startingAlpha:I

    .line 9
    int-to-float v1, v0

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$endingAlpha:I

    .line 12
    sub-int/2addr v2, v0

    .line 13
    int-to-float v0, v2

    .line 14
    mul-float/2addr v0, p1

    .line 15
    add-float/2addr v1, v0

    .line 16
    float-to-int p1, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 20
    return-void
.end method
