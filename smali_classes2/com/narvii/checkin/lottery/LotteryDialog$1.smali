.class Lcom/narvii/checkin/lottery/LotteryDialog$1;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;
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

    .line 104
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$1;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$1;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput-object p1, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 108
    invoke-static {v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->access$000(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 109
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$1;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
