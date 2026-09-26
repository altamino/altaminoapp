.class public Lcom/google/firebase/crashlytics/internal/common/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARCHITECTURES_BY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final GENERATOR:Ljava/lang/String;

.field static final GENERATOR_TYPE:I = 0x3

.field static final REPORT_ANDROID_PLATFORM:I = 0x4

.field static final SESSION_ANDROID_PLATFORM:I = 0x3

.field static final SIGNAL_DEFAULT:Ljava/lang/String; = "0"


# instance fields
.field private final appData:Lcom/google/firebase/crashlytics/internal/common/a;

.field private final context:Landroid/content/Context;

.field private final idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

.field private final processDetailsProvider:Lcom/google/firebase/crashlytics/internal/j;

.field private final settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

.field private final stackTraceTrimmingStrategy:Lf4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/t;->ARCHITECTURES_BY_NAME:Ljava/util/Map;

    .line 8
    const/4 v1, 0x5

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "armeabi"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const/4 v1, 0x6

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "armeabi-v7a"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "arm64-v8a"

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-string v3, "x86"

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v2, 0x1

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    const-string v4, "x86_64"

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 61
    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string v3, "18.6.0"

    .line 65
    .line 66
    aput-object v3, v2, v1

    .line 67
    .line 68
    const-string v1, "Crashlytics Android SDK/%s"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/t;->GENERATOR:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/firebase/crashlytics/internal/common/a;Lf4/d;Lcom/google/firebase/crashlytics/internal/settings/i;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/crashlytics/internal/j;->INSTANCE:Lcom/google/firebase/crashlytics/internal/j;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->processDetailsProvider:Lcom/google/firebase/crashlytics/internal/j;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/t;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/t;->stackTraceTrimmingStrategy:Lf4/d;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/t;->settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 18
    return-void
.end method

