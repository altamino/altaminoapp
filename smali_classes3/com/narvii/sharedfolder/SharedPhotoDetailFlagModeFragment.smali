.class public Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;
.super Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.source "SharedPhotoDetailFlagModeFragment.java"


# instance fields
.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field sharedFile:Lcom/narvii/model/SharedFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected isInFlagMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 70
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v5, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;->sharedFile:Lcom/narvii/model/SharedFile;

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0626

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->saveInstanceStats(Lcom/narvii/app/NVContext;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09047d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagModeForCertainView(Landroid/view/ViewGroup;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 53
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    :cond_0
    return-void
.end method
