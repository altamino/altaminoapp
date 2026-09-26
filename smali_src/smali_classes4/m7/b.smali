.class public final Lm7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lm7/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lm7/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final START:Lm7/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final dayOfMonth:I

.field private final dayOfWeek:Lm7/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dayOfYear:I

.field private final hours:I

.field private final minutes:I

.field private final month:Lm7/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seconds:I

.field private final timestamp:J

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lm7/b$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lm7/b$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lm7/b;->Companion:Lm7/b$a;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lm7/a;->a(Ljava/lang/Long;)Lm7/b;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lm7/b;->START:Lm7/b;

    .line 21
    return-void
.end method

.method public constructor <init>(IIILm7/d;IILm7/c;IJ)V
    .locals 1
    .param p4    # Lm7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lm7/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "dayOfWeek"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "month"

    .line 8
    .line 9
    .line 10
    invoke-static {p7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput p1, p0, Lm7/b;->seconds:I

    .line 16
    .line 17
    iput p2, p0, Lm7/b;->minutes:I

    .line 18
    .line 19
    iput p3, p0, Lm7/b;->hours:I

    .line 20
    .line 21
    iput-object p4, p0, Lm7/b;->dayOfWeek:Lm7/d;

    .line 22
    .line 23
    iput p5, p0, Lm7/b;->dayOfMonth:I

    .line 24
    .line 25
    iput p6, p0, Lm7/b;->dayOfYear:I

    .line 26
    .line 27
    iput-object p7, p0, Lm7/b;->month:Lm7/c;

    .line 28
    .line 29
    iput p8, p0, Lm7/b;->year:I

    .line 30
    .line 31
    iput-wide p9, p0, Lm7/b;->timestamp:J

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lm7/b;)I
    .locals 4
    .param p1    # Lm7/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "other"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-wide v0, p0, Lm7/b;->timestamp:J

    .line 8
    .line 9
    iget-wide v2, p1, Lm7/b;->timestamp:J

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/t;->m(JJ)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lm7/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lm7/b;->a(Lm7/b;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lm7/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lm7/b;

    iget v1, p0, Lm7/b;->seconds:I

    iget v3, p1, Lm7/b;->seconds:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lm7/b;->minutes:I

    iget v3, p1, Lm7/b;->minutes:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lm7/b;->hours:I

    iget v3, p1, Lm7/b;->hours:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lm7/b;->dayOfWeek:Lm7/d;

    iget-object v3, p1, Lm7/b;->dayOfWeek:Lm7/d;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lm7/b;->dayOfMonth:I

    iget v3, p1, Lm7/b;->dayOfMonth:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lm7/b;->dayOfYear:I

    iget v3, p1, Lm7/b;->dayOfYear:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lm7/b;->month:Lm7/c;

    iget-object v3, p1, Lm7/b;->month:Lm7/c;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lm7/b;->year:I

    iget v3, p1, Lm7/b;->year:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lm7/b;->timestamp:J

    iget-wide v5, p1, Lm7/b;->timestamp:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lm7/b;->seconds:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lm7/b;->minutes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lm7/b;->hours:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lm7/b;->dayOfWeek:Lm7/d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lm7/b;->dayOfMonth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lm7/b;->dayOfYear:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lm7/b;->month:Lm7/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lm7/b;->year:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lm7/b;->timestamp:J

    invoke-static {v1, v2}, Li/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMTDate(seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm7/b;->seconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm7/b;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm7/b;->hours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/b;->dayOfWeek:Lm7/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dayOfMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm7/b;->dayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dayOfYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm7/b;->dayOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/b;->month:Lm7/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm7/b;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm7/b;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
