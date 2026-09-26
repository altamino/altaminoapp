.class public final Lio/ktor/client/engine/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CAPABILITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/ktor/client/plugins/y$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ENGINE_CAPABILITIES_KEY:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Ljava/util/Map<",
            "Lio/ktor/client/engine/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/util/a;

    .line 3
    .line 4
    const-string v1, "EngineCapabilities"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lio/ktor/client/engine/f;->ENGINE_CAPABILITIES_KEY:Lio/ktor/util/a;

    .line 10
    .line 11
    sget-object v0, Lio/ktor/client/plugins/y;->Plugin:Lio/ktor/client/plugins/y$b;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/w0;->d(Ljava/lang/Object;)Ljava/util/Set;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/engine/f;->DEFAULT_CAPABILITIES:Ljava/util/Set;

    .line 18
    return-void
.end method

.method public static final a()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Ljava/util/Map<",
            "Lio/ktor/client/engine/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/engine/f;->ENGINE_CAPABILITIES_KEY:Lio/ktor/util/a;

    return-object v0
.end method
