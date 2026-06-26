.class Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "DrawerRightHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadingErrorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 1109
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 1110
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1120
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1125
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1130
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1150
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b01e2

    .line 1151
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f0b01df

    .line 1153
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1145
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1159
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_0

    .line 1160
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    return p2

    .line 1163
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
