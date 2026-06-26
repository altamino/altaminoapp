.class public Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;
.super Lcom/narvii/blog/detail/BlogDetailFragment;
.source "BlogDetailFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;->blog:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method protected disableOptinAds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected fansOnlyPostMarginBottom()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 66
    iget-object v1, p0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v5, p0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;->blog:Lcom/narvii/model/Blog;

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/blog/detail/BlogDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->saveInstanceStats(Lcom/narvii/app/NVContext;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 43
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 44
    new-instance p1, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;)V

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    :cond_0
    return-void
.end method

.method protected showBottomBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
