.class Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;
.super Ljava/lang/Object;
.source "NVHeaderCollapsibleLayout.java"

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

    .line 158
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 166
    iget-object p3, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    iget-boolean p3, p3, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    iget p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mCurHeaderStatus:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    iget-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsBeingDragged:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 168
    iput-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    .line 169
    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothExpand()V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->needAutoExpand:Z

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
