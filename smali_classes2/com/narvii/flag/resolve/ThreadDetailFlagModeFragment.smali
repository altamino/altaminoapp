.class public Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;
.super Lcom/narvii/chat/detail/ThreadDetailFragment;
.source "ThreadDetailFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field thread:Lcom/narvii/model/ChatThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 42
    iget-object v1, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v5, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->thread:Lcom/narvii/model/ChatThread;

    const/16 v6, 0xc

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 24
    new-instance p1, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    return-void
.end method
