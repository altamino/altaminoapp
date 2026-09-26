.class Lcom/narvii/widget/NVListView$7;
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
    iput-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->h(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->h(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScroll(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 20
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->h(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->h(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScrollStateChanged(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)V

    .line 20
    :cond_0
    return-void
.end method
