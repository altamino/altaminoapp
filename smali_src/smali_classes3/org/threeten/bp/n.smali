.class public final Lorg/threeten/bp/n;
.super Lorg/threeten/bp/chrono/e;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Lorg/threeten/bp/n;

.field private static final serialVersionUID:J = -0x730df99cdf2a29e5L


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/n;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v1}, Lorg/threeten/bp/n;-><init>(III)V

    .line 7
    .line 8
    sput-object v0, Lorg/threeten/bp/n;->ZERO:Lorg/threeten/bp/n;

    .line 9
    .line 10
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lorg/threeten/bp/n;->PATTERN:Ljava/util/regex/Pattern;

    .line 18
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/e;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/threeten/bp/n;->years:I

    .line 6
    .line 7
    iput p2, p0, Lorg/threeten/bp/n;->months:I

    .line 8
    .line 9
    iput p3, p0, Lorg/threeten/bp/n;->days:I

    .line 10
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/threeten/bp/n;->years:I

    iget v1, p0, Lorg/threeten/bp/n;->months:I

    or-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/n;->days:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    sget-object v0, Lorg/threeten/bp/n;->ZERO:Lorg/threeten/bp/n;

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/n;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/n;

    .line 12
    .line 13
    iget v1, p0, Lorg/threeten/bp/n;->years:I

    .line 14
    .line 15
    iget v3, p1, Lorg/threeten/bp/n;->years:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lorg/threeten/bp/n;->months:I

    .line 20
    .line 21
    iget v3, p1, Lorg/threeten/bp/n;->months:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lorg/threeten/bp/n;->days:I

    .line 26
    .line 27
    iget p1, p1, Lorg/threeten/bp/n;->days:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v0, v2

    .line 32
    :goto_0
    return v0

    .line 33
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/n;->years:I

    .line 3
    .line 4
    iget v1, p0, Lorg/threeten/bp/n;->months:I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    iget v1, p0, Lorg/threeten/bp/n;->days:I

    .line 14
    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/n;->ZERO:Lorg/threeten/bp/n;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string v0, "P0D"

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const/16 v1, 0x50

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget v1, p0, Lorg/threeten/bp/n;->years:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const/16 v1, 0x59

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    :cond_1
    iget v1, p0, Lorg/threeten/bp/n;->months:I

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const/16 v1, 0x4d

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    :cond_2
    iget v1, p0, Lorg/threeten/bp/n;->days:I

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const/16 v1, 0x44

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
