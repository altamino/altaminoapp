.class Lcom/narvii/list/refresh/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V
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

    .line 1006
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1014
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$800(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1015
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$900(Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
