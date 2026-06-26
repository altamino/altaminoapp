.class public Lcom/narvii/chat/hangout/ActiveHangoutListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ActiveHangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/hangout/ActiveHangoutListFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/chat/hangout/ActiveHangoutListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 32
    new-instance p1, Lcom/narvii/chat/hangout/ActiveHangoutListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/hangout/ActiveHangoutListFragment$Adapter;-><init>(Lcom/narvii/chat/hangout/ActiveHangoutListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/ActiveHangoutListFragment;->adapter:Lcom/narvii/chat/hangout/ActiveHangoutListFragment$Adapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0065

    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method
