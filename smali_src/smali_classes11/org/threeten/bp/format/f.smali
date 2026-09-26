.class public final Lorg/threeten/bp/format/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/threeten/bp/format/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD:Lorg/threeten/bp/format/f;


# instance fields
.field private final decimalSeparator:C

.field private final negativeSign:C

.field private final positiveSign:C

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/f;

    .line 3
    .line 4
    const/16 v1, 0x2d

    .line 5
    .line 6
    const/16 v2, 0x2e

    .line 7
    .line 8
    const/16 v3, 0x30

    .line 9
    .line 10
    const/16 v4, 0x2b

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/threeten/bp/format/f;-><init>(CCCC)V

    .line 14
    .line 15
    sput-object v0, Lorg/threeten/bp/format/f;->STANDARD:Lorg/threeten/bp/format/f;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    const/high16 v1, 0x3f400000    # 0.75f

    .line 20
    const/4 v2, 0x2

    .line 21
    .line 22
    const/16 v3, 0x10

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 26
    .line 27
    sput-object v0, Lorg/threeten/bp/format/f;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 28
    return-void
.end method

.method private constructor <init>(CCCC)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-char p1, p0, Lorg/threeten/bp/format/f;->zeroDigit:C

    .line 6
    .line 7
    iput-char p2, p0, Lorg/threeten/bp/format/f;->positiveSign:C

    .line 8
    .line 9
    iput-char p3, p0, Lorg/threeten/bp/format/f;->negativeSign:C

    .line 10
    .line 11
    iput-char p4, p0, Lorg/threeten/bp/format/f;->decimalSeparator:C

    .line 12
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-char v0, p0, Lorg/threeten/bp/format/f;->zeroDigit:C

    .line 3
    .line 4
    const/16 v1, 0x30

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return-object p1

    .line 8
    :cond_0
    sub-int/2addr v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, p1

    .line 15
    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    aget-char v2, p1, v1

    .line 19
    add-int/2addr v2, v0

    .line 20
    int-to-char v2, v2

    .line 21
    .line 22
    aput-char v2, p1, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 31
    return-object v0
.end method

.method public b()C
    .locals 1

    .line 1
    iget-char v0, p0, Lorg/threeten/bp/format/f;->decimalSeparator:C

    return v0
.end method

.method public c()C
    .locals 1

    .line 1
    iget-char v0, p0, Lorg/threeten/bp/format/f;->negativeSign:C

    return v0
.end method

.method public d()C
    .locals 1

    .line 1
    iget-char v0, p0, Lorg/threeten/bp/format/f;->positiveSign:C

    return v0
.end method

.method public e()C
    .locals 1

    .line 1
    iget-char v0, p0, Lorg/threeten/bp/format/f;->zeroDigit:C

    return v0
.end method

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
    instance-of v1, p1, Lorg/threeten/bp/format/f;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/format/f;

    .line 12
    .line 13
    iget-char v1, p0, Lorg/threeten/bp/format/f;->zeroDigit:C

    .line 14
    .line 15
    iget-char v3, p1, Lorg/threeten/bp/format/f;->zeroDigit:C

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    iget-char v1, p0, Lorg/threeten/bp/format/f;->positiveSign:C

    .line 20
    .line 21
    iget-char v3, p1, Lorg/threeten/bp/format/f;->positiveSign:C

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    iget-char v1, p0, Lorg/threeten/bp/format/f;->negativeSign:C

    .line 26
    .line 27
    iget-char v3, p1, Lorg/threeten/bp/format/f;->negativeSign:C

    .line 28
    .line 29
    if-ne v1, v3, :cond_1

    .line 30
    .line 31
    iget-char v1, p0, Lorg/threeten/bp/format/f;->decimalSeparator:C

    .line 32
    .line 33
    iget-char p1, p1, Lorg/threeten/bp/format/f;->decimalSeparator:C

    .line 34
    .line 35
    if-ne v1, p1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_0
    return v0

    .line 39
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-char v0, p0, Lorg/threeten/bp/format/f;->zeroDigit:C

    iget-char v1, p0, Lorg/threeten/bp/format/f;->positiveSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lorg/threeten/bp/format/f;->negativeSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lorg/threeten/bp/format/f;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "DecimalStyle["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-char v1, p0, Lorg/threeten/bp/format/f;->zeroDigit:C

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-char v1, p0, Lorg/threeten/bp/format/f;->positiveSign:C

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-char v1, p0, Lorg/threeten/bp/format/f;->negativeSign:C

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-char v1, p0, Lorg/threeten/bp/format/f;->decimalSeparator:C

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "]"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
