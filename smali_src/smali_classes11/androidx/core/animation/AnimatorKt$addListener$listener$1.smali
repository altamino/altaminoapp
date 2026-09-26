.class public final Landroidx/core/animation/AnimatorKt$addListener$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n*L\n1#1,136:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $onCancel:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onEnd:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onRepeat:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onStart:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/l;Le8/l;Le8/l;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroid/animation/Animator;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onRepeat:Le8/l;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onEnd:Le8/l;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onCancel:Le8/l;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onStart:Le8/l;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animator"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onCancel:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animator"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onEnd:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animator"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onRepeat:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animator"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/animation/AnimatorKt$addListener$listener$1;->$onStart:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method
