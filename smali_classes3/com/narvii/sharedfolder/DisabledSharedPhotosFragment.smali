.class public Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;
.super Lcom/narvii/list/NVListFragment;
.source "DisabledSharedPhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070282

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 26
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    move-object v1, p1

    move-object v2, p0

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 27
    new-instance v0, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;-><init>(Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x3

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f0f03a0

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method
