.class final Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->s0(Landroidx/compose/runtime/collection/IdentityArrayMap;Le8/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $content:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $savedContent:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Le8/p;Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/ComposerImpl;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$content:Le8/p;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$savedContent:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$content:Le8/p;

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->G()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->h0(Landroidx/compose/runtime/ComposerImpl;ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$content:Le8/p;

    .line 3
    invoke-static {v0, v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->b(Landroidx/compose/runtime/Composer;Le8/p;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 4
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->S(Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$savedContent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 6
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->G()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->h0(Landroidx/compose/runtime/ComposerImpl;ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->$savedContent:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/p;

    invoke-static {v0, v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->b(Landroidx/compose/runtime/Composer;Le8/p;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 9
    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->S(Landroidx/compose/runtime/ComposerImpl;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Function2<androidx.compose.runtime.Composer, kotlin.Int, kotlin.Unit>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$doCompose$2$5;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->x1()V

    :goto_0
    return-void
.end method
