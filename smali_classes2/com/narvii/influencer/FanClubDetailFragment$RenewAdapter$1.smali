.class Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;
.super Ljava/lang/Object;
.source "FanClubDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->buildCells(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 3

    .line 330
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$100(Lcom/narvii/influencer/FanClubDetailFragment;)V

    return-void

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    iget-object v0, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v1, v0, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-boolean v1, v1, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    if-eqz v1, :cond_1

    .line 335
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0f0e51

    .line 336
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(I)V

    const p1, 0x7f0f0689

    .line 337
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const p1, 0x7f0f0193

    const/4 v1, 0x0

    .line 338
    new-instance v2, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f119f

    const/16 v1, 0x8

    .line 344
    new-instance v2, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$2;

    invoke-direct {v2, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$2;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 350
    new-instance p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$3;

    invoke-direct {p1, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$3;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 356
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 358
    invoke-static {v0, p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$300(Lcom/narvii/influencer/FanClubDetailFragment;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 327
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
