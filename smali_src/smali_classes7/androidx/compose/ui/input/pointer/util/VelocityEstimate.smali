.class final Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final confidence:F

.field private final durationMillis:J

.field private final offset:J

.field private final pixelsPerSecond:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 16
    move-result-wide v3

    .line 17
    .line 18
    const/high16 v5, 0x3f800000    # 1.0f

    .line 19
    .line 20
    const-wide/16 v6, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 24
    move-result-wide v8

    .line 25
    const/4 v10, 0x0

    .line 26
    move-object v2, v0

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v2 .. v10}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJLkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->None:Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 32
    return-void
.end method

.method private constructor <init>(JFJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    iput p3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    iput-wide p4, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    iput-wide p6, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(JFJJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJ)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->None:Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->o(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->o(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VelocityEstimate(pixelsPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->pixelsPerSecond:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->durationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->offset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
