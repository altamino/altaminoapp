.class public final enum Lcom/narvii/logging/ActType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/logging/ActType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/logging/ActType;

.field public static final enum APIRequest:Lcom/narvii/logging/ActType;

.field public static final enum auto:Lcom/narvii/logging/ActType;

.field public static final enum autoNextStory:Lcom/narvii/logging/ActType;

.field public static final enum autoPlay:Lcom/narvii/logging/ActType;

.field public static final enum click:Lcom/narvii/logging/ActType;

.field public static final enum doubleClick:Lcom/narvii/logging/ActType;

.field public static final enum downScroll:Lcom/narvii/logging/ActType;

.field public static final enum impression:Lcom/narvii/logging/ActType;

.field public static final enum leftScroll:Lcom/narvii/logging/ActType;

.field public static final enum pageView:Lcom/narvii/logging/ActType;

.field public static final enum rightScroll:Lcom/narvii/logging/ActType;

.field public static final enum upScroll:Lcom/narvii/logging/ActType;

.field public static final enum videoPlay:Lcom/narvii/logging/ActType;


# direct methods
.method private static synthetic $values()[Lcom/narvii/logging/ActType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/narvii/logging/ActType;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/logging/ActType;->APIRequest:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/narvii/logging/ActType;->autoPlay:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/narvii/logging/ActType;->upScroll:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/narvii/logging/ActType;->downScroll:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/narvii/logging/ActType;->leftScroll:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/narvii/logging/ActType;->rightScroll:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/narvii/logging/ActType;->videoPlay:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/narvii/logging/ActType;->doubleClick:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/narvii/logging/ActType;->autoNextStory:Lcom/narvii/logging/ActType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 3
    .line 4
    const-string v1, "impression"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 13
    .line 14
    const-string v1, "APIRequest"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/logging/ActType;->APIRequest:Lcom/narvii/logging/ActType;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 23
    .line 24
    const-string v1, "click"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 33
    .line 34
    const-string v1, "autoPlay"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lcom/narvii/logging/ActType;->autoPlay:Lcom/narvii/logging/ActType;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 43
    .line 44
    const-string v1, "pageView"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 53
    .line 54
    const-string v1, "upScroll"

    .line 55
    const/4 v2, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v0, Lcom/narvii/logging/ActType;->upScroll:Lcom/narvii/logging/ActType;

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 63
    .line 64
    const-string v1, "downScroll"

    .line 65
    const/4 v2, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v0, Lcom/narvii/logging/ActType;->downScroll:Lcom/narvii/logging/ActType;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 73
    .line 74
    const-string v1, "leftScroll"

    .line 75
    const/4 v2, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v0, Lcom/narvii/logging/ActType;->leftScroll:Lcom/narvii/logging/ActType;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 83
    .line 84
    const-string v1, "rightScroll"

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v0, Lcom/narvii/logging/ActType;->rightScroll:Lcom/narvii/logging/ActType;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 94
    .line 95
    const-string v1, "videoPlay"

    .line 96
    .line 97
    const/16 v2, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    sput-object v0, Lcom/narvii/logging/ActType;->videoPlay:Lcom/narvii/logging/ActType;

    .line 103
    .line 104
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 105
    .line 106
    const-string v1, "auto"

    .line 107
    .line 108
    const/16 v2, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    sput-object v0, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 114
    .line 115
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 116
    .line 117
    const-string v1, "doubleClick"

    .line 118
    .line 119
    const/16 v2, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    sput-object v0, Lcom/narvii/logging/ActType;->doubleClick:Lcom/narvii/logging/ActType;

    .line 125
    .line 126
    new-instance v0, Lcom/narvii/logging/ActType;

    .line 127
    .line 128
    const-string v1, "autoNextStory"

    .line 129
    .line 130
    const/16 v2, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    .line 134
    .line 135
    sput-object v0, Lcom/narvii/logging/ActType;->autoNextStory:Lcom/narvii/logging/ActType;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/narvii/logging/ActType;->$values()[Lcom/narvii/logging/ActType;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    sput-object v0, Lcom/narvii/logging/ActType;->$VALUES:[Lcom/narvii/logging/ActType;

    .line 142
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

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/logging/ActType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/logging/ActType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/logging/ActType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/logging/ActType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActType;->$VALUES:[Lcom/narvii/logging/ActType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/logging/ActType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/logging/ActType;

    .line 9
    return-object v0
.end method
