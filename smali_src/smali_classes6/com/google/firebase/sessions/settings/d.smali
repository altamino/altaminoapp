.class public final Lcom/google/firebase/sessions/settings/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/settings/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/settings/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FIREBASE_PLATFORM:Ljava/lang/String; = "android"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FIREBASE_SESSIONS_BASE_URL_STRING:Ljava/lang/String; = "firebase-settings.crashlytics.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final appInfo:Lcom/google/firebase/sessions/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final baseUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final blockingDispatcher:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/settings/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/d$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/google/firebase/sessions/settings/d;->Companion:Lcom/google/firebase/sessions/settings/d$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/b;Lkotlin/coroutines/g;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/settings/d;->appInfo:Lcom/google/firebase/sessions/b;

    iput-object p2, p0, Lcom/google/firebase/sessions/settings/d;->blockingDispatcher:Lkotlin/coroutines/g;

    iput-object p3, p0, Lcom/google/firebase/sessions/settings/d;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/sessions/b;Lkotlin/coroutines/g;Ljava/lang/String;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "firebase-settings.crashlytics.com"

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/sessions/settings/d;-><init>(Lcom/google/firebase/sessions/b;Lkotlin/coroutines/g;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/google/firebase/sessions/settings/d;)Ljava/net/URL;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/d;->c()Ljava/net/URL;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c()Ljava/net/URL;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/net/Uri$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, "https"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/d;->baseUrl:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "spi"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "v2"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "platforms"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "android"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "gmp"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/d;->appInfo:Lcom/google/firebase/sessions/b;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/sessions/b;->b()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-string v1, "settings"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/d;->appInfo:Lcom/google/firebase/sessions/b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/firebase/sessions/b;->a()Lcom/google/firebase/sessions/a;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/firebase/sessions/a;->a()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    const-string v2, "build_version"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/d;->appInfo:Lcom/google/firebase/sessions/b;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/firebase/sessions/b;->a()Lcom/google/firebase/sessions/a;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/google/firebase/sessions/a;->f()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-string v2, "display_version"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    new-instance v1, Ljava/net/URL;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 109
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/Map;Le8/p;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Le8/p<",
            "-",
            "Lorg/json/JSONObject;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le8/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
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
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/d;->blockingDispatcher:Lkotlin/coroutines/g;

    .line 3
    .line 4
    new-instance v7, Lcom/google/firebase/sessions/settings/d$b;

    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v1, v7

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/settings/d$b;-><init>(Lcom/google/firebase/sessions/settings/d;Ljava/util/Map;Le8/p;Le8/p;Lkotlin/coroutines/d;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 27
    return-object p1
.end method
