.class public final synthetic Lcom/narvii/checkin/lottery/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/FlipLayout$FlipListener;


# instance fields
.field public final synthetic a:Lcom/narvii/checkin/lottery/LotteryDialog$3;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog$3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/lottery/f;->a:Lcom/narvii/checkin/lottery/LotteryDialog$3;

    iput p2, p0, Lcom/narvii/checkin/lottery/f;->b:I

    return-void
.end method


# virtual methods
.method public final onFlipEnd(Lcom/narvii/widget/FlipLayout;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/lottery/f;->a:Lcom/narvii/checkin/lottery/LotteryDialog$3;

    iget v1, p0, Lcom/narvii/checkin/lottery/f;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/checkin/lottery/LotteryDialog$3;->a(Lcom/narvii/checkin/lottery/LotteryDialog$3;ILcom/narvii/widget/FlipLayout;Z)V

    return-void
.end method
