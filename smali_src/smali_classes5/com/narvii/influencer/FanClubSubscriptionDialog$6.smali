.class Lcom/narvii/influencer/FanClubSubscriptionDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 3
    .line 4
    sget-object p2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string p2, "GetCoinsButton"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->e(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 28
    return-void
.end method
