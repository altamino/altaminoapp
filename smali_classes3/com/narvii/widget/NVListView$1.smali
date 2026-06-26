.class Lcom/narvii/widget/NVListView$1;
.super Ljava/lang/Object;
.source "NVListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVListView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$100(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$100(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$200(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$200(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 376
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$000(Lcom/narvii/widget/NVListView;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$100(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$100(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$200(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$200(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 364
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    :cond_2
    return-void
.end method
