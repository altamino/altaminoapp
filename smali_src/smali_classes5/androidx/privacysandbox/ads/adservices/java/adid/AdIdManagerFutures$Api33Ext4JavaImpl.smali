.class final Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Api33Ext4JavaImpl;
.super Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api33Ext4JavaImpl"
.end annotation


# instance fields
.field private final mAdIdManager:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;)V
    .locals 1
    .param p1    # Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "mAdIdManager"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Api33Ext4JavaImpl;->mAdIdManager:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;

    .line 11
    return-void
.end method

.method public static final synthetic a(Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Api33Ext4JavaImpl;)Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Api33Ext4JavaImpl;->mAdIdManager:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;

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
            "Landroidx/privacysandbox/ads/adservices/adid/AdId;",
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
    new-instance v4, Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, p0, v0}, Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1;-><init>(Landroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Api33Ext4JavaImpl;Lkotlin/coroutines/d;)V

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
