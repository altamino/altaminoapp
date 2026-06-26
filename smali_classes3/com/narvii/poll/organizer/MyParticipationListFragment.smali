.class public Lcom/narvii/poll/organizer/MyParticipationListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MyParticipationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 33
    new-instance p1, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;-><init>(Lcom/narvii/poll/organizer/MyParticipationListFragment;)V

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
