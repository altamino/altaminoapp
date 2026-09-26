.class Lcom/narvii/influencer/FanClubSubscriptionDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$dlg:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/User;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$dlg:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 3
    invoke-static {v0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->i(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/model/User;)V

    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->val$dlg:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->show()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;->call(Lcom/narvii/model/User;)V

    return-void
.end method
