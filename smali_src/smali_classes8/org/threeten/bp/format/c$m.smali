.class final enum Lorg/threeten/bp/format/c$m;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/format/c$m;",
        ">;",
        "Lorg/threeten/bp/format/c$g;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/format/c$m;

.field public static final enum INSENSITIVE:Lorg/threeten/bp/format/c$m;

.field public static final enum LENIENT:Lorg/threeten/bp/format/c$m;

.field public static final enum SENSITIVE:Lorg/threeten/bp/format/c$m;

.field public static final enum STRICT:Lorg/threeten/bp/format/c$m;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c$m;

    .line 3
    .line 4
    const-string v1, "SENSITIVE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/c$m;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/format/c$m;->SENSITIVE:Lorg/threeten/bp/format/c$m;

    .line 11
    .line 12
    new-instance v1, Lorg/threeten/bp/format/c$m;

    .line 13
    .line 14
    const-string v3, "INSENSITIVE"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/format/c$m;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/threeten/bp/format/c$m;->INSENSITIVE:Lorg/threeten/bp/format/c$m;

    .line 21
    .line 22
    new-instance v3, Lorg/threeten/bp/format/c$m;

    .line 23
    .line 24
    const-string v5, "STRICT"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lorg/threeten/bp/format/c$m;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lorg/threeten/bp/format/c$m;->STRICT:Lorg/threeten/bp/format/c$m;

    .line 31
    .line 32
    new-instance v5, Lorg/threeten/bp/format/c$m;

    .line 33
    .line 34
    const-string v7, "LENIENT"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lorg/threeten/bp/format/c$m;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lorg/threeten/bp/format/c$m;->LENIENT:Lorg/threeten/bp/format/c$m;

    .line 41
    const/4 v7, 0x4

    .line 42
    .line 43
    new-array v7, v7, [Lorg/threeten/bp/format/c$m;

    .line 44
    .line 45
    aput-object v0, v7, v2

    .line 46
    .line 47
    aput-object v1, v7, v4

    .line 48
    .line 49
    aput-object v3, v7, v6

    .line 50
    .line 51
    aput-object v5, v7, v8

    .line 52
    .line 53
    sput-object v7, Lorg/threeten/bp/format/c$m;->$VALUES:[Lorg/threeten/bp/format/c$m;

    .line 54
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

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/c$m;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/format/c$m;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/format/c$m;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/format/c$m;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/format/c$m;->$VALUES:[Lorg/threeten/bp/format/c$m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/format/c$m;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/format/c$m;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const-string v0, "ParseStrict(false)"

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "Unreachable"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 27
    .line 28
    :cond_1
    const-string v0, "ParseStrict(true)"

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_2
    const-string v0, "ParseCaseSensitive(false)"

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_3
    const-string v0, "ParseCaseSensitive(true)"

    .line 35
    return-object v0
.end method
