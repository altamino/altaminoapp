.class Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/FanClubDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 15
    .line 16
    .line 17
    const v2, 0x7f12073d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/list/prefs/PrefsToggle;->setTextSingleLine(Z)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 33
    .line 34
    iget-boolean v1, v1, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;)V

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
