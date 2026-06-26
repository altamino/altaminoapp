.class public Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;
.super Lcom/narvii/user/profile/UserProfileFragment;
.source "UserProfileFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->user:Lcom/narvii/model/User;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 46
    iget-object v1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v5, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->user:Lcom/narvii/model/User;

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/profile/UserProfileFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 24
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 25
    new-instance p1, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;)V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->onFinishListener:Lcom/narvii/util/Callback;

    .line 34
    iget-object p1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-eqz p1, :cond_0

    const p2, 0x7f0f0760

    .line 35
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->setLeftText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
