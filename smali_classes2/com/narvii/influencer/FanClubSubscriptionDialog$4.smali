.class final Lcom/narvii/influencer/FanClubSubscriptionDialog$4;
.super Ljava/lang/Object;
.source "FanClubSubscriptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/narvii/influencer/FanClubSubscriptionDialog;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$dlg:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/User;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$dlg:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$102(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/model/User;)Lcom/narvii/model/User;

    .line 218
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$dlg:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-virtual {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->show()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->call(Lcom/narvii/model/User;)V

    return-void
.end method
