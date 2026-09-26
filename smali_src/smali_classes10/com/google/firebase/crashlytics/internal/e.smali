.class public final Lcom/google/firebase/crashlytics/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/remoteconfig/interop/rollouts/f;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrashlyticsRemoteConfigListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashlyticsRemoteConfigListener.kt\ncom/google/firebase/crashlytics/internal/CrashlyticsRemoteConfigListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1549#2:41\n1620#2,3:42\n*S KotlinDebug\n*F\n+ 1 CrashlyticsRemoteConfigListener.kt\ncom/google/firebase/crashlytics/internal/CrashlyticsRemoteConfigListener\n*L\n27#1:41\n27#1:42,3\n*E\n"
.end annotation


# instance fields
.field private final userMetadata:Lcom/google/firebase/crashlytics/internal/metadata/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/n;)V
    .locals 1
    .param p1    # Lcom/google/firebase/crashlytics/internal/metadata/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "userMetadata"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/e;->userMetadata:Lcom/google/firebase/crashlytics/internal/metadata/n;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/remoteconfig/interop/rollouts/e;)V
    .locals 9
    .param p1    # Lcom/google/firebase/remoteconfig/interop/rollouts/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rolloutsState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/e;->userMetadata:Lcom/google/firebase/crashlytics/internal/metadata/n;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/interop/rollouts/e;->b()Ljava/util/Set;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v1, "rolloutsState.rolloutAssignments"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/google/firebase/remoteconfig/interop/rollouts/d;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/interop/rollouts/d;->d()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/interop/rollouts/d;->b()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/interop/rollouts/d;->c()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/interop/rollouts/d;->f()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/interop/rollouts/d;->e()J

    .line 63
    move-result-wide v7

    .line 64
    .line 65
    .line 66
    invoke-static/range {v3 .. v8}, Lcom/google/firebase/crashlytics/internal/metadata/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/metadata/i;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/metadata/n;->r(Ljava/util/List;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-string v0, "Updated Crashlytics Rollout State"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 84
    return-void
.end method
