.class public Lcom/narvii/poll/organizer/PollOptionOrganizerFragment;
.super Lcom/narvii/app/NVTabFragment;
.source "PollOptionOrganizerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/app/NVTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createTabFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Lcom/narvii/poll/organizer/MyParticipationListFragment;

    invoke-direct {p1}, Lcom/narvii/poll/organizer/MyParticipationListFragment;-><init>()V

    return-object p1

    .line 36
    :cond_1
    new-instance p1, Lcom/narvii/poll/organizer/PendingRequestListFragment;

    invoke-direct {p1}, Lcom/narvii/poll/organizer/PendingRequestListFragment;-><init>()V

    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p1, 0x7f0f0387

    .line 26
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f0f038a

    .line 24
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
