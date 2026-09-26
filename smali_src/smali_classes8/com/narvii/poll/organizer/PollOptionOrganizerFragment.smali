.class public Lcom/narvii/poll/organizer/PollOptionOrganizerFragment;
.super Lcom/narvii/app/NVTabFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVTabFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createTabFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance p1, Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Lcom/narvii/poll/organizer/MyParticipationListFragment;-><init>()V

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_1
    new-instance p1, Lcom/narvii/poll/organizer/PendingRequestListFragment;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Lcom/narvii/poll/organizer/PendingRequestListFragment;-><init>()V

    .line 19
    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    const p1, 0x7f1203df

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_1
    const p1, 0x7f1203e2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
