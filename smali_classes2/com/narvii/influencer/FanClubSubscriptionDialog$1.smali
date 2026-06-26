.class Lcom/narvii/influencer/FanClubSubscriptionDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "FanClubSubscriptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;
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

    .line 88
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$1;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$1;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$000(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    return-void
.end method
