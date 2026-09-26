.class public final synthetic Lcom/narvii/checkin/lottery/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/checkin/lottery/LotteryDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/lottery/c;->a:Lcom/narvii/checkin/lottery/LotteryDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/lottery/c;->a:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/narvii/checkin/lottery/LotteryDialog;->d(Lcom/narvii/checkin/lottery/LotteryDialog;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    return-void
.end method
