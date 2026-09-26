.class final Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/work/impl/model/WorkSpec;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-direct {v0}, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;-><init>()V

    sput-object v0, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/impl/model/WorkSpec;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "spec"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->j()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "Periodic"

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-string p1, "OneTime"

    .line 18
    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/work/impl/model/WorkSpec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->a(Landroidx/work/impl/model/WorkSpec;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
