.class public Lcom/narvii/catalog/activity/RecentActivityFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "RecentActivityFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

.field private final callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field private itemHelper:Lcom/narvii/item/ItemHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMMM d"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 385
    new-instance v0, Lcom/narvii/catalog/activity/RecentActivityFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$1;-><init>(Lcom/narvii/catalog/activity/RecentActivityFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->callback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/catalog/activity/RecentActivityFragment;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->callback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/item/ItemHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 64
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 65
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 66
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    new-instance p1, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;-><init>(Lcom/narvii/catalog/activity/RecentActivityFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->adapter:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    .line 69
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->adapter:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object v1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "categoryList"

    .line 399
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/ItemCategory;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "itemId"

    .line 400
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_0
    return-void

    .line 405
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    new-instance p1, Lcom/narvii/item/ItemHelper;

    invoke-direct {p1, p0}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 96
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    const-string v0, "recent activities"

    iput-object v0, p1, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    const p1, 0x7f0f01b1

    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    iget-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    const-string p2, "background"

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/narvii/model/Media;

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    return-void
.end method
