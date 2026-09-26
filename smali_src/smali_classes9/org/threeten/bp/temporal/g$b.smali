.class final Lorg/threeten/bp/temporal/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final dowValue:I

.field private final relative:I


# direct methods
.method private constructor <init>(ILorg/threeten/bp/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dayOfWeek"

    .line 3
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Lorg/threeten/bp/temporal/g$b;->relative:I

    .line 4
    invoke-virtual {p2}, Lorg/threeten/bp/d;->getValue()I

    move-result p1

    iput p1, p0, Lorg/threeten/bp/temporal/g$b;->dowValue:I

    return-void
.end method

.method synthetic constructor <init>(ILorg/threeten/bp/d;Lorg/threeten/bp/temporal/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/g$b;-><init>(ILorg/threeten/bp/d;)V

    return-void
.end method


# virtual methods
.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lorg/threeten/bp/temporal/g$b;->relative:I

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget v2, p0, Lorg/threeten/bp/temporal/g$b;->dowValue:I

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_0
    and-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget v1, p0, Lorg/threeten/bp/temporal/g$b;->dowValue:I

    .line 23
    sub-int/2addr v0, v1

    .line 24
    .line 25
    if-ltz v0, :cond_1

    .line 26
    .line 27
    rsub-int/lit8 v0, v0, 0x7

    .line 28
    :goto_0
    int-to-long v0, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    neg-int v0, v0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :goto_1
    sget-object v2, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_2
    iget v1, p0, Lorg/threeten/bp/temporal/g$b;->dowValue:I

    .line 41
    sub-int/2addr v1, v0

    .line 42
    .line 43
    if-ltz v1, :cond_3

    .line 44
    .line 45
    rsub-int/lit8 v0, v1, 0x7

    .line 46
    :goto_2
    int-to-long v0, v0

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    neg-int v0, v1

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :goto_3
    sget-object v2, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method
