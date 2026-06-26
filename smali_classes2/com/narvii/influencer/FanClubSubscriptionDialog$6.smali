.class Lcom/narvii/influencer/FanClubSubscriptionDialog$6;
.super Ljava/lang/Object;
.source "FanClubSubscriptionDialog.java"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;->updateWallet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 280
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "GetCoinsButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 282
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$200(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method
