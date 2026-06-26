.class Lcom/narvii/checkin/lottery/LotteryDialog$5;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->onOptinAdsEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 330
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://wallet"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    iget-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p2, p2, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 332
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    return-void
.end method
