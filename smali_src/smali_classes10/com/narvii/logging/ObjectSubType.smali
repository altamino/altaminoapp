.class public final enum Lcom/narvii/logging/ObjectSubType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/logging/ObjectSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/logging/ObjectSubType;

.field public static final enum external_post:Lcom/narvii/logging/ObjectSubType;

.field public static final enum image:Lcom/narvii/logging/ObjectSubType;

.field public static final enum link:Lcom/narvii/logging/ObjectSubType;

.field public static final enum normal:Lcom/narvii/logging/ObjectSubType;

.field public static final enum poll:Lcom/narvii/logging/ObjectSubType;

.field public static final enum question:Lcom/narvii/logging/ObjectSubType;

.field public static final enum quiz:Lcom/narvii/logging/ObjectSubType;

.field public static final enum repost:Lcom/narvii/logging/ObjectSubType;

.field public static final enum story:Lcom/narvii/logging/ObjectSubType;


# direct methods
.method private static synthetic $values()[Lcom/narvii/logging/ObjectSubType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/narvii/logging/ObjectSubType;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->story:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->poll:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->quiz:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->link:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->image:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->external_post:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->normal:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->repost:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/narvii/logging/ObjectSubType;->question:Lcom/narvii/logging/ObjectSubType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 3
    .line 4
    const-string v1, "story"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->story:Lcom/narvii/logging/ObjectSubType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 13
    .line 14
    const-string v1, "poll"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->poll:Lcom/narvii/logging/ObjectSubType;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 23
    .line 24
    const-string v1, "quiz"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->quiz:Lcom/narvii/logging/ObjectSubType;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 33
    .line 34
    const-string v1, "link"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->link:Lcom/narvii/logging/ObjectSubType;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 43
    .line 44
    const-string v1, "image"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->image:Lcom/narvii/logging/ObjectSubType;

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 53
    .line 54
    const-string v1, "external_post"

    .line 55
    const/4 v2, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->external_post:Lcom/narvii/logging/ObjectSubType;

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 63
    .line 64
    const-string v1, "normal"

    .line 65
    const/4 v2, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->normal:Lcom/narvii/logging/ObjectSubType;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 73
    .line 74
    const-string v1, "repost"

    .line 75
    const/4 v2, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->repost:Lcom/narvii/logging/ObjectSubType;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    .line 83
    .line 84
    const-string v1, "question"

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->question:Lcom/narvii/logging/ObjectSubType;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/narvii/logging/ObjectSubType;->$values()[Lcom/narvii/logging/ObjectSubType;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    sput-object v0, Lcom/narvii/logging/ObjectSubType;->$VALUES:[Lcom/narvii/logging/ObjectSubType;

    .line 98
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

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/logging/ObjectSubType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/logging/ObjectSubType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/logging/ObjectSubType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/logging/ObjectSubType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ObjectSubType;->$VALUES:[Lcom/narvii/logging/ObjectSubType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/logging/ObjectSubType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/logging/ObjectSubType;

    .line 9
    return-object v0
.end method
