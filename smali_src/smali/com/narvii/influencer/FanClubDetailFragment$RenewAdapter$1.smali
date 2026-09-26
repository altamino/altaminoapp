.class Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 2
    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 3
    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->x(Lcom/narvii/influencer/FanClubDetailFragment;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 4
    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v0, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-boolean v0, v0, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120f72

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f120737

    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 8
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$1;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;)V

    const v1, 0x7f1201e2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 9
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$2;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$2;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;)V

    const v1, 0x7f1212a7

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 10
    new-instance v0, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$3;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1$3;-><init>(Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/narvii/influencer/FanClubDetailFragment;->w(Lcom/narvii/influencer/FanClubDetailFragment;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
