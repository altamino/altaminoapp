.class public final Landroidx/datastore/preferences/protobuf/Type;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Type$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/Type;",
        "Landroidx/datastore/preferences/protobuf/Type$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/TypeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Type;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final ONEOFS_FIELD_NUMBER:I = 0x3

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x6


# instance fields
.field private fields_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private oneofs_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContext_:Landroidx/datastore/preferences/protobuf/SourceContext;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/Type;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Type;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/preferences/protobuf/Type;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Type;

    .line 8
    .line 9
    const-class v1, Landroidx/datastore/preferences/protobuf/Type;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->A(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Type;->name_:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->p()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Type;->fields_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->p()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Type;->oneofs_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->p()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Type;->options_:Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 26
    return-void
.end method

.method static synthetic C()Landroidx/datastore/preferences/protobuf/Type;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/Type;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Type;

    return-object v0
.end method


# virtual methods
.method protected final o(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    sget-object p2, Landroidx/datastore/preferences/protobuf/Type$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    .line 8
    aget p1, p2, p1

    .line 9
    const/4 p2, 0x1

    .line 10
    const/4 p3, 0x0

    .line 11
    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 19
    throw p1

    .line 20
    :pswitch_0
    return-object p3

    .line 21
    .line 22
    .line 23
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/Type;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-class p2, Landroidx/datastore/preferences/protobuf/Type;

    .line 32
    monitor-enter p2

    .line 33
    .line 34
    :try_start_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/Type;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 39
    .line 40
    sget-object p3, Landroidx/datastore/preferences/protobuf/Type;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Type;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 44
    .line 45
    sput-object p1, Landroidx/datastore/preferences/protobuf/Type;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    .line 55
    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/Type;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Type;

    .line 56
    return-object p1

    .line 57
    .line 58
    :pswitch_4
    const/16 p1, 0x8

    .line 59
    .line 60
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    const/4 p3, 0x0

    .line 62
    .line 63
    const-string v0, "name_"

    .line 64
    .line 65
    aput-object v0, p1, p3

    .line 66
    .line 67
    const-string p3, "fields_"

    .line 68
    .line 69
    aput-object p3, p1, p2

    .line 70
    const/4 p2, 0x2

    .line 71
    .line 72
    const-class p3, Landroidx/datastore/preferences/protobuf/Field;

    .line 73
    .line 74
    aput-object p3, p1, p2

    .line 75
    const/4 p2, 0x3

    .line 76
    .line 77
    const-string p3, "oneofs_"

    .line 78
    .line 79
    aput-object p3, p1, p2

    .line 80
    const/4 p2, 0x4

    .line 81
    .line 82
    const-string p3, "options_"

    .line 83
    .line 84
    aput-object p3, p1, p2

    .line 85
    const/4 p2, 0x5

    .line 86
    .line 87
    const-class p3, Landroidx/datastore/preferences/protobuf/Option;

    .line 88
    .line 89
    aput-object p3, p1, p2

    .line 90
    const/4 p2, 0x6

    .line 91
    .line 92
    const-string p3, "sourceContext_"

    .line 93
    .line 94
    aput-object p3, p1, p2

    .line 95
    const/4 p2, 0x7

    .line 96
    .line 97
    const-string p3, "syntax_"

    .line 98
    .line 99
    aput-object p3, p1, p2

    .line 100
    .line 101
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0003\u0000\u0001\u0208\u0002\u001b\u0003\u021a\u0004\u001b\u0005\t\u0006\u000c"

    .line 102
    .line 103
    sget-object p3, Landroidx/datastore/preferences/protobuf/Type;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Type;

    .line 104
    .line 105
    .line 106
    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->x(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    .line 110
    :pswitch_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/Type$Builder;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/Type$Builder;-><init>(Landroidx/datastore/preferences/protobuf/Type$1;)V

    .line 114
    return-object p1

    .line 115
    .line 116
    :pswitch_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/Type;

    .line 117
    .line 118
    .line 119
    invoke-direct {p1}, Landroidx/datastore/preferences/protobuf/Type;-><init>()V

    .line 120
    return-object p1

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
