.class public Lcom/narvii/poll/PollVoterListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PollVoterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/PollVoterListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 35
    new-instance p1, Lcom/narvii/poll/PollVoterListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/poll/PollVoterListFragment$Adapter;-><init>(Lcom/narvii/poll/PollVoterListFragment;)V

    return-object p1
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0380

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method
