.class public Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;
.super Lcom/narvii/user/profile/UserProfileFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->user:Lcom/narvii/model/User;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    iget-object v1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iget-object v5, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->user:Lcom/narvii/model/User;

    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    .line 11
    .line 12
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/profile/UserProfileFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->onFinishListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    const p2, 0x7f12080d

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->setLeftText(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
