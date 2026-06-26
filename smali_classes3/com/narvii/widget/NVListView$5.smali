.class final Lcom/narvii/widget/NVListView$5;
.super Ljava/lang/Object;
.source "NVListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListView;->smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listView:Lcom/narvii/widget/NVListView;

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;II)V
    .locals 0

    .line 1280
    iput-object p1, p0, Lcom/narvii/widget/NVListView$5;->val$listView:Lcom/narvii/widget/NVListView;

    iput p2, p0, Lcom/narvii/widget/NVListView$5;->val$position:I

    iput p3, p0, Lcom/narvii/widget/NVListView$5;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1284
    iget-object p1, p0, Lcom/narvii/widget/NVListView$5;->val$listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1287
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/narvii/widget/NVListView$5$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/NVListView$5$1;-><init>(Lcom/narvii/widget/NVListView$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
