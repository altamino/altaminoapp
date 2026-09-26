.class public Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;
.super Lcom/narvii/catalog/picker/BasePickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;,
        Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

.field selAdapter:Lcom/narvii/list/select/SelectableAdapter;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    new-array v1, v0, [Landroid/view/View;

    .line 9
    .line 10
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;-><init>(Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;)V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 33
    .line 34
    iput-boolean v2, v1, Lcom/narvii/catalog/CatalogItemGridAdapter;->canSelectOfficial:Z

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;-><init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 60
    const/4 v4, 0x3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, v4}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 64
    .line 65
    new-instance v2, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, p0, p0}, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 69
    .line 70
    new-instance v4, Lcom/narvii/list/MergeAdapter;

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 83
    return-object v4
.end method

.method public bridge synthetic hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->hasPostEntry()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/picker/BasePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f121056

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "uid"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->uid:Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "mine"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string p1, "account"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->uid:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/picker/BasePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 20
    .line 21
    const-string p1, "previewMedia"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-class p2, Lcom/narvii/model/Media;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/model/Media;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 39
    return-void
.end method

.method public bridge synthetic willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->willFinish(Lcom/narvii/app/NVActivity;)V

    .line 4
    return-void
.end method
