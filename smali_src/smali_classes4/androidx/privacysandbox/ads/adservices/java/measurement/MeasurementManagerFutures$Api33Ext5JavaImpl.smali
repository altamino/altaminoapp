.class final Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;
.super Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api33Ext5JavaImpl"
.end annotation


# instance fields
.field private final mMeasurementManager:Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;)V
    .locals 1
    .param p1    # Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "mMeasurementManager"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;->mMeasurementManager:Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;

    .line 11
    return-void
.end method

.method public static final synthetic e(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;)Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;->mMeasurementManager:Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;

    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/common/util/concurrent/k;
    .locals 7
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, p0, v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;Lkotlin/coroutines/d;)V

    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0, v2, v0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->c(Lkotlinx/coroutines/v0;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/k;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public c(Landroid/net/Uri;Landroid/view/InputEvent;)Lcom/google/common/util/concurrent/k;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/InputEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "Lcom/google/common/util/concurrent/k<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "attributionSource"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v4, p0, p1, p2, v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/d;)V

    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0, p2, v0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->c(Lkotlinx/coroutines/v0;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/k;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public d(Landroid/net/Uri;)Lcom/google/common/util/concurrent/k;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/k<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "trigger"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, p0, p1, v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;Landroid/net/Uri;Lkotlin/coroutines/d;)V

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1, v0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->c(Lkotlinx/coroutines/v0;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/k;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public f(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;)Lcom/google/common/util/concurrent/k;
    .locals 7
    .param p1    # Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;",
            ")",
            "Lcom/google/common/util/concurrent/k<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "deletionRequest"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v4, p0, p1, v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;Lkotlin/coroutines/d;)V

    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0, v1, v0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->c(Lkotlinx/coroutines/v0;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/k;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public g(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;)Lcom/google/common/util/concurrent/k;
    .locals 7
    .param p1    # Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;",
            ")",
            "Lcom/google/common/util/concurrent/k<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "request"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, p0, p1, v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;Lkotlin/coroutines/d;)V

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1, v0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->c(Lkotlinx/coroutines/v0;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/k;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public h(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;)Lcom/google/common/util/concurrent/k;
    .locals 7
    .param p1    # Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;",
            ")",
            "Lcom/google/common/util/concurrent/k<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "request"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, p0, p1, v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;Lkotlin/coroutines/d;)V

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1, v0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->c(Lkotlinx/coroutines/v0;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/k;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
