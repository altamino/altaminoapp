.class Lcom/narvii/list/refresh/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

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

    .line 174
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$000(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 188
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->start()V

    .line 189
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$200(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$300(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$300(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$500(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/CircleImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$402(Lcom/narvii/list/refresh/SwipeRefreshLayout;I)I

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$1;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$600(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V

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
