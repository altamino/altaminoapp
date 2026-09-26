.class final enum Lcom/google/firebase/crashlytics/internal/common/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/common/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum ARM64:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum ARMV6:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum ARMV7:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum ARMV7S:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum ARM_UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum PPC:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum PPC64:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum X86_32:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field public static final enum X86_64:Lcom/google/firebase/crashlytics/internal/common/i$a;

.field private static final matcher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/internal/common/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 3
    .line 4
    const-string v1, "X86_32"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/i$a;->X86_32:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 11
    .line 12
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 13
    .line 14
    const-string v3, "X86_64"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lcom/google/firebase/crashlytics/internal/common/i$a;->X86_64:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 21
    .line 22
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 23
    .line 24
    const-string v5, "ARM_UNKNOWN"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lcom/google/firebase/crashlytics/internal/common/i$a;->ARM_UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 31
    .line 32
    new-instance v5, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 33
    .line 34
    const-string v7, "PPC"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lcom/google/firebase/crashlytics/internal/common/i$a;->PPC:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 41
    .line 42
    new-instance v7, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 43
    .line 44
    const-string v9, "PPC64"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lcom/google/firebase/crashlytics/internal/common/i$a;->PPC64:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 51
    .line 52
    new-instance v9, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 53
    .line 54
    const-string v11, "ARMV6"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Lcom/google/firebase/crashlytics/internal/common/i$a;->ARMV6:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 61
    .line 62
    new-instance v11, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 63
    .line 64
    const-string v13, "ARMV7"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Lcom/google/firebase/crashlytics/internal/common/i$a;->ARMV7:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 71
    .line 72
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 73
    .line 74
    const-string v15, "UNKNOWN"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v13, Lcom/google/firebase/crashlytics/internal/common/i$a;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 81
    .line 82
    new-instance v15, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 83
    .line 84
    const-string v14, "ARMV7S"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v15, Lcom/google/firebase/crashlytics/internal/common/i$a;->ARMV7S:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 92
    .line 93
    new-instance v14, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 94
    .line 95
    const-string v12, "ARM64"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    sput-object v14, Lcom/google/firebase/crashlytics/internal/common/i$a;->ARM64:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 103
    .line 104
    const/16 v12, 0xa

    .line 105
    .line 106
    new-array v12, v12, [Lcom/google/firebase/crashlytics/internal/common/i$a;

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
    const/4 v1, 0x4

    .line 116
    .line 117
    aput-object v7, v12, v1

    .line 118
    const/4 v2, 0x5

    .line 119
    .line 120
    aput-object v9, v12, v2

    .line 121
    const/4 v2, 0x6

    .line 122
    .line 123
    aput-object v11, v12, v2

    .line 124
    const/4 v2, 0x7

    .line 125
    .line 126
    aput-object v13, v12, v2

    .line 127
    .line 128
    const/16 v2, 0x8

    .line 129
    .line 130
    aput-object v15, v12, v2

    .line 131
    .line 132
    aput-object v14, v12, v10

    .line 133
    .line 134
    sput-object v12, Lcom/google/firebase/crashlytics/internal/common/i$a;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 135
    .line 136
    new-instance v2, Ljava/util/HashMap;

    .line 137
    .line 138
    .line 139
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 140
    .line 141
    sput-object v2, Lcom/google/firebase/crashlytics/internal/common/i$a;->matcher:Ljava/util/Map;

    .line 142
    .line 143
    const-string v1, "armeabi-v7a"

    .line 144
    .line 145
    .line 146
    invoke-interface {v2, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    const-string v1, "armeabi"

    .line 149
    .line 150
    .line 151
    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    const-string v1, "arm64-v8a"

    .line 154
    .line 155
    .line 156
    invoke-interface {v2, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    const-string v1, "x86"

    .line 159
    .line 160
    .line 161
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
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

.method static a()Lcom/google/firebase/crashlytics/internal/common/i$a;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 18
    .line 19
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/i$a;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/i$a;->matcher:Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/i$a;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 39
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/i$a;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/common/i$a;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/i$a;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/common/i$a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 9
    return-object v0
.end method
