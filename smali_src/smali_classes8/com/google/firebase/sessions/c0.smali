.class public final Lcom/google/firebase/sessions/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/c0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/c0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SessionFirelogPublisher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final randomValueForSampling:D


# instance fields
.field private final backgroundDispatcher:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventGDTLogger:Lcom/google/firebase/sessions/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final firebaseInstallations:Lcom/google/firebase/installations/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionSettings:Lcom/google/firebase/sessions/settings/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/c0$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/c0$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/sessions/c0;->Companion:Lcom/google/firebase/sessions/c0$a;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    sput-wide v0, Lcom/google/firebase/sessions/c0;->randomValueForSampling:D

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/sessions/settings/f;Lcom/google/firebase/sessions/h;Lkotlin/coroutines/g;)V
    .locals 1
    .param p1    # Lcom/google/firebase/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/installations/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/sessions/settings/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/sessions/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "firebaseApp"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "firebaseInstallations"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "sessionSettings"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "eventGDTLogger"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "backgroundDispatcher"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/firebase/sessions/c0;->firebaseApp:Lcom/google/firebase/f;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/google/firebase/sessions/c0;->firebaseInstallations:Lcom/google/firebase/installations/h;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/google/firebase/sessions/c0;->sessionSettings:Lcom/google/firebase/sessions/settings/f;

    .line 35
    .line 36
    iput-object p4, p0, Lcom/google/firebase/sessions/c0;->eventGDTLogger:Lcom/google/firebase/sessions/h;

    .line 37
    .line 38
    iput-object p5, p0, Lcom/google/firebase/sessions/c0;->backgroundDispatcher:Lkotlin/coroutines/g;

    .line 39
    return-void
.end method

.method public static final synthetic b(Lcom/google/firebase/sessions/c0;Lcom/google/firebase/sessions/z;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/c0;->g(Lcom/google/firebase/sessions/z;)V

    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/google/firebase/sessions/c0;)Lcom/google/firebase/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/sessions/c0;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/c0;->h(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/c0;)Lcom/google/firebase/sessions/settings/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/sessions/c0;->sessionSettings:Lcom/google/firebase/sessions/settings/f;

    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/google/firebase/sessions/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/c0;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Lcom/google/firebase/sessions/z;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "SessionFirelogPublisher"

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/sessions/c0;->eventGDTLogger:Lcom/google/firebase/sessions/h;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1, p1}, Lcom/google/firebase/sessions/h;->a(Lcom/google/firebase/sessions/z;)V

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v2, "Successfully logged Session Start event: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/sessions/z;->c()Lcom/google/firebase/sessions/e0;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/sessions/e0;->e()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    .line 39
    const-string v1, "Error logging Session Start event to DataTransport: "

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_0
    return-void
.end method

.method private final h(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/firebase/sessions/c0$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/google/firebase/sessions/c0$b;

    .line 8
    .line 9
    iget v1, v0, Lcom/google/firebase/sessions/c0$b;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/google/firebase/sessions/c0$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/c0$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/c0$b;-><init>(Lcom/google/firebase/sessions/c0;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/c0$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcom/google/firebase/sessions/c0$b;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/sessions/c0;->firebaseInstallations:Lcom/google/firebase/installations/h;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/google/firebase/installations/h;->getId()Lcom/google/android/gms/tasks/Task;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string v2, "firebaseInstallations.id"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    iput v3, v0, Lcom/google/firebase/sessions/c0$b;->label:I

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Lkotlinx/coroutines/tasks/b;->a(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-ne p1, v1, :cond_3

    .line 74
    return-object v1

    .line 75
    .line 76
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :goto_2
    const-string v0, "SessionFirelogPublisher"

    .line 80
    .line 81
    const-string v1, "Error getting Firebase Installation ID. Using an empty ID"

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    const-string p1, ""

    .line 87
    :goto_3
    return-object p1
.end method

.method private final i()Z
    .locals 4

    .line 1
    .line 2
    sget-wide v0, Lcom/google/firebase/sessions/c0;->randomValueForSampling:D

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/firebase/sessions/c0;->sessionSettings:Lcom/google/firebase/sessions/settings/f;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/firebase/sessions/settings/f;->b()D

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    cmpg-double v0, v0, v2

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private final j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/firebase/sessions/c0$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/google/firebase/sessions/c0$d;

    .line 8
    .line 9
    iget v1, v0, Lcom/google/firebase/sessions/c0$d;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/google/firebase/sessions/c0$d;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/c0$d;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/c0$d;-><init>(Lcom/google/firebase/sessions/c0;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/c0$d;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcom/google/firebase/sessions/c0$d;->label:I

    .line 33
    .line 34
    const-string v3, "SessionFirelogPublisher"

    .line 35
    const/4 v4, 0x1

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/firebase/sessions/c0$d;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/google/firebase/sessions/c0;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    const-string p1, "Data Collection is enabled for at least one Subscriber"

    .line 61
    .line 62
    .line 63
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/firebase/sessions/c0;->sessionSettings:Lcom/google/firebase/sessions/settings/f;

    .line 66
    .line 67
    iput-object p0, v0, Lcom/google/firebase/sessions/c0$d;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v4, v0, Lcom/google/firebase/sessions/c0$d;->label:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/settings/f;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-ne p1, v1, :cond_3

    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    .line 79
    :goto_1
    iget-object p1, v0, Lcom/google/firebase/sessions/c0;->sessionSettings:Lcom/google/firebase/sessions/settings/f;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/firebase/sessions/settings/f;->d()Z

    .line 83
    move-result p1

    .line 84
    const/4 v1, 0x0

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    const-string p1, "Sessions SDK disabled. Events will not be sent."

    .line 89
    .line 90
    .line 91
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-direct {v0}, Lcom/google/firebase/sessions/c0;->i()Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    const-string p1, "Sessions SDK has dropped this session due to sampling."

    .line 105
    .line 106
    .line 107
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 116
    move-result-object p1

    .line 117
    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/firebase/sessions/y;)V
    .locals 7
    .param p1    # Lcom/google/firebase/sessions/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sessionDetails"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/sessions/c0;->backgroundDispatcher:Lkotlin/coroutines/g;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    new-instance v4, Lcom/google/firebase/sessions/c0$c;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, p0, p1, v0}, Lcom/google/firebase/sessions/c0$c;-><init>(Lcom/google/firebase/sessions/c0;Lcom/google/firebase/sessions/y;Lkotlin/coroutines/d;)V

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 25
    return-void
.end method
