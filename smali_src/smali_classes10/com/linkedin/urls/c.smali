.class public final enum Lcom/linkedin/urls/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/c;

.field public static final enum FRAGMENT:Lcom/linkedin/urls/c;

.field public static final enum HOST:Lcom/linkedin/urls/c;

.field public static final enum PATH:Lcom/linkedin/urls/c;

.field public static final enum PORT:Lcom/linkedin/urls/c;

.field public static final enum QUERY:Lcom/linkedin/urls/c;

.field public static final enum SCHEME:Lcom/linkedin/urls/c;

.field public static final enum USERNAME_PASSWORD:Lcom/linkedin/urls/c;


# instance fields
.field private _nextPart:Lcom/linkedin/urls/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/linkedin/urls/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    const-string v3, "FRAGMENT"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/linkedin/urls/c;-><init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V

    .line 10
    .line 11
    sput-object v0, Lcom/linkedin/urls/c;->FRAGMENT:Lcom/linkedin/urls/c;

    .line 12
    .line 13
    new-instance v1, Lcom/linkedin/urls/c;

    .line 14
    .line 15
    const-string v2, "QUERY"

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2, v3, v0}, Lcom/linkedin/urls/c;-><init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V

    .line 20
    .line 21
    sput-object v1, Lcom/linkedin/urls/c;->QUERY:Lcom/linkedin/urls/c;

    .line 22
    .line 23
    new-instance v0, Lcom/linkedin/urls/c;

    .line 24
    .line 25
    const-string v2, "PATH"

    .line 26
    const/4 v3, 0x2

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2, v3, v1}, Lcom/linkedin/urls/c;-><init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V

    .line 30
    .line 31
    sput-object v0, Lcom/linkedin/urls/c;->PATH:Lcom/linkedin/urls/c;

    .line 32
    .line 33
    new-instance v1, Lcom/linkedin/urls/c;

    .line 34
    .line 35
    const-string v2, "PORT"

    .line 36
    const/4 v3, 0x3

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2, v3, v0}, Lcom/linkedin/urls/c;-><init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V

    .line 40
    .line 41
    sput-object v1, Lcom/linkedin/urls/c;->PORT:Lcom/linkedin/urls/c;

    .line 42
    .line 43
    new-instance v0, Lcom/linkedin/urls/c;

    .line 44
    .line 45
    const-string v2, "HOST"

    .line 46
    const/4 v3, 0x4

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2, v3, v1}, Lcom/linkedin/urls/c;-><init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V

    .line 50
    .line 51
    sput-object v0, Lcom/linkedin/urls/c;->HOST:Lcom/linkedin/urls/c;

    .line 52
    .line 53
    new-instance v1, Lcom/linkedin/urls/c;

    .line 54
    .line 55
    const-string v2, "USERNAME_PASSWORD"

    .line 56
    const/4 v3, 0x5

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2, v3, v0}, Lcom/linkedin/urls/c;-><init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V

    .line 60
    .line 61
    sput-object v1, Lcom/linkedin/urls/c;->USERNAME_PASSWORD:Lcom/linkedin/urls/c;

    .line 62
    .line 63
    new-instance v0, Lcom/linkedin/urls/c;

    .line 64
    .line 65
    const-string v2, "SCHEME"

    .line 66
    const/4 v3, 0x6

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v2, v3, v1}, Lcom/linkedin/urls/c;-><init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V

    .line 70
    .line 71
    sput-object v0, Lcom/linkedin/urls/c;->SCHEME:Lcom/linkedin/urls/c;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/linkedin/urls/c;->a()[Lcom/linkedin/urls/c;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    sput-object v0, Lcom/linkedin/urls/c;->$VALUES:[Lcom/linkedin/urls/c;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/linkedin/urls/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkedin/urls/c;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/linkedin/urls/c;->_nextPart:Lcom/linkedin/urls/c;

    .line 6
    return-void
.end method

.method private static synthetic a()[Lcom/linkedin/urls/c;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/linkedin/urls/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/linkedin/urls/c;->FRAGMENT:Lcom/linkedin/urls/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/linkedin/urls/c;->QUERY:Lcom/linkedin/urls/c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/linkedin/urls/c;->PATH:Lcom/linkedin/urls/c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/linkedin/urls/c;->PORT:Lcom/linkedin/urls/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/linkedin/urls/c;->HOST:Lcom/linkedin/urls/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/linkedin/urls/c;->USERNAME_PASSWORD:Lcom/linkedin/urls/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/linkedin/urls/c;->SCHEME:Lcom/linkedin/urls/c;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/linkedin/urls/c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/linkedin/urls/c;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/linkedin/urls/c;->$VALUES:[Lcom/linkedin/urls/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/linkedin/urls/c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/linkedin/urls/c;

    .line 9
    return-object v0
.end method
