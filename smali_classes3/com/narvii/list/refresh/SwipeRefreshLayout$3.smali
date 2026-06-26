.class Lcom/narvii/list/refresh/SwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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

    .line 455
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$3;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 458
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$3;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$700(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V

    return-void
.end method
