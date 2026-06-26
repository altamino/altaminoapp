.class public Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "SharedPhotoCollectionFragment.java"


# instance fields
.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 9

    .line 36
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 38
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 39
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 40
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;Lcom/narvii/app/NVContext;)V

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 73
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    move-object v3, v1

    move-object v4, p0

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v2, 0x3

    .line 74
    invoke-virtual {v1, p1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 75
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 76
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "id"

    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 29
    const-class p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
