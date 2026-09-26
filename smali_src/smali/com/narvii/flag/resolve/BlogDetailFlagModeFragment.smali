.class public Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;
.super Lcom/narvii/blog/detail/BlogDetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0701c1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    iget-object v1, p0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iget-object v5, p0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;->blog:Lcom/narvii/model/Blog;

    .line 5
    const/4 v6, 0x1

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
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/blog/detail/BlogDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->saveInstanceStats(Lcom/narvii/app/NVContext;Landroid/os/Bundle;)V

    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    .line 23
    :cond_0
    return-void
.end method

.method protected showBottomBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
