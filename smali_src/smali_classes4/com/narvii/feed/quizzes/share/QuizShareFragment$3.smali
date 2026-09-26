.class Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/share/QuizShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$000(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    xor-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    .line 79
    const v0, 0x7f120402

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_1
    const v0, 0x7f120438

    .line 84
    .line 85
    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->q(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View$OnClickListener;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 102
    move-result v0

    .line 103
    const/4 v1, 0x0

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    move-object v0, v1

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    const v2, 0x7f0803b5

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->t(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->s(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->o(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    if-eqz p1, :cond_3

    .line 137
    .line 138
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->o(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->p(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 152
    move-result v0

    .line 153
    .line 154
    xor-int/lit8 v0, v0, 0x1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    .line 159
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->u(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    .line 163
    return-void
.end method
