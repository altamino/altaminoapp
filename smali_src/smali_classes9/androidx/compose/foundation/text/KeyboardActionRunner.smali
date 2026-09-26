.class public final Landroidx/compose/foundation/text/KeyboardActionRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/KeyboardActionScope;


# instance fields
.field public focusManager:Landroidx/compose/ui/focus/FocusManager;

.field public keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->d()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->b()Landroidx/compose/ui/focus/FocusManager;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusManager;->a(I)Z

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->f()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->b()Landroidx/compose/ui/focus/FocusManager;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusManager;->a(I)Z

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->b()I

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->c()I

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->g()I

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->h()I

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    goto :goto_0

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->a()I

    .line 98
    move-result v1

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->e()I

    .line 109
    move-result v0

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v0}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 113
    :goto_0
    return-void
.end method

.method public final b()Landroidx/compose/ui/focus/FocusManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->focusManager:Landroidx/compose/ui/focus/FocusManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "focusManager"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final c()Landroidx/compose/foundation/text/KeyboardActions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "keyboardActions"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final d(I)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->b()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->c()Landroidx/compose/foundation/text/KeyboardActions;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions;->b()Le8/l;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->c()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->c()Landroidx/compose/foundation/text/KeyboardActions;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions;->c()Le8/l;

    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->d()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->c()Landroidx/compose/foundation/text/KeyboardActions;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions;->d()Le8/l;

    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->f()I

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->c()Landroidx/compose/foundation/text/KeyboardActions;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions;->e()Le8/l;

    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->g()I

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 88
    move-result v1

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->c()Landroidx/compose/foundation/text/KeyboardActions;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions;->f()Le8/l;

    .line 98
    move-result-object v0

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->h()I

    .line 103
    move-result v1

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/foundation/text/KeyboardActionRunner;->c()Landroidx/compose/foundation/text/KeyboardActions;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions;->g()Le8/l;

    .line 117
    move-result-object v0

    .line 118
    goto :goto_1

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->a()I

    .line 122
    move-result v1

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    goto :goto_0

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeAction$Companion;->e()I

    .line 133
    move-result v0

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 137
    move-result v0

    .line 138
    .line 139
    if-eqz v0, :cond_9

    .line 140
    :goto_0
    move-object v0, v2

    .line 141
    .line 142
    :goto_1
    if-eqz v0, :cond_7

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 148
    .line 149
    :cond_7
    if-nez v2, :cond_8

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/KeyboardActionRunner;->a(I)V

    .line 153
    :cond_8
    return-void

    .line 154
    .line 155
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v0, "invalid ImeAction"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    throw p1
.end method

.method public final e(Landroidx/compose/ui/focus/FocusManager;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->focusManager:Landroidx/compose/ui/focus/FocusManager;

    return-void
.end method

.method public final f(Landroidx/compose/foundation/text/KeyboardActions;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/KeyboardActions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    return-void
.end method
