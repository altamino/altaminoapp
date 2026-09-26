.class public Lcom/narvii/catalog/activity/RecentActivityFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v1, "MMMM d"

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/catalog/activity/RecentActivityFragment$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$1;-><init>(Lcom/narvii/catalog/activity/RecentActivityFragment;)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->callback:Lcom/narvii/util/Callback;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/catalog/activity/RecentActivityFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method static bridge synthetic t(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->callback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/catalog/activity/RecentActivityFragment;)Lcom/narvii/item/ItemHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

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
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0, p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;-><init>(Lcom/narvii/catalog/activity/RecentActivityFragment;Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->adapter:Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 42
    return-object v1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const-string p1, "categoryList"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-class p2, Lcom/narvii/model/ItemCategory;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string p2, "itemId"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iget-object p3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->callback:Lcom/narvii/util/Callback;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 41
    :cond_0
    return-void

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/item/ItemHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 11
    .line 12
    const-string v0, "recent activities"

    .line 13
    .line 14
    iput-object v0, p1, Lcom/narvii/item/ItemHelper;->source:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    const p1, 0x7f120200

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 21
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    const-string p2, "background"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    const-class v0, Lcom/narvii/model/Media;

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/model/Media;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 23
    return-void
.end method
