.class public final Lcom/google/firebase/sessions/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/x$c;,
        Lcom/google/firebase/sessions/x$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionDatastore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionDatastore.kt\ncom/google/firebase/sessions/SessionDatastoreImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,104:1\n47#2:105\n49#2:109\n50#3:106\n55#3:108\n106#4:107\n*S KotlinDebug\n*F\n+ 1 SessionDatastore.kt\ncom/google/firebase/sessions/SessionDatastoreImpl\n*L\n75#1:105\n75#1:109\n75#1:106\n75#1:108\n75#1:107\n*E\n"
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/x$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FirebaseSessionsRepo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final backgroundDispatcher:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentSessionFromDatastore:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/sessions/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final firebaseSessionDataFlow:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "Lcom/google/firebase/sessions/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/x$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/x$b;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/sessions/x;->Companion:Lcom/google/firebase/sessions/x$b;

    .line 9
    .line 10
    sget-object v0, Lcom/google/firebase/sessions/v;->INSTANCE:Lcom/google/firebase/sessions/v;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/sessions/v;->a()Ljava/lang/String;

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
    sput-object v0, Lcom/google/firebase/sessions/x;->dataStore$delegate:Lkotlin/properties/d;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/g;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g;
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
    const-string v0, "backgroundDispatcher"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/firebase/sessions/x;->context:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/firebase/sessions/x;->backgroundDispatcher:Lkotlin/coroutines/g;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/firebase/sessions/x;->currentSessionFromDatastore:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    sget-object v0, Lcom/google/firebase/sessions/x;->Companion:Lcom/google/firebase/sessions/x$b;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/google/firebase/sessions/x$b;->a(Lcom/google/firebase/sessions/x$b;Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/g;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    new-instance v0, Lcom/google/firebase/sessions/x$d;

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/x$d;-><init>(Lkotlin/coroutines/d;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/i;->h(Lkotlinx/coroutines/flow/g;Le8/q;)Lkotlinx/coroutines/flow/g;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    new-instance v0, Lcom/google/firebase/sessions/x$e;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p1, p0}, Lcom/google/firebase/sessions/x$e;-><init>(Lkotlinx/coroutines/flow/g;Lcom/google/firebase/sessions/x;)V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/google/firebase/sessions/x;->firebaseSessionDataFlow:Lkotlinx/coroutines/flow/g;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    .line 59
    new-instance v5, Lcom/google/firebase/sessions/x$a;

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, p0, v1}, Lcom/google/firebase/sessions/x$a;-><init>(Lcom/google/firebase/sessions/x;Lkotlin/coroutines/d;)V

    .line 63
    const/4 v6, 0x3

    .line 64
    const/4 v7, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 68
    return-void
.end method

.method public static final synthetic c()Lcom/google/firebase/sessions/x$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/x;->Companion:Lcom/google/firebase/sessions/x$b;

    return-object v0
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/x;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/sessions/x;->context:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/x;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/sessions/x;->currentSessionFromDatastore:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    return-object p0
.end method

.method public static final synthetic f()Lkotlin/properties/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/x;->dataStore$delegate:Lkotlin/properties/d;

    return-object v0
.end method

.method public static final synthetic g(Lcom/google/firebase/sessions/x;)Lkotlinx/coroutines/flow/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/sessions/x;->firebaseSessionDataFlow:Lkotlinx/coroutines/flow/g;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/google/firebase/sessions/x;Landroidx/datastore/preferences/core/Preferences;)Lcom/google/firebase/sessions/l;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/x;->i(Landroidx/datastore/preferences/core/Preferences;)Lcom/google/firebase/sessions/l;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i(Landroidx/datastore/preferences/core/Preferences;)Lcom/google/firebase/sessions/l;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/l;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/sessions/x$c;->INSTANCE:Lcom/google/firebase/sessions/x$c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/sessions/x$c;->a()Landroidx/datastore/preferences/core/Preferences$Key;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/firebase/sessions/l;-><init>(Ljava/lang/String;)V

    .line 18
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sessionId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/sessions/x;->backgroundDispatcher:Lkotlin/coroutines/g;

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
    new-instance v4, Lcom/google/firebase/sessions/x$f;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, p0, p1, v0}, Lcom/google/firebase/sessions/x$f;-><init>(Lcom/google/firebase/sessions/x;Ljava/lang/String;Lkotlin/coroutines/d;)V

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

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/x;->currentSessionFromDatastore:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/sessions/l;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/sessions/l;->a()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method
