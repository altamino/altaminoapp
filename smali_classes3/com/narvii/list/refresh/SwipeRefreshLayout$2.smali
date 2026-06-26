.class Lcom/narvii/list/refresh/SwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/refresh/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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

    .line 414
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$2;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 417
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$2;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$700(Lcom/narvii/list/refresh/SwipeRefreshLayout;F)V

    return-void
.end method
