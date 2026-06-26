.class Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;
.super Ljava/lang/Object;
.source "LotteryBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/checkin/lottery/LotteryBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Circle"
.end annotation


# static fields
.field public static starIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public overlayColor:Z

.field public radius:F

.field public starAngle:D

.field public starId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    const v1, 0x7f0803c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    const v1, 0x7f0803c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    const v1, 0x7f0803c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 72
    iput-boolean p2, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->overlayColor:Z

    .line 74
    sget-object p1, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget-object p2, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starId:I

    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double p1, p1, v0

    iput-wide p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    return-void
.end method
