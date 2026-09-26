.class Lcom/narvii/list/refresh/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->h(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    .line 6
    move-result p2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->h(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    .line 12
    move-result v0

    .line 13
    neg-float v0, v0

    .line 14
    mul-float/2addr v0, p1

    .line 15
    add-float/2addr p2, v0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->m(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->k(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V

    .line 26
    return-void
.end method
