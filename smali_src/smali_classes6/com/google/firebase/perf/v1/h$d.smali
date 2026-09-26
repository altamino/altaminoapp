.class public final enum Lcom/google/firebase/perf/v1/h$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/h$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/v1/h$d;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/v1/h$d;

.field public static final enum CONNECT:Lcom/google/firebase/perf/v1/h$d;

.field public static final CONNECT_VALUE:I = 0x9

.field public static final enum DELETE:Lcom/google/firebase/perf/v1/h$d;

.field public static final DELETE_VALUE:I = 0x4

.field public static final enum GET:Lcom/google/firebase/perf/v1/h$d;

.field public static final GET_VALUE:I = 0x1

.field public static final enum HEAD:Lcom/google/firebase/perf/v1/h$d;

.field public static final HEAD_VALUE:I = 0x5

.field public static final enum HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/h$d;

.field public static final HTTP_METHOD_UNKNOWN_VALUE:I = 0x0

.field public static final enum OPTIONS:Lcom/google/firebase/perf/v1/h$d;

.field public static final OPTIONS_VALUE:I = 0x7

.field public static final enum PATCH:Lcom/google/firebase/perf/v1/h$d;

.field public static final PATCH_VALUE:I = 0x6

.field public static final enum POST:Lcom/google/firebase/perf/v1/h$d;

.field public static final POST_VALUE:I = 0x3

.field public static final enum PUT:Lcom/google/firebase/perf/v1/h$d;

.field public static final PUT_VALUE:I = 0x2

.field public static final enum TRACE:Lcom/google/firebase/perf/v1/h$d;

.field public static final TRACE_VALUE:I = 0x8

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/perf/v1/h$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/v1/h$d;

    .line 3
    .line 4
    const-string v1, "HTTP_METHOD_UNKNOWN"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lcom/google/firebase/perf/v1/h$d;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/h$d;

    .line 11
    .line 12
    new-instance v1, Lcom/google/firebase/perf/v1/h$d;

    .line 13
    .line 14
    const-string v3, "GET"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Lcom/google/firebase/perf/v1/h$d;->GET:Lcom/google/firebase/perf/v1/h$d;

    .line 21
    .line 22
    new-instance v3, Lcom/google/firebase/perf/v1/h$d;

    .line 23
    .line 24
    const-string v5, "PUT"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v6}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v3, Lcom/google/firebase/perf/v1/h$d;->PUT:Lcom/google/firebase/perf/v1/h$d;

    .line 31
    .line 32
    new-instance v5, Lcom/google/firebase/perf/v1/h$d;

    .line 33
    .line 34
    const-string v7, "POST"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v8}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v5, Lcom/google/firebase/perf/v1/h$d;->POST:Lcom/google/firebase/perf/v1/h$d;

    .line 41
    .line 42
    new-instance v7, Lcom/google/firebase/perf/v1/h$d;

    .line 43
    .line 44
    const-string v9, "DELETE"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10, v10}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    sput-object v7, Lcom/google/firebase/perf/v1/h$d;->DELETE:Lcom/google/firebase/perf/v1/h$d;

    .line 51
    .line 52
    new-instance v9, Lcom/google/firebase/perf/v1/h$d;

    .line 53
    .line 54
    const-string v11, "HEAD"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12, v12}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    sput-object v9, Lcom/google/firebase/perf/v1/h$d;->HEAD:Lcom/google/firebase/perf/v1/h$d;

    .line 61
    .line 62
    new-instance v11, Lcom/google/firebase/perf/v1/h$d;

    .line 63
    .line 64
    const-string v13, "PATCH"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14, v14}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    sput-object v11, Lcom/google/firebase/perf/v1/h$d;->PATCH:Lcom/google/firebase/perf/v1/h$d;

    .line 71
    .line 72
    new-instance v13, Lcom/google/firebase/perf/v1/h$d;

    .line 73
    .line 74
    const-string v15, "OPTIONS"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14, v14}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    sput-object v13, Lcom/google/firebase/perf/v1/h$d;->OPTIONS:Lcom/google/firebase/perf/v1/h$d;

    .line 81
    .line 82
    new-instance v15, Lcom/google/firebase/perf/v1/h$d;

    .line 83
    .line 84
    const-string v14, "TRACE"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12, v12}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    sput-object v15, Lcom/google/firebase/perf/v1/h$d;->TRACE:Lcom/google/firebase/perf/v1/h$d;

    .line 92
    .line 93
    new-instance v14, Lcom/google/firebase/perf/v1/h$d;

    .line 94
    .line 95
    const-string v12, "CONNECT"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10, v10}, Lcom/google/firebase/perf/v1/h$d;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    sput-object v14, Lcom/google/firebase/perf/v1/h$d;->CONNECT:Lcom/google/firebase/perf/v1/h$d;

    .line 103
    .line 104
    const/16 v12, 0xa

    .line 105
    .line 106
    new-array v12, v12, [Lcom/google/firebase/perf/v1/h$d;

    .line 107
    .line 108
    aput-object v0, v12, v2

    .line 109
    .line 110
    aput-object v1, v12, v4

    .line 111
    .line 112
    aput-object v3, v12, v6

    .line 113
    .line 114
    aput-object v5, v12, v8

    .line 115
    const/4 v0, 0x4

    .line 116
    .line 117
    aput-object v7, v12, v0

    .line 118
    const/4 v0, 0x5

    .line 119
    .line 120
    aput-object v9, v12, v0

    .line 121
    const/4 v0, 0x6

    .line 122
    .line 123
    aput-object v11, v12, v0

    .line 124
    const/4 v0, 0x7

    .line 125
    .line 126
    aput-object v13, v12, v0

    .line 127
    .line 128
    const/16 v0, 0x8

    .line 129
    .line 130
    aput-object v15, v12, v0

    .line 131
    .line 132
    aput-object v14, v12, v10

    .line 133
    .line 134
    sput-object v12, Lcom/google/firebase/perf/v1/h$d;->$VALUES:[Lcom/google/firebase/perf/v1/h$d;

    .line 135
    .line 136
    new-instance v0, Lcom/google/firebase/perf/v1/h$d$a;

    .line 137
    .line 138
    .line 139
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/h$d$a;-><init>()V

    .line 140
    .line 141
    sput-object v0, Lcom/google/firebase/perf/v1/h$d;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 142
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
    iput p3, p0, Lcom/google/firebase/perf/v1/h$d;->value:I

    .line 6
    return-void
.end method

.method public static a(I)Lcom/google/firebase/perf/v1/h$d;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->CONNECT:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->TRACE:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->OPTIONS:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->PATCH:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->HEAD:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->DELETE:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->POST:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->PUT:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->GET:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/firebase/perf/v1/h$d;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/h$d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/v1/h$d$b;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/v1/h$d;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/perf/v1/h$d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/google/firebase/perf/v1/h$d;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/v1/h$d;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/v1/h$d;->$VALUES:[Lcom/google/firebase/perf/v1/h$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/google/firebase/perf/v1/h$d;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/google/firebase/perf/v1/h$d;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/h$d;->value:I

    return v0
.end method
