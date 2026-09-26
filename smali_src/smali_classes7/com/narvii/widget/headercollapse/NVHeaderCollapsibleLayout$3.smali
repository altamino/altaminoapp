.class Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->bindNVListView(Lcom/narvii/widget/NVListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

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
    iget-object p3, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 3
    .line 4
    iget-boolean p3, p3, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 17
    .line 18
    iget p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    .line 19
    const/4 p3, 0x2

    .line 20
    .line 21
    if-ne p2, p3, :cond_0

    .line 22
    .line 23
    iget-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    const/4 p2, 0x1

    .line 31
    .line 32
    iput-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothExpand()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 39
    const/4 p2, 0x0

    .line 40
    .line 41
    iput-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    .line 42
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
