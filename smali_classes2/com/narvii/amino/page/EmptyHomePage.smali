.class public Lcom/narvii/amino/page/EmptyHomePage;
.super Lcom/narvii/app/NVFragment;
.source "EmptyHomePage.java"

# interfaces
.implements Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;


# instance fields
.field private drawerHost:Lcom/narvii/drawer/DrawerHost;

.field empty:Landroid/view/View;

.field progress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/narvii/amino/page/EmptyHomePage;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/narvii/amino/page/EmptyHomePage;->progress:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 64
    iget-object v2, p0, Lcom/narvii/amino/page/EmptyHomePage;->empty:Landroid/view/View;

    xor-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "drawerHost"

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    iput-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 29
    iget-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1, p0}, Lcom/narvii/drawer/DrawerHost;->addRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02ae

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onRequestCommunityStatusChanged()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/narvii/amino/page/EmptyHomePage;->updateViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x1020004

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/amino/page/EmptyHomePage;->empty:Landroid/view/View;

    const p2, 0x7f0903ed

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0f0767

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0903ea

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/amino/page/EmptyHomePage$1;

    invoke-direct {v0, p0}, Lcom/narvii/amino/page/EmptyHomePage$1;-><init>(Lcom/narvii/amino/page/EmptyHomePage;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x102000d

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage;->progress:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/narvii/amino/page/EmptyHomePage;->updateViews()V

    return-void
.end method