.method private A(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->processDetailsProvider:Lcom/google/firebase/crashlytics/internal/j;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->e()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->d()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->c()I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/j;->a(Ljava/lang/String;II)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method private a(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$a;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/i;->a()Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/settings/d;->featureFlagData:Lcom/google/firebase/crashlytics/internal/settings/d$a;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/google/firebase/crashlytics/internal/settings/d$a;->collectBuildIds:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/a;->buildIdInfoList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->buildIdInfoList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Lcom/google/firebase/crashlytics/internal/common/f;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->c()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->a()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->b()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a$a;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 87
    move-result-object v0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->c()I

    .line 97
    move-result v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->e()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->g()I

    .line 113
    move-result v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->g(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->i()J

    .line 121
    move-result-wide v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->i(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->d()I

    .line 129
    move-result v2

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->f()J

    .line 137
    move-result-wide v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->h()J

    .line 145
    move-result-wide v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->h(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->j()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 165
    move-result-object p1

    .line 166
    return-object p1
.end method

.method private b()Lcom/google/firebase/crashlytics/internal/model/f0$b;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0;->b()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "18.6.0"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->k(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->googleAppId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/b0;->a()Lcom/google/firebase/crashlytics/internal/common/c0$a;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/c0$a;->c()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->h(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/b0;->a()Lcom/google/firebase/crashlytics/internal/common/c0$a;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/c0$a;->d()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->versionCode:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->versionName:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->j(I)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method private static f(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, v0

    :goto_0
    return-wide p0
.end method

.method private static g()I
    .locals 4

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
    const/4 v2, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    return v2

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/t;->ARCHITECTURES_BY_NAME:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    return v2

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method private h()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->b(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->buildId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method private i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->h()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private j(ILcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->c()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->c(Ljava/lang/Boolean;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/internal/common/t;->A(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->h(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/internal/common/t;->o(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->f(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method private k(ILf4/e;Ljava/lang/Thread;IIZ)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->processDetailsProvider:Lcom/google/firebase/crashlytics/internal/j;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/j;->e(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;->b()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;->b()I

    .line 18
    move-result v1

    .line 19
    .line 20
    const/16 v2, 0x64

    .line 21
    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->c(Ljava/lang/Boolean;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->processDetailsProvider:Lcom/google/firebase/crashlytics/internal/j;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/j;->d(Landroid/content/Context;)Ljava/util/List;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->h(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 59
    move-result-object p1

    .line 60
    move-object v0, p0

    .line 61
    move-object v1, p2

    .line 62
    move-object v2, p3

    .line 63
    move v3, p4

    .line 64
    move v4, p5

    .line 65
    move v5, p6

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/common/t;->p(Lf4/e;Ljava/lang/Thread;IIZ)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->f(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method private l(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/e;->a(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/common/e;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/e;->b()Ljava/lang/Float;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/e;->c()I

    .line 26
    move-result v0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/i;->n(Landroid/content/Context;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/i;->b(Landroid/content/Context;)J

    .line 38
    move-result-wide v3

    .line 39
    .line 40
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    invoke-static {v5}, Lcom/google/firebase/crashlytics/internal/common/i;->a(Landroid/content/Context;)J

    .line 44
    move-result-wide v5

    .line 45
    sub-long/2addr v3, v5

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Lcom/google/firebase/crashlytics/internal/common/t;->f(J)J

    .line 49
    move-result-wide v3

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    .line 60
    invoke-static {v5}, Lcom/google/firebase/crashlytics/internal/common/i;->c(Ljava/lang/String;)J

    .line 61
    move-result-wide v5

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 65
    move-result-object v7

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->b(Ljava/lang/Double;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->f(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->e(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->g(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v5, v6}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method

.method private m(Lf4/e;II)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/crashlytics/internal/common/t;->n(Lf4/e;III)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private n(Lf4/e;III)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lf4/e;->className:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p1, Lf4/e;->localizedMessage:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p1, Lf4/e;->stacktrace:[Ljava/lang/StackTraceElement;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-array v2, v3, [Ljava/lang/StackTraceElement;

    .line 13
    .line 14
    :goto_0
    iget-object p1, p1, Lf4/e;->cause:Lf4/e;

    .line 15
    .line 16
    if-lt p4, p3, :cond_1

    .line 17
    move-object v4, p1

    .line 18
    .line 19
    :goto_1
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget-object v4, v4, Lf4/e;->cause:Lf4/e;

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2, p2}, Lcom/google/firebase/crashlytics/internal/common/t;->r([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    add-int/lit8 p4, p4, 0x1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/t;->n(Lf4/e;III)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method private o(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->w()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->i()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private p(Lf4/e;Ljava/lang/Thread;IIZ)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/firebase/crashlytics/internal/common/t;->z(Lf4/e;Ljava/lang/Thread;IZ)Ljava/util/List;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->f(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/t;->m(Lf4/e;II)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->w()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->i()Ljava/util/List;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private q(Ljava/lang/StackTraceElement;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 12
    move-result v0

    .line 13
    int-to-long v3, v0

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 17
    move-result-wide v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide v3, v1

    .line 20
    .line 21
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v5, "."

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    .line 55
    move-result v6

    .line 56
    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 61
    move-result v6

    .line 62
    .line 63
    if-lez v6, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 67
    move-result p1

    .line 68
    int-to-long v1, p1

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p2, v3, v4}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->e(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;

    .line 88
    move-result-object p1

    .line 89
    return-object p1
.end method

.method private r([Ljava/lang/StackTraceElement;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "I)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/t;->q(Ljava/lang/StackTraceElement;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$b;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private s()Lcom/google/firebase/crashlytics/internal/model/f0$e$a;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/b0;->f()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->versionCode:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->versionName:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/b0;->a()Lcom/google/firebase/crashlytics/internal/common/c0$a;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/c0$a;->c()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->developmentPlatformProvider:Lcom/google/firebase/crashlytics/internal/f;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/f;->d()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->appData:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/a;->developmentPlatformProvider:Lcom/google/firebase/crashlytics/internal/f;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/f;->e()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$a;

    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method private t(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/model/f0$e;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->m(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    sget-object p2, Lcom/google/firebase/crashlytics/internal/common/t;->GENERATOR:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->h(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->s()Lcom/google/firebase/crashlytics/internal/model/f0$e$a;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->v()Lcom/google/firebase/crashlytics/internal/model/f0$e$e;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e$e;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->u()Lcom/google/firebase/crashlytics/internal/model/f0$e$c;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->i(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private u()Lcom/google/firebase/crashlytics/internal/model/f0$e$c;
    .locals 11

    .line 1
    .line 2
    new-instance v0, Landroid/os/StatFs;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/t;->g()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    .line 25
    move-result v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/i;->b(Landroid/content/Context;)J

    .line 31
    move-result-wide v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 35
    move-result v5

    .line 36
    int-to-long v5, v5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 40
    move-result v0

    .line 41
    int-to-long v7, v0

    .line 42
    mul-long/2addr v5, v7

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->w()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->l()I

    .line 50
    move-result v7

    .line 51
    .line 52
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 58
    move-result-object v10

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->b(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v10}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3, v4}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->h(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5, v6}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->d(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->i(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v7}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->j(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v8}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v9}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$c;

    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method

.method private v()Lcom/google/firebase/crashlytics/internal/model/f0$e$e;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->x()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->c(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$e$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$e;

    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method private w()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "0"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->b(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private x(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/common/t;->y(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private y(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/t;->r([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private z(Lf4/e;Ljava/lang/Thread;IZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/e;",
            "Ljava/lang/Thread;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object p1, p1, Lf4/e;->stacktrace:[Ljava/lang/StackTraceElement;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, p1, p3}, Lcom/google/firebase/crashlytics/internal/common/t;->y(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    if-eqz p4, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result p3

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    check-cast p3, Ljava/util/Map$Entry;

    .line 41
    .line 42
    .line 43
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    move-result-object p4

    .line 45
    .line 46
    check-cast p4, Ljava/lang/Thread;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->stackTraceTrimmingStrategy:Lf4/d;

    .line 55
    .line 56
    .line 57
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    check-cast p3, [Ljava/lang/StackTraceElement;

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, p3}, Lf4/d;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p4, p3}, Lcom/google/firebase/crashlytics/internal/common/t;->x(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method


# virtual methods
.method public c(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "anr"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->i()J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/t;->a(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/common/t;->j(ILcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/t;->l(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->c(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 10

    .line 1
    move-object v7, p0

    .line 2
    .line 3
    iget-object v0, v7, Lcom/google/firebase/crashlytics/internal/common/t;->context:Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    iget-object v0, v7, Lcom/google/firebase/crashlytics/internal/common/t;->stackTraceTrimmingStrategy:Lf4/d;

    .line 16
    move-object v1, p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lf4/e;->a(Ljava/lang/Throwable;Lf4/d;)Lf4/e;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 24
    move-result-object v0

    .line 25
    move-object v1, p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 29
    move-result-object v0

    .line 30
    move-wide v3, p4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p4, p5}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 34
    move-result-object v9

    .line 35
    move-object v0, p0

    .line 36
    move v1, v8

    .line 37
    move-object v3, p2

    .line 38
    .line 39
    move/from16 v4, p6

    .line 40
    .line 41
    move/from16 v5, p7

    .line 42
    .line 43
    move/from16 v6, p8

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/crashlytics/internal/common/t;->k(ILf4/e;Ljava/lang/Thread;IIZ)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v8}, Lcom/google/firebase/crashlytics/internal/common/t;->l(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->c(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public e(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/t;->b()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/t;->t(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
