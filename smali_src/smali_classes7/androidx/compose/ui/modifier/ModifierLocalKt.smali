.class public final Landroidx/compose/ui/modifier/ModifierLocalKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Le8/a;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/a<",
            "+TT;>;)",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "defaultFactory"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/ProvidableModifierLocal;-><init>(Le8/a;)V

    .line 11
    return-object v0
.end method
