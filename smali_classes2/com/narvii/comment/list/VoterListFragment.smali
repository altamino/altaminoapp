.class public Lcom/narvii/comment/list/VoterListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "VoterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/list/VoterListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 32
    new-instance p1, Lcom/narvii/comment/list/VoterListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/comment/list/VoterListFragment$Adapter;-><init>(Lcom/narvii/comment/list/VoterListFragment;)V

    return-object p1
.end method

.method isQA()Z
    .locals 3

    const-string/jumbo v0, "type"

    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "feedType"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/narvii/comment/list/VoterListFragment;->isQA()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f029d

    goto :goto_0

    :cond_0
    const p1, 0x7f0f029c

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method
