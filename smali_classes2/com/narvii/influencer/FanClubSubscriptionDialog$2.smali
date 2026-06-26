.class Lcom/narvii/influencer/FanClubSubscriptionDialog$2;
.super Ljava/lang/Object;
.source "FanClubSubscriptionDialog.java"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

.field final synthetic val$nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;->val$nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;->val$nvContext:Lcom/narvii/app/NVContext;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "ndc://tos"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
