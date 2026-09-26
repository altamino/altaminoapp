.class public final Landroidx/compose/foundation/text/TextFieldSizeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/TextStyle;
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
    const-string v0, "style"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;-><init>(Landroidx/compose/ui/text/TextStyle;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1, v0, p1, v1}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
