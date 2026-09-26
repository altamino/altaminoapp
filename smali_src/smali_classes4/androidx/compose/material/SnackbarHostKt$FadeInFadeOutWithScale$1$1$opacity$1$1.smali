.class final Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/material/FadeInFadeOutAnimationItem<",
        "Landroidx/compose/material/SnackbarData;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $key:Landroidx/compose/material/SnackbarData;


# direct methods
.method constructor <init>(Landroidx/compose/material/SnackbarData;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1$1;->$key:Landroidx/compose/material/SnackbarData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/material/FadeInFadeOutAnimationItem;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Landroidx/compose/material/FadeInFadeOutAnimationItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/FadeInFadeOutAnimationItem<",
            "Landroidx/compose/material/SnackbarData;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/material/FadeInFadeOutAnimationItem;->c()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1$1;->$key:Landroidx/compose/material/SnackbarData;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1$1;->a(Landroidx/compose/material/FadeInFadeOutAnimationItem;)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
