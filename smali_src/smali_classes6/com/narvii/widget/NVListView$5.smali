.class Lcom/narvii/widget/NVListView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListView;->smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listView:Lcom/narvii/widget/NVListView;

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView$5;->val$listView:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/NVListView$5;->val$position:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/widget/NVListView$5;->val$offset:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/NVListView$5;->val$listView:Lcom/narvii/widget/NVListView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 8
    .line 9
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/widget/NVListView$5$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/narvii/widget/NVListView$5$1;-><init>(Lcom/narvii/widget/NVListView$5;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    return-void
.end method
