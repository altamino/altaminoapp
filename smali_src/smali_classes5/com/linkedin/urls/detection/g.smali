.class public final enum Lcom/linkedin/urls/detection/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/detection/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/detection/g;

.field public static final enum ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

.field public static final enum BRACKET_MATCH:Lcom/linkedin/urls/detection/g;

.field public static final enum Default:Lcom/linkedin/urls/detection/g;

.field public static final enum HTML:Lcom/linkedin/urls/detection/g;

.field public static final enum JAVASCRIPT:Lcom/linkedin/urls/detection/g;

.field public static final enum JSON:Lcom/linkedin/urls/detection/g;

.field public static final enum QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

.field public static final enum SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

.field public static final enum XML:Lcom/linkedin/urls/detection/g;


# instance fields
.field private _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 3
    .line 4
    const-string v1, "Default"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lcom/linkedin/urls/detection/g;->Default:Lcom/linkedin/urls/detection/g;

    .line 11
    .line 12
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 13
    .line 14
    const-string v1, "QUOTE_MATCH"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v2}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v0, Lcom/linkedin/urls/detection/g;->QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

    .line 21
    .line 22
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 23
    .line 24
    const-string v1, "SINGLE_QUOTE_MATCH"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v2}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v0, Lcom/linkedin/urls/detection/g;->SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

    .line 31
    .line 32
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 33
    .line 34
    const-string v1, "BRACKET_MATCH"

    .line 35
    const/4 v2, 0x3

    .line 36
    const/4 v3, 0x4

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    sput-object v0, Lcom/linkedin/urls/detection/g;->BRACKET_MATCH:Lcom/linkedin/urls/detection/g;

    .line 42
    .line 43
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 44
    .line 45
    const-string v1, "JSON"

    .line 46
    const/4 v2, 0x5

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1, v3, v2}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    sput-object v0, Lcom/linkedin/urls/detection/g;->JSON:Lcom/linkedin/urls/detection/g;

    .line 52
    .line 53
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 54
    .line 55
    const-string v1, "JAVASCRIPT"

    .line 56
    const/4 v3, 0x7

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    sput-object v0, Lcom/linkedin/urls/detection/g;->JAVASCRIPT:Lcom/linkedin/urls/detection/g;

    .line 62
    .line 63
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 64
    const/4 v1, 0x6

    .line 65
    .line 66
    const/16 v2, 0x9

    .line 67
    .line 68
    const-string v4, "XML"

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v4, v1, v2}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    sput-object v0, Lcom/linkedin/urls/detection/g;->XML:Lcom/linkedin/urls/detection/g;

    .line 74
    .line 75
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 76
    .line 77
    const-string v1, "HTML"

    .line 78
    .line 79
    const/16 v2, 0x1b

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1, v3, v2}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    sput-object v0, Lcom/linkedin/urls/detection/g;->HTML:Lcom/linkedin/urls/detection/g;

    .line 85
    .line 86
    new-instance v0, Lcom/linkedin/urls/detection/g;

    .line 87
    .line 88
    const/16 v1, 0x8

    .line 89
    .line 90
    const/16 v2, 0x20

    .line 91
    .line 92
    const-string v3, "ALLOW_SINGLE_LEVEL_DOMAIN"

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v3, v1, v2}, Lcom/linkedin/urls/detection/g;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    sput-object v0, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/linkedin/urls/detection/g;->a()[Lcom/linkedin/urls/detection/g;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    sput-object v0, Lcom/linkedin/urls/detection/g;->$VALUES:[Lcom/linkedin/urls/detection/g;

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lcom/linkedin/urls/detection/g;->_value:I

    .line 6
    return-void
.end method

.method private static synthetic a()[Lcom/linkedin/urls/detection/g;
    .locals 3

    .line 1
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/linkedin/urls/detection/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/linkedin/urls/detection/g;->Default:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/linkedin/urls/detection/g;->QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/linkedin/urls/detection/g;->SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/linkedin/urls/detection/g;->BRACKET_MATCH:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/linkedin/urls/detection/g;->JSON:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/linkedin/urls/detection/g;->JAVASCRIPT:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/linkedin/urls/detection/g;->XML:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/linkedin/urls/detection/g;->HTML:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/linkedin/urls/detection/g;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/g;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/detection/g;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/linkedin/urls/detection/g;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/linkedin/urls/detection/g;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/detection/g;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/linkedin/urls/detection/g;->$VALUES:[Lcom/linkedin/urls/detection/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/linkedin/urls/detection/g;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/linkedin/urls/detection/g;

    .line 9
    return-object v0
.end method


# virtual methods
.method public b(Lcom/linkedin/urls/detection/g;)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/linkedin/urls/detection/g;->_value:I

    .line 3
    .line 4
    iget p1, p1, Lcom/linkedin/urls/detection/g;->_value:I

    .line 5
    and-int/2addr v0, p1

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method
