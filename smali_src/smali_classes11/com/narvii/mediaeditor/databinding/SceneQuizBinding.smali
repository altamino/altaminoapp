.class public final Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final alarm:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final alarmAnim:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final answer1:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final answer2:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final answer3:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final answer4:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final countDownLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final grid:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/CircleProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final question:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final redAlert:Lcom/narvii/widget/GradientView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sceneQuizAnswerParent:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final skipHint:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusBarPlaceholder:Lcom/narvii/widget/StatusBarPlaceHolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub1:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/scene/quiz/SceneQuizAnswerParent;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/CircleProgressBar;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/GradientView;Lcom/narvii/scene/quiz/SceneQuizAnswerParent;Landroid/widget/TextView;Lcom/narvii/widget/StatusBarPlaceHolder;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/narvii/scene/quiz/SceneQuizAnswerParent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/CircleProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/GradientView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/scene/quiz/SceneQuizAnswerParent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/widget/StatusBarPlaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->rootView:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->alarm:Lcom/narvii/widget/AutoSizingTextView;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->alarmAnim:Lcom/narvii/widget/AutoSizingTextView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->answer1:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->answer2:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->answer3:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->answer4:Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->countDownLayout:Landroid/widget/FrameLayout;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->grid:Landroid/widget/LinearLayout;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->progress:Lcom/narvii/widget/CircleProgressBar;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->question:Lcom/narvii/widget/AutoSizingTextView;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->redAlert:Lcom/narvii/widget/GradientView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->sceneQuizAnswerParent:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->skipHint:Landroid/widget/TextView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->statusBarPlaceholder:Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->stub1:Landroid/view/View;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;
    .locals 20
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    sget v1, Lcom/narvii/mediaeditor/R$id;->alarm:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 8
    move-result-object v2

    .line 9
    move-object v5, v2

    .line 10
    .line 11
    check-cast v5, Lcom/narvii/widget/AutoSizingTextView;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    sget v1, Lcom/narvii/mediaeditor/R$id;->alarm_anim:I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    move-object v6, v2

    .line 21
    .line 22
    check-cast v6, Lcom/narvii/widget/AutoSizingTextView;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_1:I

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 36
    move-result-object v7

    .line 37
    .line 38
    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_2:I

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 48
    move-result-object v8

    .line 49
    .line 50
    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_3:I

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 60
    move-result-object v9

    .line 61
    .line 62
    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_4:I

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;

    .line 72
    move-result-object v10

    .line 73
    .line 74
    sget v1, Lcom/narvii/mediaeditor/R$id;->count_down_layout:I

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    move-object v11, v2

    .line 80
    .line 81
    check-cast v11, Landroid/widget/FrameLayout;

    .line 82
    .line 83
    if-eqz v11, :cond_0

    .line 84
    .line 85
    sget v1, Lcom/narvii/mediaeditor/R$id;->grid:I

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 89
    move-result-object v2

    .line 90
    move-object v12, v2

    .line 91
    .line 92
    check-cast v12, Landroid/widget/LinearLayout;

    .line 93
    .line 94
    if-eqz v12, :cond_0

    .line 95
    .line 96
    sget v1, Lcom/narvii/mediaeditor/R$id;->progress:I

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 100
    move-result-object v2

    .line 101
    move-object v13, v2

    .line 102
    .line 103
    check-cast v13, Lcom/narvii/widget/CircleProgressBar;

    .line 104
    .line 105
    if-eqz v13, :cond_0

    .line 106
    .line 107
    sget v1, Lcom/narvii/mediaeditor/R$id;->question:I

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 111
    move-result-object v2

    .line 112
    move-object v14, v2

    .line 113
    .line 114
    check-cast v14, Lcom/narvii/widget/AutoSizingTextView;

    .line 115
    .line 116
    if-eqz v14, :cond_0

    .line 117
    .line 118
    sget v1, Lcom/narvii/mediaeditor/R$id;->red_alert:I

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 122
    move-result-object v2

    .line 123
    move-object v15, v2

    .line 124
    .line 125
    check-cast v15, Lcom/narvii/widget/GradientView;

    .line 126
    .line 127
    if-eqz v15, :cond_0

    .line 128
    .line 129
    move-object/from16 v16, v0

    .line 130
    .line 131
    check-cast v16, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    .line 132
    .line 133
    sget v1, Lcom/narvii/mediaeditor/R$id;->skip_hint:I

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    move-object/from16 v17, v2

    .line 140
    .line 141
    check-cast v17, Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz v17, :cond_0

    .line 144
    .line 145
    sget v1, Lcom/narvii/mediaeditor/R$id;->status_bar_placeholder:I

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    move-object/from16 v18, v2

    .line 152
    .line 153
    check-cast v18, Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 154
    .line 155
    if-eqz v18, :cond_0

    .line 156
    .line 157
    sget v1, Lcom/narvii/mediaeditor/R$id;->stub1:I

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 161
    move-result-object v19

    .line 162
    .line 163
    if-eqz v19, :cond_0

    .line 164
    .line 165
    new-instance v0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;

    .line 166
    move-object v3, v0

    .line 167
    .line 168
    move-object/from16 v4, v16

    .line 169
    .line 170
    .line 171
    invoke-direct/range {v3 .. v19}, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;-><init>(Lcom/narvii/scene/quiz/SceneQuizAnswerParent;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Lcom/narvii/mediaeditor/databinding/SceneQuizItemBinding;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/CircleProgressBar;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/GradientView;Lcom/narvii/scene/quiz/SceneQuizAnswerParent;Landroid/widget/TextView;Lcom/narvii/widget/StatusBarPlaceHolder;Landroid/view/View;)V

    .line 172
    return-object v0

    .line 173
    .line 174
    .line 175
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    new-instance v1, Ljava/lang/NullPointerException;

    .line 183
    .line 184
    const-string v2, "Missing required view with ID: "

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 192
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/narvii/mediaeditor/R$layout;->scene_quiz:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->getRoot()Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/scene/quiz/SceneQuizAnswerParent;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/SceneQuizBinding;->rootView:Lcom/narvii/scene/quiz/SceneQuizAnswerParent;

    return-object v0
.end method
