.class public final Lz/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz/b$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lz/b$a;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lz/b$b;->e(Landroid/content/Context;Lz/b$a;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private final b(Lcom/google/firebase/l;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "Error returned from API. "

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x4

    .line 13
    const/4 v5, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    move-result v0

    .line 24
    .line 25
    const/16 v1, 0x24

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lj8/m;->j(II)I

    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "substring(...)"

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    return-object p1
.end method

.method private final d(Lz/a;Landroid/content/Context;Lz/b$a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lz/b$b;->f(Lz/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lx3/e;->b()Lx3/e;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, "getInstance(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lx3/e;->a(Z)Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance v0, Lz/c;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p2, p3}, Lz/c;-><init>(Landroid/content/Context;Lz/b$a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 26
    return-void
.end method

.method private static final e(Landroid/content/Context;Lz/b$a;Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "$context"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$appCheckListener"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "task"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    const-string v1, "last_app_check_success"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "true"

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v3, "ac_at_least_1_success"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    check-cast p0, Lx3/c;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lx3/c;->b()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    const-string p2, "getToken(...)"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p0}, Lz/b$a;->onSuccess(Ljava/lang/String;)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const-string v3, "ac_at_least_1_failed"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    instance-of v2, v0, Lcom/google/android/play/core/integrity/c;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    check-cast v0, Lcom/google/android/play/core/integrity/c;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/android/play/core/integrity/c;->a()I

    .line 89
    move-result v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    const-string/jumbo v1, "pi_error"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    const-string v3, "false"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    if-nez v2, :cond_3

    .line 126
    .line 127
    .line 128
    :cond_2
    const-string/jumbo v2, "unexpected_exception"

    .line 129
    .line 130
    :cond_3
    const-string v3, "app_check_error"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    instance-of v1, v0, Lcom/google/firebase/l;

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    sget-object v1, Lz/b;->a:Lz/b$b;

    .line 140
    .line 141
    check-cast v0, Lcom/google/firebase/l;

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v0}, Lz/b$b;->b(Lcom/google/firebase/l;)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    if-eqz v0, :cond_4

    .line 148
    .line 149
    .line 150
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 151
    move-result-object p0

    .line 152
    .line 153
    const-string v1, "ac_fb_exception_desc"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 160
    move-result-object p0

    .line 161
    .line 162
    if-nez p0, :cond_5

    .line 163
    .line 164
    new-instance p0, Ljava/lang/Exception;

    .line 165
    .line 166
    const-string p2, "Unknown error"

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    invoke-interface {p1, p0}, Lz/b$a;->onFailure(Ljava/lang/Exception;)V

    .line 173
    :goto_1
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lz/b$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lz/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "appCheckListener"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Lz/d;->a:Lz/d;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p1, p2}, Lz/b$b;->d(Lz/a;Landroid/content/Context;Lz/b$a;)V

    .line 16
    return-void
.end method

.method public final f(Lz/a;)V
    .locals 2
    .param p1    # Lz/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "type"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lx3/e;->b()Lx3/e;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "getInstance(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    instance-of p1, p1, Lz/d;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {}, La4/b;->b()La4/b;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lx3/e;->d(Lx3/b;)V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_0
    new-instance p1, Lw7/s;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 36
    throw p1
.end method
