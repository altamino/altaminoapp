.class public Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;
.super Lcom/narvii/catalog/picker/BasePickerFragment;
.source "CatalogSearchPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;,
        Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

.field selAdapter:Lcom/narvii/list/select/SelectableAdapter;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 67
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 68
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 70
    new-instance v1, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;-><init>(Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;)V

    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    .line 71
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    iget-boolean v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    iput-boolean v2, v1, Lcom/narvii/catalog/CatalogItemGridAdapter;->canSelectOfficial:Z

    .line 72
    new-instance v1, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;-><init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V

    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 73
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    .line 75
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 76
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 78
    new-instance v2, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 80
    new-instance v4, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v4, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 81
    invoke-virtual {v4, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 82
    invoke-virtual {v4, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 83
    invoke-virtual {v4, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object v4
.end method

.method public bridge synthetic hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->hasPostEntry()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/picker/BasePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0f48

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string/jumbo p1, "uid"

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->uid:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->uid:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "mine"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "account"

    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 50
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->uid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/picker/BasePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const-string p1, "previewMedia"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/Media;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 62
    iget-object p2, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    return-void
.end method

.method public bridge synthetic willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->willFinish(Lcom/narvii/app/NVActivity;)V

    return-void
.end method
