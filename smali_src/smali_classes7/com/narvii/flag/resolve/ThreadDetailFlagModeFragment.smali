.class public Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;
.super Lcom/narvii/chat/detail/ThreadDetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# instance fields
.field flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field thread:Lcom/narvii/model/ChatThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->thread:Lcom/narvii/model/ChatThread;

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
    iget-object v1, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iget-object v5, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    const/16 v6, 0xc

    .line 7
    move-object v0, p0

    .line 8
    move v2, p1

    .line 9
    move v3, p2

    .line 10
    move-object v4, p3

    .line 11
    .line 12
    .line 13
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 17
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;-><init>(Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    .line 17
    return-void
.end method
