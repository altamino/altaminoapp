.class Lcom/narvii/influencer/FanClubSubscriptionDialog$3;
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

    .line 138
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$3;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$3;->val$nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 141
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://help-center"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    iget-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$3;->val$nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
