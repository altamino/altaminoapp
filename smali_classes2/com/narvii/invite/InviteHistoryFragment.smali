.class public Lcom/narvii/invite/InviteHistoryFragment;
.super Lcom/narvii/list/NVListFragment;
.source "InviteHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;
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
    .locals 1

    .line 38
    new-instance p1, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;

    const-string v0, "__communityId"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;-><init>(Lcom/narvii/invite/InviteHistoryFragment;Lcom/narvii/app/NVContext;I)V

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget p1, Lcom/narvii/lib/R$string;->invite_history:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method
