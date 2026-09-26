.class public final Lcom/narvii/util/FragmentExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Le8/l<",
            "-",
            "Landroid/view/LayoutInflater;",
            "+TT;>;)",
            "Lkotlin/properties/d<",
            "Landroidx/fragment/app/Fragment;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "initialize"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/FragmentExtensionsKt$viewBinding$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/narvii/util/FragmentExtensionsKt$viewBinding$1;-><init>(Landroidx/fragment/app/Fragment;Le8/l;)V

    .line 16
    return-object v0
.end method
