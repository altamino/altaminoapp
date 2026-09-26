.class final Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;
.super Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api33Ext4Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSelectionManager.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,199:1\n314#2,11:200\n314#2,11:211\n*S KotlinDebug\n*F\n+ 1 AdSelectionManager.kt\nandroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl\n*L\n98#1:200,11\n162#1:211,11\n*E\n"
.end annotation


# instance fields
.field private final mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/adservices/adselection/AdSelectionManager;)V
    .locals 1
    .param p1    # Landroid/adservices/adselection/AdSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mAdSelectionManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/m;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026:class.java\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/n;->a(Ljava/lang/Object;)Landroid/adservices/adselection/AdSelectionManager;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;-><init>(Landroid/adservices/adselection/AdSelectionManager;)V

    return-void
.end method

.method public static final synthetic c(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;)Landroid/adservices/adselection/ReportImpressionRequest;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->i(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;)Landroid/adservices/adselection/ReportImpressionRequest;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;)Landroid/adservices/adselection/AdSelectionManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 3
    return-object p0
.end method

.method private final e(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/AdSelectionConfig;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/q;->a()Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->a()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->f(Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)Landroid/adservices/common/AdSelectionSignals;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/r;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->b()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->g(Ljava/util/List;)Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/s;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;Ljava/util/List;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->c()Landroid/net/Uri;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/t;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->e()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->a()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/adselection/b;->a(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/c;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->d()Ljava/util/Map;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->h(Ljava/util/Map;)Ljava/util/Map;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/d;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;Ljava/util/Map;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->f()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->f(Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)Landroid/adservices/common/AdSelectionSignals;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/e;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->g()Landroid/net/Uri;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-static {v0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/f;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/g;->a(Landroid/adservices/adselection/AdSelectionConfig$Builder;)Landroid/adservices/adselection/AdSelectionConfig;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string v0, "Builder()\n              \u2026\n                .build()"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-object p1
.end method

.method private final f(Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)Landroid/adservices/common/AdSelectionSignals;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;->a()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/k;->a(Ljava/lang/String;)Landroid/adservices/common/AdSelectionSignals;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "fromString(request.signals)"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    return-object p1
.end method

.method private final g(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/adservices/common/AdTechIdentifier;",
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
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->a()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/adselection/b;->a(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "fromString(buyer.identifier)"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method private final h(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
            "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/common/AdSelectionSignals;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->a()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Landroidx/privacysandbox/ads/adservices/adselection/b;->a(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    const-string v4, "fromString(key.identifier)"

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 52
    .line 53
    check-cast v2, Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->f(Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)Landroid/adservices/common/AdSelectionSignals;

    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object v0
.end method

.method private final i(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;)Landroid/adservices/adselection/ReportImpressionRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/p;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->b()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->a()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->e(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/AdSelectionConfig;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Landroidx/privacysandbox/ads/adservices/adselection/o;->a(JLandroid/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/ReportImpressionRequest;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private final j(Landroid/adservices/adselection/AdSelectionOutcome;)Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/i;->a(Landroid/adservices/adselection/AdSelectionOutcome;)J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/j;->a(Landroid/adservices/adselection/AdSelectionOutcome;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const-string/jumbo v3, "response.renderUri"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;-><init>(JLandroid/net/Uri;)V

    .line 20
    return-object v0
.end method

.method private final k(Landroid/adservices/adselection/AdSelectionConfig;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/AdSelectionConfig;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroid/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->d(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;)Landroid/adservices/adselection/AdSelectionManager;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->a(Lkotlin/coroutines/d;)Landroid/os/OutcomeReceiver;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p1, v2, v3}, Landroidx/privacysandbox/ads/adservices/adselection/h;->a(Landroid/adservices/adselection/AdSelectionManager;Landroid/adservices/adselection/AdSelectionConfig;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-ne p1, v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 43
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
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
            "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;",
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
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->d(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;)Landroid/adservices/adselection/AdSelectionManager;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->c(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;)Landroid/adservices/adselection/ReportImpressionRequest;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->a(Lkotlin/coroutines/d;)Landroid/os/OutcomeReceiver;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p1, v2, v3}, Landroidx/privacysandbox/ads/adservices/adselection/l;->a(Landroid/adservices/adselection/AdSelectionManager;Landroid/adservices/adselection/ReportImpressionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    return-object p1

    .line 54
    .line 55
    :cond_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 56
    return-object p1
.end method

.method public b(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
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
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;->label:I

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
    iput v1, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;-><init>(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;->label:I

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
    iget-object p1, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->e(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/AdSelectionConfig;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iput-object p0, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput v3, v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl$selectAds$1;->label:I

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1, v0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->k(Landroid/adservices/adselection/AdSelectionConfig;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    if-ne p2, v1, :cond_3

    .line 71
    return-object v1

    .line 72
    :cond_3
    move-object p1, p0

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-static {p2}, Landroidx/privacysandbox/ads/adservices/adselection/a;->a(Ljava/lang/Object;)Landroid/adservices/adselection/AdSelectionOutcome;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;->j(Landroid/adservices/adselection/AdSelectionOutcome;)Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;

    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method
