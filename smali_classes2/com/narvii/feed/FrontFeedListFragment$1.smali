.class Lcom/narvii/feed/FrontFeedListFragment$1;
.super Ljava/lang/Object;
.source "FrontFeedListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$1;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 159
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
