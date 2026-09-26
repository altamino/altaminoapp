.class public Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0704a0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v6

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p0

    .line 16
    move v3, v6

    .line 17
    move v4, v6

    .line 18
    move v5, v6

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, p0}, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;-><init>(Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;Lcom/narvii/app/NVContext;)V

    .line 27
    const/4 v1, 0x3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 31
    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f1203fa

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    return-void
.end method
