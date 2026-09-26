.class public final Lcom/narvii/permisson/RationaleDialogConfigExt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final defaultConfig(Ljava/lang/String;Le8/l;Le8/l;)Lcom/narvii/permisson/RationaleDialogConfig;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le8/l<",
            "-",
            "Landroid/view/View;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroid/view/View;",
            "Lw7/l0;",
            ">;)",
            "Lcom/narvii/permisson/RationaleDialogConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "permission"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "onPositive"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "onNegative"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/permisson/RationaleDialogConfig;

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, v0

    .line 21
    move-object v2, p0

    .line 22
    move-object v5, p1

    .line 23
    move-object v6, p2

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/narvii/permisson/RationaleDialogConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le8/l;Le8/l;)V

    .line 27
    return-object v0
.end method

.method public static synthetic defaultConfig$default(Ljava/lang/String;Le8/l;Le8/l;ILjava/lang/Object;)Lcom/narvii/permisson/RationaleDialogConfig;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x2

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/permisson/RationaleDialogConfigExt;->emptyAction()Le8/l;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/permisson/RationaleDialogConfigExt;->emptyAction()Le8/l;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/narvii/permisson/RationaleDialogConfigExt;->defaultConfig(Ljava/lang/String;Le8/l;Le8/l;)Lcom/narvii/permisson/RationaleDialogConfig;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final emptyAction()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroid/view/View;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;->INSTANCE:Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;

    return-object v0
.end method

.method public static final openSettings(Landroid/content/Context;)Le8/l;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Le8/l<",
            "Landroid/view/View;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/permisson/RationaleDialogConfigExt$openSettings$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/permisson/RationaleDialogConfigExt$openSettings$1;-><init>(Landroid/content/Context;)V

    .line 11
    return-object v0
.end method
