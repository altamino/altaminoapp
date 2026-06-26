.class public Lcom/narvii/poweruser/DisabledFeedFragment;
.super Lcom/narvii/feed/FeedListFragment;
.source "DisabledFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/DisabledFeedFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/feed/FeedListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFeedAdapter(Landroid/os/Bundle;)Lcom/narvii/feed/FeedListAdapter;
    .locals 0

    .line 40
    new-instance p1, Lcom/narvii/poweruser/DisabledFeedFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/DisabledFeedFragment$Adapter;-><init>(Lcom/narvii/poweruser/DisabledFeedFragment;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f03a1

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p1, 0x7f0b01c3

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    return-void
.end method
