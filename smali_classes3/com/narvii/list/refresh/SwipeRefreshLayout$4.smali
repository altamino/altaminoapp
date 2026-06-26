.class Lcom/narvii/list/refresh/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


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

    .line 481
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$startingAlpha:I

    iput p3, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 484
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    move-result-object p2

    iget v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v1, v0

    iget v2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$4;->val$endingAlpha:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    .line 485
    invoke-virtual {p2, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method
