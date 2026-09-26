.class public Lcom/narvii/comment/list/VoterListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/list/VoterListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/comment/list/VoterListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/comment/list/VoterListFragment$Adapter;-><init>(Lcom/narvii/comment/list/VoterListFragment;)V

    .line 6
    return-object p1
.end method

.method isQA()Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "type"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "feedType"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x3

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/comment/list/VoterListFragment;->isQA()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x7f1202e8

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    const p1, 0x7f1202e7

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 20
    return-void
.end method
