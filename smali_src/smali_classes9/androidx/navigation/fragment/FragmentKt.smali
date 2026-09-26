.class public final Landroidx/navigation/fragment/FragmentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->c(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
