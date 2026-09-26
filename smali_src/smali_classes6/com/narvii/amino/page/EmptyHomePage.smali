.class public Lcom/narvii/amino/page/EmptyHomePage;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;


# instance fields
.field private drawerHost:Lcom/narvii/drawer/DrawerHost;

.field empty:Landroid/view/View;

.field progress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/page/EmptyHomePage;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Lcom/narvii/amino/page/EmptyHomePage;->progress:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/amino/page/EmptyHomePage;->empty:Landroid/view/View;

    .line 22
    xor-int/2addr v0, v1

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "drawerHost"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/narvii/drawer/DrawerHost;->addRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V

    .line 19
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02de

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onRequestCommunityStatusChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/amino/page/EmptyHomePage;->updateViews()V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x1020004

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/amino/page/EmptyHomePage;->empty:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a04eb

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f120816

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a04e9

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/amino/page/EmptyHomePage$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/amino/page/EmptyHomePage$1;-><init>(Lcom/narvii/amino/page/EmptyHomePage;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    const p2, 0x102000d

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/amino/page/EmptyHomePage;->progress:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/amino/page/EmptyHomePage;->updateViews()V

    .line 55
    return-void
.end method
