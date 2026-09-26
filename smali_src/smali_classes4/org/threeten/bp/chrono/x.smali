.class public final enum Lorg/threeten/bp/chrono/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/chrono/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/chrono/x;",
        ">;",
        "Lorg/threeten/bp/chrono/i;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/chrono/x;

.field public static final enum BE:Lorg/threeten/bp/chrono/x;

.field public static final enum BEFORE_BE:Lorg/threeten/bp/chrono/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/x;

    .line 3
    .line 4
    const-string v1, "BEFORE_BE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/x;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/chrono/x;->BEFORE_BE:Lorg/threeten/bp/chrono/x;

    .line 11
    .line 12
    new-instance v1, Lorg/threeten/bp/chrono/x;

    .line 13
    .line 14
    const-string v3, "BE"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/chrono/x;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/threeten/bp/chrono/x;->BE:Lorg/threeten/bp/chrono/x;

    .line 21
    const/4 v3, 0x2

    .line 22
    .line 23
    new-array v3, v3, [Lorg/threeten/bp/chrono/x;

    .line 24
    .line 25
    aput-object v0, v3, v2

    .line 26
    .line 27
    aput-object v1, v3, v4

    .line 28
    .line 29
    sput-object v3, Lorg/threeten/bp/chrono/x;->$VALUES:[Lorg/threeten/bp/chrono/x;

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static a(I)Lorg/threeten/bp/chrono/x;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lorg/threeten/bp/chrono/x;->BE:Lorg/threeten/bp/chrono/x;

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    new-instance p0, Lorg/threeten/bp/b;

    .line 11
    .line 12
    const-string v0, "Era is not valid for ThaiBuddhistEra"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0

    .line 17
    .line 18
    :cond_1
    sget-object p0, Lorg/threeten/bp/chrono/x;->BEFORE_BE:Lorg/threeten/bp/chrono/x;

    .line 19
    return-object p0
.end method

.method static n(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/x;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/chrono/x;->a(I)Lorg/threeten/bp/chrono/x;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/chrono/x;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/chrono/x;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/chrono/x;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/chrono/x;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/x;->$VALUES:[Lorg/threeten/bp/chrono/x;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/chrono/x;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/chrono/x;

    .line 9
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/u;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/u;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/x;->getValue()I

    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "Unsupported field: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/j<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/threeten/bp/temporal/b;->ERAS:Lorg/threeten/bp/temporal/b;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-ne p1, v0, :cond_1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/x;->getValue()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/x;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/x;->k(Lorg/threeten/bp/temporal/h;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getValue()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    move v1, v2

    .line 22
    :cond_2
    return v1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/x;->getValue()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Unsupported field: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method o(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/x;->getValue()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 8
    return-void
.end method
