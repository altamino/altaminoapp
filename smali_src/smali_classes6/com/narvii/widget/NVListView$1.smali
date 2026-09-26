.class Lcom/narvii/widget/NVListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->f(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->f(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->g(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->g(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->l(Lcom/narvii/widget/NVListView;)V

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->f(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->f(Lcom/narvii/widget/NVListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->g(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/widget/NVListView$1;->this$0:Lcom/narvii/widget/NVListView;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->g(Lcom/narvii/widget/NVListView;)Ljava/util/ArrayList;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method
