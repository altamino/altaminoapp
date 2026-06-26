.class Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "FanClubDetailFragment.java"


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

    .line 312
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 313
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 323
    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v0, v0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const v2, 0x7f0f068f

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Lcom/narvii/list/prefs/PrefsToggle;->setTextSingleLine(Z)V

    .line 326
    iget-object v1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v1, v1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-boolean v1, v1, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    iput-boolean v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 327
    new-instance v1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;

    invoke-direct {v1, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;)V

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 362
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
