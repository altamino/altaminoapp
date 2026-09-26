.class public Lcom/narvii/master/CreateCommunityFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field btnDownLoadAcm:Landroid/view/View;

.field index:I

.field packageUtils:Lcom/narvii/util/PackageUtils;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/master/CreateCommunityFragment;->index:I

    .line 7
    return-void
.end method

.method private checkAcmInstall()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CreateCommunityFragment;->btnDownLoadAcm:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    const v1, 0x7f0a023c

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    const v1, 0x7f12035b

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    const v1, 0x7f120359

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a021a

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->launchAcm()V

    .line 23
    .line 24
    const-string p1, "Open"

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->downloadAcm()V

    .line 31
    .line 32
    const-string p1, "Download"

    .line 33
    .line 34
    :goto_0
    const-string v0, "statistics"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 41
    .line 42
    const-string v1, "Downloads or Opens ACM"

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "ACM Button Tapped Total"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v1, "Button Type"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 58
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0053

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a039a

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    new-instance p3, Lcom/narvii/master/CreateCommunityFragment$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {p3, p0, p1}, Lcom/narvii/master/CreateCommunityFragment$1;-><init>(Lcom/narvii/master/CreateCommunityFragment;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    return-void
.end method
