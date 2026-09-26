.class public Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;
.super Lcom/narvii/sharedfolder/SharedBaseFragment;
.source "SourceFile"


# instance fields
.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 9

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    new-array v1, v0, [Landroid/view/View;

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    const v2, 0x7f0704a0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result v8

    .line 52
    .line 53
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 54
    move-object v3, v1

    .line 55
    move-object v4, p0

    .line 56
    move v5, v8

    .line 57
    move v6, v8

    .line 58
    move v7, v8

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v3 .. v8}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 62
    const/4 v2, 0x3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 73
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "id"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 15
    .line 16
    const-class p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 24
    :cond_0
    return-void
.end method
