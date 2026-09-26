.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/selection/MouseSelectionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 8
    .param p3    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adjustment"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    return v1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->g(JZ)I

    .line 43
    move-result v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Ljava/lang/Integer;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v4

    .line 59
    const/4 v6, 0x0

    .line 60
    move-object v7, p3

    .line 61
    .line 62
    .line 63
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_1
    return v1
.end method

.method public b(J)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    return v1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->C()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 46
    move-result-wide v4

    .line 47
    .line 48
    .line 49
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 50
    move-result v4

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 54
    move-result v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->g(JZ)I

    .line 58
    move-result v5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 62
    move-result-object v3

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->e()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 69
    move-result-object v7

    .line 70
    .line 71
    .line 72
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :cond_1
    return v1
.end method

.method public c(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 8
    .param p3    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adjustment"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->y()Landroidx/compose/ui/focus/FocusRequester;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester;->c()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x2

    .line 40
    const/4 v6, 0x0

    .line 41
    move-object v1, v0

    .line 42
    move-wide v2, p1

    .line 43
    .line 44
    .line 45
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->h(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {v7, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->f(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ljava/lang/Integer;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    .line 57
    move-result-wide v2

    .line 58
    .line 59
    .line 60
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->h(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    .line 61
    move-result v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 65
    move-result-object v2

    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v1, v7

    .line 68
    move v3, v4

    .line 69
    move-object v6, p3

    .line 70
    .line 71
    .line 72
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :cond_1
    const/4 p1, 0x0

    .line 76
    return p1
.end method

.method public d(J)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->C()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 36
    move-result v7

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x2

    .line 39
    const/4 v6, 0x0

    .line 40
    move-wide v2, p1

    .line 41
    .line 42
    .line 43
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->h(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    .line 44
    move-result v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 48
    move-result-object v3

    .line 49
    const/4 v6, 0x0

    .line 50
    .line 51
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->e()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 55
    move-result-object p1

    .line 56
    move-object v2, v0

    .line 57
    move v4, v7

    .line 58
    move-object v7, p1

    .line 59
    .line 60
    .line 61
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 62
    const/4 p1, 0x1

    .line 63
    return p1

    .line 64
    :cond_0
    const/4 p1, 0x0

    .line 65
    return p1
.end method
