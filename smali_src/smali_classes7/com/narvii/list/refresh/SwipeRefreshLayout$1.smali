.class Lcom/narvii/list/refresh/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/refresh/SwipeRefreshLayout;
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
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

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
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->e(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->d(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const/16 v0, 0xff

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->d(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->start()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->c(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->b(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->b(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->a(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/CircleImageView;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 63
    move-result v0

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->j(Lcom/narvii/list/refresh/SwipeRefreshLayout;I)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->l(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

    .line 73
    :goto_0
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
