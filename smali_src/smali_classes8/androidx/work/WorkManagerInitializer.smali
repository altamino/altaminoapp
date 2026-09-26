.class public final Landroidx/work/WorkManagerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/startup/Initializer<",
        "Landroidx/work/WorkManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "WrkMgrInitializer"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/work/Logger;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/work/WorkManagerInitializer;->TAG:Ljava/lang/String;

    .line 9
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


# virtual methods
.method public a(Landroid/content/Context;)Landroidx/work/WorkManager;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/work/WorkManagerInitializer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "Initializing WorkManager with default configuration."

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->a()Landroidx/work/Configuration;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Landroidx/work/WorkManager;->e(Landroid/content/Context;Landroidx/work/Configuration;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroidx/work/WorkManager;->d(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/work/WorkManagerInitializer;->a(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
