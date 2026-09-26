.class public final Landroidx/compose/ui/input/key/KeyEvent_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/KeyEvent;)J
    .locals 2
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$key"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    move-result p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public static final b(Landroid/view/KeyEvent;)I
    .locals 1
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$type"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    move-result p0

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->c()I

    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    sget-object p0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->b()I

    .line 27
    move-result p0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    sget-object p0, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->a()I

    .line 34
    move-result p0

    .line 35
    :goto_0
    return p0
.end method

.method public static final c(Landroid/view/KeyEvent;)I
    .locals 1
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$utf16CodePoint"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final d(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$isCtrlPressed"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final e(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$isShiftPressed"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method
