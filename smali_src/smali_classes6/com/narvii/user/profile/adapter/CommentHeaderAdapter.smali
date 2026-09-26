.class public abstract Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field private commentCount:I

.field private curSort:I

.field private final isMe:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-boolean p2, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->isMe:Z

    .line 11
    return-void
.end method

.method public static synthetic f(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->onItemClick$lambda$1(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final onItemClick$lambda$1(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x2

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    .line 14
    if-eq p2, p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->onCommentRefresh()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->setCommentSort(I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->setCommentSort(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->setCommentSort(I)V

    .line 31
    :goto_0
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final setCommentSort(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->onCommentSort(I)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getBackgroundColorRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f060137

    goto :goto_0

    :cond_0
    const p1, 0x7f060139

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->getItem(I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Void;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0156

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    .line 13
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    const-string p3, "#FF888888"

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    move-result p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p3, -0x1

    .line 24
    .line 25
    .line 26
    :goto_0
    const v0, 0x7f0a0e51

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a0358

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->showCommentTitle()Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    const v3, 0x7f1202f7

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    iget v0, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->commentCount:I

    .line 86
    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const-string v0, ""

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    const-string v3, "("

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, ")"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const/4 v2, 0x4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_2
    const v0, 0x7f0a0361

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 145
    .line 146
    .line 147
    const v0, 0x7f0a0f3c

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object p3

    .line 161
    .line 162
    iget-boolean v1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->isMe:Z

    .line 163
    .line 164
    if-eqz v1, :cond_3

    .line 165
    goto :goto_3

    .line 166
    .line 167
    :cond_3
    const/16 p2, 0x8

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object p2

    .line 175
    .line 176
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    const p2, 0x7f0a026a

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object p2

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    move-result-object p3

    .line 191
    .line 192
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->getBackgroundColorRes(Z)I

    .line 196
    move-result v0

    .line 197
    .line 198
    .line 199
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 200
    move-result p3

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 204
    .line 205
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    const-string p2, "apply(...)"

    .line 211
    .line 212
    .line 213
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final isMe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->isMe:Z

    return v0
.end method

.method public abstract onCommentRefresh()V
.end method

.method public abstract onCommentSort(I)V
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    goto :goto_3

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a0361

    .line 23
    .line 24
    if-ne v1, v2, :cond_5

    .line 25
    .line 26
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    iget p2, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    .line 36
    const/4 p3, 0x2

    .line 37
    .line 38
    const/16 p4, 0x8

    .line 39
    const/4 p5, 0x4

    .line 40
    .line 41
    if-ne p2, p3, :cond_2

    .line 42
    move p2, p5

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move p2, p4

    .line 45
    .line 46
    .line 47
    :goto_1
    const p3, 0x7f1202f5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 51
    .line 52
    iget p2, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    .line 53
    .line 54
    if-nez p2, :cond_3

    .line 55
    move p2, p5

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move p2, p4

    .line 58
    .line 59
    .line 60
    :goto_2
    const p3, 0x7f1202f3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 64
    .line 65
    iget p2, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->curSort:I

    .line 66
    const/4 p3, 0x1

    .line 67
    .line 68
    if-ne p2, p3, :cond_4

    .line 69
    move p4, p5

    .line 70
    .line 71
    .line 72
    :cond_4
    const p2, 0x7f1202f4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 76
    .line 77
    .line 78
    const p2, 0x7f120fc9

    .line 79
    const/4 p4, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 83
    .line 84
    new-instance p2, Lcom/narvii/user/profile/adapter/a;

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, p0}, Lcom/narvii/user/profile/adapter/a;-><init>(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 94
    return p3

    .line 95
    .line 96
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 97
    goto :goto_4

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    move-result v0

    .line 102
    .line 103
    .line 104
    const v1, 0x7f0a0f3c

    .line 105
    .line 106
    if-ne v0, v1, :cond_7

    .line 107
    .line 108
    const-class v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    const v2, 0x7f1202ec

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    const-string/jumbo v2, "title"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 134
    .line 135
    .line 136
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    const v2, 0x7f120135

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    const-string/jumbo v2, "subTitle"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    const-string v1, "privilegeKey"

    .line 157
    .line 158
    const-string v2, "privilegeOfCommentOnUserProfile"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .line 163
    const-string v1, "isDarkTheme"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->userProfilePrivilegeFragmentIsDarkTheme()Z

    .line 167
    move-result v2

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 177
    move-result p1

    .line 178
    return p1
.end method

.method public final setCommentCount(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->commentCount:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method protected showCommentTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected userProfilePrivilegeFragmentIsDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
