.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final backgroundDispatcher:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lkotlinx/coroutines/k0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blockingDispatcher:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lkotlinx/coroutines/k0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final firebaseApp:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lcom/google/firebase/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lcom/google/firebase/installations/h;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sessionFirelogPublisher:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lcom/google/firebase/sessions/b0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sessionGenerator:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lcom/google/firebase/sessions/d0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sessionsSettings:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lcom/google/firebase/sessions/settings/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final transportFactory:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "Lf2/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    .line 9
    .line 10
    const-class v0, Lcom/google/firebase/f;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/g0;

    .line 17
    .line 18
    const-class v0, Lcom/google/firebase/installations/h;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/g0;

    .line 25
    .line 26
    const-class v0, Lw3/a;

    .line 27
    .line 28
    const-class v1, Lkotlinx/coroutines/k0;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/g0;

    .line 35
    .line 36
    const-class v0, Lw3/b;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/g0;

    .line 43
    .line 44
    const-class v0, Lf2/g;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/g0;

    .line 51
    .line 52
    const-class v0, Lcom/google/firebase/sessions/b0;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionFirelogPublisher:Lcom/google/firebase/components/g0;

    .line 59
    .line 60
    const-class v0, Lcom/google/firebase/sessions/d0;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionGenerator:Lcom/google/firebase/components/g0;

    .line 67
    .line 68
    const-class v0, Lcom/google/firebase/sessions/settings/f;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lcom/google/firebase/components/g0;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/h0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-5(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/h0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/d0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-1(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/d0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/w;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-4(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/b0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-2(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/b0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/k;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-0(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/settings/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-3(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/settings/f;

    move-result-object p0

    return-object p0
.end method

.method private static final getComponents$lambda-0(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/k;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/k;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/g0;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "container[firebaseApp]"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v1, Lcom/google/firebase/f;

    .line 16
    .line 17
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lcom/google/firebase/components/g0;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "container[sessionsSettings]"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast v2, Lcom/google/firebase/sessions/settings/f;

    .line 29
    .line 30
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/g0;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v3}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    const-string v3, "container[backgroundDispatcher]"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    check-cast p0, Lkotlin/coroutines/g;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, v2, p0}, Lcom/google/firebase/sessions/k;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/sessions/settings/f;Lkotlin/coroutines/g;)V

    .line 45
    return-object v0
.end method

.method private static final getComponents$lambda-1(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/d0;
    .locals 3

    .line 1
    .line 2
    new-instance p0, Lcom/google/firebase/sessions/d0;

    .line 3
    .line 4
    sget-object v0, Lcom/google/firebase/sessions/l0;->INSTANCE:Lcom/google/firebase/sessions/l0;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/google/firebase/sessions/d0;-><init>(Lcom/google/firebase/sessions/k0;Le8/a;ILkotlin/jvm/internal/k;)V

    .line 10
    return-object p0
.end method

.method private static final getComponents$lambda-2(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/b0;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/firebase/sessions/c0;

    .line 3
    .line 4
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/g0;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "container[firebaseApp]"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v1, v0

    .line 15
    .line 16
    check-cast v1, Lcom/google/firebase/f;

    .line 17
    .line 18
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/g0;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v2, "container[firebaseInstallationsApi]"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v2, v0

    .line 29
    .line 30
    check-cast v2, Lcom/google/firebase/installations/h;

    .line 31
    .line 32
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lcom/google/firebase/components/g0;

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v3, "container[sessionsSettings]"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v3, v0

    .line 43
    .line 44
    check-cast v3, Lcom/google/firebase/sessions/settings/f;

    .line 45
    .line 46
    new-instance v4, Lcom/google/firebase/sessions/g;

    .line 47
    .line 48
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/g0;

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->d(Lcom/google/firebase/components/g0;)Lo4/b;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v5, "container.getProvider(transportFactory)"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v4, v0}, Lcom/google/firebase/sessions/g;-><init>(Lo4/b;)V

    .line 61
    .line 62
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/g0;

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    const-string v0, "container[backgroundDispatcher]"

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v5, p0

    .line 73
    .line 74
    check-cast v5, Lkotlin/coroutines/g;

    .line 75
    move-object v0, v6

    .line 76
    .line 77
    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/c0;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/sessions/settings/f;Lcom/google/firebase/sessions/h;Lkotlin/coroutines/g;)V

    .line 79
    return-object v6
.end method

.method private static final getComponents$lambda-3(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/settings/f;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/settings/f;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/g0;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "container[firebaseApp]"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v1, Lcom/google/firebase/f;

    .line 16
    .line 17
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/g0;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "container[blockingDispatcher]"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast v2, Lkotlin/coroutines/g;

    .line 29
    .line 30
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/g0;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v3}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    const-string v4, "container[backgroundDispatcher]"

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    check-cast v3, Lkotlin/coroutines/g;

    .line 42
    .line 43
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/g0;

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v4}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    const-string v4, "container[firebaseInstallationsApi]"

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    check-cast p0, Lcom/google/firebase/installations/h;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/sessions/settings/f;-><init>(Lcom/google/firebase/f;Lkotlin/coroutines/g;Lkotlin/coroutines/g;Lcom/google/firebase/installations/h;)V

    .line 58
    return-object v0
.end method

.method private static final getComponents$lambda-4(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/w;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/x;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/g0;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/google/firebase/f;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "container[firebaseApp].applicationContext"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/g0;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    const-string v2, "container[backgroundDispatcher]"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast p0, Lkotlin/coroutines/g;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/sessions/x;-><init>(Landroid/content/Context;Lkotlin/coroutines/g;)V

    .line 36
    return-object v0
.end method

.method private static final getComponents$lambda-5(Lcom/google/firebase/components/e;)Lcom/google/firebase/sessions/h0;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/i0;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/g0;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    const-string v1, "container[firebaseApp]"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast p0, Lcom/google/firebase/f;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/i0;-><init>(Lcom/google/firebase/f;)V

    .line 19
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/firebase/components/c;

    .line 4
    .line 5
    const-class v1, Lcom/google/firebase/sessions/k;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "fire-sessions"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/g0;

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lcom/google/firebase/components/g0;

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    sget-object v5, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/g0;

    .line 38
    .line 39
    .line 40
    invoke-static {v5}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 41
    move-result-object v6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    new-instance v6, Lcom/google/firebase/sessions/m;

    .line 48
    .line 49
    .line 50
    invoke-direct {v6}, Lcom/google/firebase/sessions/m;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v6}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->e()Lcom/google/firebase/components/c$b;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 62
    move-result-object v1

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    aput-object v1, v0, v6

    .line 66
    .line 67
    const-class v1, Lcom/google/firebase/sessions/d0;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    const-string v6, "session-generator"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v6}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    new-instance v6, Lcom/google/firebase/sessions/n;

    .line 80
    .line 81
    .line 82
    invoke-direct {v6}, Lcom/google/firebase/sessions/n;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v6}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 90
    move-result-object v1

    .line 91
    const/4 v6, 0x1

    .line 92
    .line 93
    aput-object v1, v0, v6

    .line 94
    .line 95
    const-class v1, Lcom/google/firebase/sessions/b0;

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    const-string v6, "session-publisher"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v6}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-static {v3}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 109
    move-result-object v6

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    sget-object v6, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/g0;

    .line 116
    .line 117
    .line 118
    invoke-static {v6}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 119
    move-result-object v7

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v7}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-static {v4}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 127
    move-result-object v4

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/g0;

    .line 134
    .line 135
    .line 136
    invoke-static {v4}, Lcom/google/firebase/components/s;->l(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-static {v5}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    new-instance v4, Lcom/google/firebase/sessions/o;

    .line 152
    .line 153
    .line 154
    invoke-direct {v4}, Lcom/google/firebase/sessions/o;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 162
    move-result-object v1

    .line 163
    const/4 v4, 0x2

    .line 164
    .line 165
    aput-object v1, v0, v4

    .line 166
    .line 167
    const-class v1, Lcom/google/firebase/sessions/settings/f;

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    const-string v4, "sessions-settings"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-static {v3}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/g0;

    .line 188
    .line 189
    .line 190
    invoke-static {v4}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 191
    move-result-object v4

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 195
    move-result-object v1

    .line 196
    .line 197
    .line 198
    invoke-static {v5}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 199
    move-result-object v4

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-static {v6}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 207
    move-result-object v4

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 211
    move-result-object v1

    .line 212
    .line 213
    new-instance v4, Lcom/google/firebase/sessions/p;

    .line 214
    .line 215
    .line 216
    invoke-direct {v4}, Lcom/google/firebase/sessions/p;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 224
    move-result-object v1

    .line 225
    const/4 v4, 0x3

    .line 226
    .line 227
    aput-object v1, v0, v4

    .line 228
    .line 229
    const-class v1, Lcom/google/firebase/sessions/w;

    .line 230
    .line 231
    .line 232
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    const-string v4, "sessions-datastore"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 239
    move-result-object v1

    .line 240
    .line 241
    .line 242
    invoke-static {v3}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 243
    move-result-object v4

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    .line 250
    invoke-static {v5}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 251
    move-result-object v4

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 255
    move-result-object v1

    .line 256
    .line 257
    new-instance v4, Lcom/google/firebase/sessions/q;

    .line 258
    .line 259
    .line 260
    invoke-direct {v4}, Lcom/google/firebase/sessions/q;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 264
    move-result-object v1

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 268
    move-result-object v1

    .line 269
    const/4 v4, 0x4

    .line 270
    .line 271
    aput-object v1, v0, v4

    .line 272
    .line 273
    const-class v1, Lcom/google/firebase/sessions/h0;

    .line 274
    .line 275
    .line 276
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 277
    move-result-object v1

    .line 278
    .line 279
    const-string v4, "sessions-service-binder"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 283
    move-result-object v1

    .line 284
    .line 285
    .line 286
    invoke-static {v3}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 287
    move-result-object v3

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 291
    move-result-object v1

    .line 292
    .line 293
    new-instance v3, Lcom/google/firebase/sessions/r;

    .line 294
    .line 295
    .line 296
    invoke-direct {v3}, Lcom/google/firebase/sessions/r;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 300
    move-result-object v1

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 304
    move-result-object v1

    .line 305
    const/4 v3, 0x5

    .line 306
    .line 307
    aput-object v1, v0, v3

    .line 308
    .line 309
    const-string v1, "1.2.0"

    .line 310
    .line 311
    .line 312
    invoke-static {v2, v1}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 313
    move-result-object v1

    .line 314
    const/4 v2, 0x6

    .line 315
    .line 316
    aput-object v1, v0, v2

    .line 317
    .line 318
    .line 319
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 320
    move-result-object v0

    .line 321
    return-object v0
.end method
