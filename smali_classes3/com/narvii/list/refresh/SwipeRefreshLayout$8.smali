.class Lcom/narvii/list/refresh/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


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

    .line 1171
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1174
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$1400(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    move-result p2

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$1400(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 1175
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {v0, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$700(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V

    .line 1176
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$8;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$1300(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V

    return-void
.end method
