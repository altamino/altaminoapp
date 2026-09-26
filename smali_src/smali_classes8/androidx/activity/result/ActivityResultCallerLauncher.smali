.class public final Landroidx/activity/result/ActivityResultCallerLauncher;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/activity/result/ActivityResultLauncher<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field private final callerContract:Landroidx/activity/result/contract/ActivityResultContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callerInput:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resultContract$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultLauncher;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/activity/result/contract/ActivityResultContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;TI;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "launcher"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "callerContract"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->callerContract:Landroidx/activity/result/contract/ActivityResultContract;

    .line 18
    .line 19
    iput-object p3, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->callerInput:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance p1, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2;-><init>(Landroidx/activity/result/ActivityResultCallerLauncher;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->resultContract$delegate:Lw7/m;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/ActivityResultCallerLauncher;->f(Lw7/l0;Landroidx/core/app/ActivityOptionsCompat;)V

    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->c()V

    .line 6
    return-void
.end method

.method public final d()Landroidx/activity/result/contract/ActivityResultContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->callerContract:Landroidx/activity/result/contract/ActivityResultContract;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->callerInput:Ljava/lang/Object;

    return-object v0
.end method

.method public f(Lw7/l0;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 1
    .param p1    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/app/ActivityOptionsCompat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/activity/result/ActivityResultCallerLauncher;->callerInput:Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    .line 13
    return-void
.end method
