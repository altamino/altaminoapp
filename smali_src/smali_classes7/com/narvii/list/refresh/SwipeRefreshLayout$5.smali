.class Lcom/narvii/list/refresh/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->f(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$5;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->o(Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    .line 15
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
