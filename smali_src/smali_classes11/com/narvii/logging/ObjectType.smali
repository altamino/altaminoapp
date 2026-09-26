.class public final enum Lcom/narvii/logging/ObjectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/logging/ObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/logging/ObjectType;

.field public static final enum blog:Lcom/narvii/logging/ObjectType;

.field public static final enum chat:Lcom/narvii/logging/ObjectType;

.field public static final enum comment:Lcom/narvii/logging/ObjectType;

.field public static final enum community:Lcom/narvii/logging/ObjectType;

.field public static final enum interest:Lcom/narvii/logging/ObjectType;

.field public static final enum item:Lcom/narvii/logging/ObjectType;

.field public static final enum query:Lcom/narvii/logging/ObjectType;

.field public static final enum suggest_query:Lcom/narvii/logging/ObjectType;

.field public static final enum topic:Lcom/narvii/logging/ObjectType;

.field public static final enum user:Lcom/narvii/logging/ObjectType;


# direct methods
.method private static synthetic $values()[Lcom/narvii/logging/ObjectType;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/narvii/logging/ObjectType;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/narvii/logging/ObjectType;->suggest_query:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/narvii/logging/ObjectType;->comment:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/narvii/logging/ObjectType;->interest:Lcom/narvii/logging/ObjectType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 3
    .line 4
    const-string v1, "community"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 13
    .line 14
    const-string v1, "blog"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 23
    .line 24
    const-string v1, "chat"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 33
    .line 34
    const-string v1, "user"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 43
    .line 44
    const-string v1, "suggest_query"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Lcom/narvii/logging/ObjectType;->suggest_query:Lcom/narvii/logging/ObjectType;

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 53
    .line 54
    const-string v1, "topic"

    .line 55
    const/4 v2, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 63
    .line 64
    const-string v1, "query"

    .line 65
    const/4 v2, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v0, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 73
    .line 74
    const-string v1, "comment"

    .line 75
    const/4 v2, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v0, Lcom/narvii/logging/ObjectType;->comment:Lcom/narvii/logging/ObjectType;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 83
    .line 84
    const-string v1, "item"

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v0, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/logging/ObjectType;

    .line 94
    .line 95
    const-string v1, "interest"

    .line 96
    .line 97
    const/16 v2, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    sput-object v0, Lcom/narvii/logging/ObjectType;->interest:Lcom/narvii/logging/ObjectType;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/narvii/logging/ObjectType;->$values()[Lcom/narvii/logging/ObjectType;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    sput-object v0, Lcom/narvii/logging/ObjectType;->$VALUES:[Lcom/narvii/logging/ObjectType;

    .line 109
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

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/logging/ObjectType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/logging/ObjectType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/logging/ObjectType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/logging/ObjectType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ObjectType;->$VALUES:[Lcom/narvii/logging/ObjectType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/logging/ObjectType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/logging/ObjectType;

    .line 9
    return-object v0
.end method
