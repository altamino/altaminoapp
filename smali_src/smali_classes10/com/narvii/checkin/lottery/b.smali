.class public final synthetic Lcom/narvii/checkin/lottery/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/checkin/lottery/LotteryDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/lottery/b;->a:Lcom/narvii/checkin/lottery/LotteryDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/lottery/b;->a:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-static {v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->c(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    return-void
.end method
