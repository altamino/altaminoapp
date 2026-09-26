.class public abstract Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Api33Ext4JavaImpl;,
        Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;

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

.method public static final a(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;->a(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Lcom/google/common/util/concurrent/k;
    .param p1    # Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;",
            ")",
            "Lcom/google/common/util/concurrent/k<",
            "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
