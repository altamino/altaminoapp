.class Lcom/narvii/widget/NVListView$7;
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

    .line 1312
    iput-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1322
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {p1}, Lcom/narvii/widget/NVListView;->access$1100(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1323
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {p1}, Lcom/narvii/widget/NVListView;->access$1100(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScroll(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1315
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {p1}, Lcom/narvii/widget/NVListView;->access$1100(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1316
    iget-object p1, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {p1}, Lcom/narvii/widget/NVListView;->access$1100(Lcom/narvii/widget/NVListView;)Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/widget/NVListView$7;->this$0:Lcom/narvii/widget/NVListView;

    invoke-interface {p1, v0, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScrollStateChanged(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)V

    :cond_0
    return-void
.end method
