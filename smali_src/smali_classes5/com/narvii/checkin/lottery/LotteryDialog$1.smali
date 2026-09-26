.class Lcom/narvii/checkin/lottery/LotteryDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$1;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$1;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->h(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$1;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
