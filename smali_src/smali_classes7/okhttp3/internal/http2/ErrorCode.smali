.class public final enum Lokhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/ErrorCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/internal/http2/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum CONNECT_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final Companion:Lokhttp3/internal/http2/ErrorCode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum ENHANCE_YOUR_CALM:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum FRAME_SIZE_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum HTTP_1_1_REQUIRED:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum INADEQUATE_SECURITY:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum SETTINGS_TIMEOUT:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum STREAM_CLOSED:Lokhttp3/internal/http2/ErrorCode;


# instance fields
.field private final httpCode:I


# direct methods
.method private static final synthetic $values()[Lokhttp3/internal/http2/ErrorCode;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->SETTINGS_TIMEOUT:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->STREAM_CLOSED:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->FRAME_SIZE_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->COMPRESSION_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CONNECT_ERROR:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->ENHANCE_YOUR_CALM:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->INADEQUATE_SECURITY:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->HTTP_1_1_REQUIRED:Lokhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 3
    .line 4
    const-string v1, "NO_ERROR"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 11
    .line 12
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 13
    .line 14
    const-string v1, "PROTOCOL_ERROR"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 21
    .line 22
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 23
    .line 24
    const-string v1, "INTERNAL_ERROR"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 31
    .line 32
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 33
    .line 34
    const-string v1, "FLOW_CONTROL_ERROR"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 41
    .line 42
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 43
    .line 44
    const-string v1, "SETTINGS_TIMEOUT"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->SETTINGS_TIMEOUT:Lokhttp3/internal/http2/ErrorCode;

    .line 51
    .line 52
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 53
    .line 54
    const-string v1, "STREAM_CLOSED"

    .line 55
    const/4 v2, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->STREAM_CLOSED:Lokhttp3/internal/http2/ErrorCode;

    .line 61
    .line 62
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 63
    .line 64
    const-string v1, "FRAME_SIZE_ERROR"

    .line 65
    const/4 v2, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->FRAME_SIZE_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 71
    .line 72
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 73
    .line 74
    const-string v1, "REFUSED_STREAM"

    .line 75
    const/4 v2, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 81
    .line 82
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 83
    .line 84
    const-string v1, "CANCEL"

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    .line 92
    .line 93
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 94
    .line 95
    const-string v1, "COMPRESSION_ERROR"

    .line 96
    .line 97
    const/16 v2, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->COMPRESSION_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 103
    .line 104
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 105
    .line 106
    const-string v1, "CONNECT_ERROR"

    .line 107
    .line 108
    const/16 v2, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 112
    .line 113
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->CONNECT_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 114
    .line 115
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 116
    .line 117
    const-string v1, "ENHANCE_YOUR_CALM"

    .line 118
    .line 119
    const/16 v2, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->ENHANCE_YOUR_CALM:Lokhttp3/internal/http2/ErrorCode;

    .line 125
    .line 126
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 127
    .line 128
    const-string v1, "INADEQUATE_SECURITY"

    .line 129
    .line 130
    const/16 v2, 0xc

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->INADEQUATE_SECURITY:Lokhttp3/internal/http2/ErrorCode;

    .line 136
    .line 137
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 138
    .line 139
    const-string v1, "HTTP_1_1_REQUIRED"

    .line 140
    .line 141
    const/16 v2, 0xd

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->HTTP_1_1_REQUIRED:Lokhttp3/internal/http2/ErrorCode;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->$values()[Lokhttp3/internal/http2/ErrorCode;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    .line 153
    .line 154
    new-instance v0, Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 155
    const/4 v1, 0x0

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v1}, Lokhttp3/internal/http2/ErrorCode$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 159
    .line 160
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 161
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
    iput p3, p0, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    const-class v0, Lokhttp3/internal/http2/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/http2/ErrorCode;

    return-object p0
.end method

.method public static values()[Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getHttpCode()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    return v0
.end method
