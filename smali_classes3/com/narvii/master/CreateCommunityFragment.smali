.class public Lcom/narvii/master/CreateCommunityFragment;
.super Lcom/narvii/app/NVFragment;
.source "CreateCommunityFragment.java"

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

    .line 22
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/narvii/master/CreateCommunityFragment;->index:I

    return-void
.end method

.method private checkAcmInstall()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/narvii/master/CreateCommunityFragment;->btnDownLoadAcm:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f09018b

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0306

    .line 72
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0f0304

    .line 74
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090170

    if-ne p1, v0, :cond_1

    .line 82
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->launchAcm()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->downloadAcm()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/master/CreateCommunityFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b004f

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ce

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/master/CreateCommunityFragment$1;

    invoke-direct {p3, p0, p1}, Lcom/narvii/master/CreateCommunityFragment$1;-><init>(Lcom/narvii/master/CreateCommunityFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    return-void
.end method
