.class Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0804e1

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0804e2

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    sget-object v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0804e3

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->overlayColor:Z

    .line 8
    .line 9
    sget-object p1, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sget-object p2, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starIdList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 19
    move-result p2

    .line 20
    int-to-double v2, p2

    .line 21
    mul-double/2addr v0, v2

    .line 22
    double-to-int p2, v0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p1

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starId:I

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 38
    move-result-wide p1

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v0, 0x4076800000000000L    # 360.0

    .line 44
    mul-double/2addr p1, v0

    .line 45
    .line 46
    iput-wide p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    .line 47
    return-void
.end method
