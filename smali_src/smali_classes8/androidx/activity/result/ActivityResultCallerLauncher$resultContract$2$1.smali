.class public final Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2;->b()Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Lw7/l0;",
        "TO;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/result/ActivityResultCallerLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultCallerLauncher<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/activity/result/ActivityResultCallerLauncher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultCallerLauncher<",
            "TI;TO;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;->this$0:Landroidx/activity/result/ActivityResultCallerLauncher;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    .line 2
    check-cast p2, Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;->d(Landroid/content/Context;Lw7/l0;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")TO;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;->this$0:Landroidx/activity/result/ActivityResultCallerLauncher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultCallerLauncher;->d()Landroidx/activity/result/contract/ActivityResultContract;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContract;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public d(Landroid/content/Context;Lw7/l0;)Landroid/content/Intent;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "input"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;->this$0:Landroidx/activity/result/ActivityResultCallerLauncher;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResultCallerLauncher;->d()Landroidx/activity/result/contract/ActivityResultContract;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;->this$0:Landroidx/activity/result/ActivityResultCallerLauncher;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultCallerLauncher;->e()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Landroidx/activity/result/contract/ActivityResultContract;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
