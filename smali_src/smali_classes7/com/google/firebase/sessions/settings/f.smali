.class public final Lcom/google/firebase/sessions/settings/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/f$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/settings/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dataStore$delegate:Lkotlin/properties/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/properties/d<",
            "Landroid/content/Context;",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final localOverrideSettings:Lcom/google/firebase/sessions/settings/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final remoteSettings:Lcom/google/firebase/sessions/settings/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/settings/f$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/f$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/sessions/settings/f;->Companion:Lcom/google/firebase/sessions/settings/f$a;

    .line 9
    .line 10
    sget-object v0, Lcom/google/firebase/sessions/v;->INSTANCE:Lcom/google/firebase/sessions/v;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/sessions/v;->b()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    const/16 v5, 0xe

    .line 20
    const/4 v6, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->b(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Le8/l;Lkotlinx/coroutines/o0;ILjava/lang/Object;)Lkotlin/properties/d;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lcom/google/firebase/sessions/settings/f;->dataStore$delegate:Lkotlin/properties/d;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lkotlin/coroutines/g;Lkotlin/coroutines/g;Lcom/google/firebase/installations/h;Lcom/google/firebase/sessions/b;)V
    .locals 9

    .line 2
    new-instance v0, Lcom/google/firebase/sessions/settings/b;

    invoke-direct {v0, p1}, Lcom/google/firebase/sessions/settings/b;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v7, Lcom/google/firebase/sessions/settings/c;

    .line 4
    new-instance v8, Lcom/google/firebase/sessions/settings/d;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p5

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/settings/d;-><init>(Lcom/google/firebase/sessions/b;Lkotlin/coroutines/g;Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    sget-object p2, Lcom/google/firebase/sessions/settings/f;->Companion:Lcom/google/firebase/sessions/settings/f$a;

    .line 5
    invoke-static {p2, p1}, Lcom/google/firebase/sessions/settings/f$a;->a(Lcom/google/firebase/sessions/settings/f$a;Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v6

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, v8

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/settings/c;-><init>(Lkotlin/coroutines/g;Lcom/google/firebase/installations/h;Lcom/google/firebase/sessions/b;Lcom/google/firebase/sessions/settings/a;Landroidx/datastore/core/DataStore;)V

    .line 7
    invoke-direct {p0, v0, v7}, Lcom/google/firebase/sessions/settings/f;-><init>(Lcom/google/firebase/sessions/settings/h;Lcom/google/firebase/sessions/settings/h;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Lkotlin/coroutines/g;Lkotlin/coroutines/g;Lcom/google/firebase/installations/h;)V
    .locals 7
    .param p1    # Lcom/google/firebase/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/installations/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallationsApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v2

    const-string v0, "firebaseApp.applicationContext"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/google/firebase/sessions/a0;->INSTANCE:Lcom/google/firebase/sessions/a0;

    invoke-virtual {v0, p1}, Lcom/google/firebase/sessions/a0;->b(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/b;

    move-result-object v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/settings/f;-><init>(Landroid/content/Context;Lkotlin/coroutines/g;Lkotlin/coroutines/g;Lcom/google/firebase/installations/h;Lcom/google/firebase/sessions/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/settings/h;Lcom/google/firebase/sessions/settings/h;)V
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/settings/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/sessions/settings/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "localOverrideSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/f;->localOverrideSettings:Lcom/google/firebase/sessions/settings/h;

    iput-object p2, p0, Lcom/google/firebase/sessions/settings/f;->remoteSettings:Lcom/google/firebase/sessions/settings/h;

    return-void
.end method

.method public static final synthetic a()Lkotlin/properties/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/settings/f;->dataStore$delegate:Lkotlin/properties/d;

    return-object v0
.end method

.method private final e(D)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final f(J)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lk8/b;->F(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lk8/b;->A(J)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method


# virtual methods
.method public final b()D
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/f;->localOverrideSettings:Lcom/google/firebase/sessions/settings/h;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/h;->a()Ljava/lang/Double;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/sessions/settings/f;->e(D)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/f;->remoteSettings:Lcom/google/firebase/sessions/settings/h;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/h;->a()Ljava/lang/Double;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/sessions/settings/f;->e(D)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    return-wide v0

    .line 39
    .line 40
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 41
    return-wide v0
.end method

.method public final c()J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/f;->localOverrideSettings:Lcom/google/firebase/sessions/settings/h;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/h;->d()Lk8/b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lk8/b;->M()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/sessions/settings/f;->f(J)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/f;->remoteSettings:Lcom/google/firebase/sessions/settings/h;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/h;->d()Lk8/b;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lk8/b;->M()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/sessions/settings/f;->f(J)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    return-wide v0

    .line 39
    .line 40
    :cond_1
    sget-object v0, Lk8/b;->Companion:Lk8/b$a;

    .line 41
    .line 42
    const/16 v0, 0x1e

    .line 43
    .line 44
    sget-object v1, Lk8/e;->MINUTES:Lk8/e;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lk8/d;->s(ILk8/e;)J

    .line 48
    move-result-wide v0

    .line 49
    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/f;->localOverrideSettings:Lcom/google/firebase/sessions/settings/h;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/h;->c()Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/f;->remoteSettings:Lcom/google/firebase/sessions/settings/h;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/firebase/sessions/settings/h;->c()Ljava/lang/Boolean;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/firebase/sessions/settings/f$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/google/firebase/sessions/settings/f$b;

    .line 8
    .line 9
    iget v1, v0, Lcom/google/firebase/sessions/settings/f$b;->label:I

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
    iput v1, v0, Lcom/google/firebase/sessions/settings/f$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/settings/f$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/settings/f$b;-><init>(Lcom/google/firebase/sessions/settings/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/settings/f$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcom/google/firebase/sessions/settings/f$b;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget-object v2, v0, Lcom/google/firebase/sessions/settings/f$b;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lcom/google/firebase/sessions/settings/f;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/firebase/sessions/settings/f;->localOverrideSettings:Lcom/google/firebase/sessions/settings/h;

    .line 66
    .line 67
    iput-object p0, v0, Lcom/google/firebase/sessions/settings/f$b;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v4, v0, Lcom/google/firebase/sessions/settings/f$b;->label:I

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0}, Lcom/google/firebase/sessions/settings/h;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-ne p1, v1, :cond_4

    .line 76
    return-object v1

    .line 77
    :cond_4
    move-object v2, p0

    .line 78
    .line 79
    :goto_1
    iget-object p1, v2, Lcom/google/firebase/sessions/settings/f;->remoteSettings:Lcom/google/firebase/sessions/settings/h;

    .line 80
    const/4 v2, 0x0

    .line 81
    .line 82
    iput-object v2, v0, Lcom/google/firebase/sessions/settings/f$b;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput v3, v0, Lcom/google/firebase/sessions/settings/f$b;->label:I

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v0}, Lcom/google/firebase/sessions/settings/h;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    if-ne p1, v1, :cond_5

    .line 91
    return-object v1

    .line 92
    .line 93
    :cond_5
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 94
    return-object p1
.end method
