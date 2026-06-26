.class public Lcom/narvii/chat/hangout/SearchHangoutListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SearchHangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;


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

    .line 30
    new-instance p1, Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;-><init>(Lcom/narvii/chat/hangout/SearchHangoutListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/SearchHangoutListFragment;->adapter:Lcom/narvii/chat/hangout/SearchHangoutListFragment$Adapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0f59

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method
