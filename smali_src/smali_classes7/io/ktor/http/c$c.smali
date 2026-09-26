.class public final Lio/ktor/http/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field private static final Any:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CSS:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CSV:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EventStream:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Html:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lio/ktor/http/c$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final JavaScript:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Plain:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VCard:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Xml:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/c$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lio/ktor/http/c$c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/http/c$c;->INSTANCE:Lio/ktor/http/c$c;

    .line 8
    .line 9
    new-instance v0, Lio/ktor/http/c;

    .line 10
    .line 11
    const-string v2, "text"

    .line 12
    .line 13
    const-string v3, "*"

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, v0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 21
    .line 22
    sput-object v0, Lio/ktor/http/c$c;->Any:Lio/ktor/http/c;

    .line 23
    .line 24
    new-instance v0, Lio/ktor/http/c;

    .line 25
    .line 26
    const-string v8, "text"

    .line 27
    .line 28
    const-string v9, "plain"

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x4

    .line 31
    const/4 v12, 0x0

    .line 32
    move-object v7, v0

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 36
    .line 37
    sput-object v0, Lio/ktor/http/c$c;->Plain:Lio/ktor/http/c;

    .line 38
    .line 39
    new-instance v0, Lio/ktor/http/c;

    .line 40
    .line 41
    const-string v2, "text"

    .line 42
    .line 43
    const-string v3, "css"

    .line 44
    move-object v1, v0

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 48
    .line 49
    sput-object v0, Lio/ktor/http/c$c;->CSS:Lio/ktor/http/c;

    .line 50
    .line 51
    new-instance v0, Lio/ktor/http/c;

    .line 52
    .line 53
    const-string v8, "text"

    .line 54
    .line 55
    const-string v9, "csv"

    .line 56
    move-object v7, v0

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 60
    .line 61
    sput-object v0, Lio/ktor/http/c$c;->CSV:Lio/ktor/http/c;

    .line 62
    .line 63
    new-instance v0, Lio/ktor/http/c;

    .line 64
    .line 65
    const-string v2, "text"

    .line 66
    .line 67
    const-string v3, "html"

    .line 68
    move-object v1, v0

    .line 69
    .line 70
    .line 71
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 72
    .line 73
    sput-object v0, Lio/ktor/http/c$c;->Html:Lio/ktor/http/c;

    .line 74
    .line 75
    new-instance v0, Lio/ktor/http/c;

    .line 76
    .line 77
    const-string v8, "text"

    .line 78
    .line 79
    const-string v9, "javascript"

    .line 80
    move-object v7, v0

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 84
    .line 85
    sput-object v0, Lio/ktor/http/c$c;->JavaScript:Lio/ktor/http/c;

    .line 86
    .line 87
    new-instance v0, Lio/ktor/http/c;

    .line 88
    .line 89
    const-string v2, "text"

    .line 90
    .line 91
    const-string v3, "vcard"

    .line 92
    move-object v1, v0

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 96
    .line 97
    sput-object v0, Lio/ktor/http/c$c;->VCard:Lio/ktor/http/c;

    .line 98
    .line 99
    new-instance v0, Lio/ktor/http/c;

    .line 100
    .line 101
    const-string v8, "text"

    .line 102
    .line 103
    const-string v9, "xml"

    .line 104
    move-object v7, v0

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v7 .. v12}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 108
    .line 109
    sput-object v0, Lio/ktor/http/c$c;->Xml:Lio/ktor/http/c;

    .line 110
    .line 111
    new-instance v0, Lio/ktor/http/c;

    .line 112
    .line 113
    const-string v2, "text"

    .line 114
    .line 115
    const-string v3, "event-stream"

    .line 116
    move-object v1, v0

    .line 117
    .line 118
    .line 119
    invoke-direct/range {v1 .. v6}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 120
    .line 121
    sput-object v0, Lio/ktor/http/c$c;->EventStream:Lio/ktor/http/c;

    .line 122
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lio/ktor/http/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/http/c$c;->Plain:Lio/ktor/http/c;

    return-object v0
.end method
