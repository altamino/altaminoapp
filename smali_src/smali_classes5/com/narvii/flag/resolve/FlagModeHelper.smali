.class public Lcom/narvii/flag/resolve/FlagModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_RESOLVE_BACK:Ljava/lang/String; = "template_content"

.field public static final FLAG_RESOLVE_REQUEST:I = 0x64

.field private static final KEY_FLAG_FILTER:Ljava/lang/String; = "flag_filter"

.field private static final KEY_FLAG_ID:Ljava/lang/String; = "id"

.field private static final KEY_FLAG_ITEM:Ljava/lang/String; = "flag_item"

.field private static final KEY_FLAG_ITEMS:Ljava/lang/String; = "flag_items"

.field private static final KEY_FLAG_MODE:Ljava/lang/String; = "flag_mode"

.field private static final KEY_FLAG_SIZE:Ljava/lang/String; = "flag_size"

.field private static final KEY_FLAG_STOP_TIME:Ljava/lang/String; = "stoptime"

.field public static final REQ_CHAT:I = 0x12e

.field public static final REQ_TEMPLE:I = 0x12d


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

.method static bridge synthetic a(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->findQuizQuestionById(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;

    move-result-object p0

    return-object p0
.end method

.method public static attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    const v0, 0x7f0a0023

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a07fe

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p0

    .line 23
    move-object v0, p0

    .line 24
    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {v0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagModeForCertainView(Landroid/view/ViewGroup;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static attachFlagModeForCertainView(Landroid/view/ViewGroup;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    :cond_0
    move-object v1, p1

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 11
    .line 12
    const-string v2, "flag_mode"

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lcom/narvii/util/ParamUtils;->getBooleanParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)Z

    .line 17
    move-result v2

    .line 18
    .line 19
    const-string v4, "flag_item"

    .line 20
    .line 21
    const-class v5, Lcom/narvii/flag/model/Flag;

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v4}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    move-object v8, v0

    .line 33
    .line 34
    check-cast v8, Lcom/narvii/flag/model/Flag;

    .line 35
    .line 36
    const-string v0, "flag_items"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 44
    move-result-object v9

    .line 45
    .line 46
    if-nez v9, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 52
    move-result v0

    .line 53
    .line 54
    :goto_0
    const-string v2, "flag_size"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)I

    .line 58
    move-result v10

    .line 59
    .line 60
    const-string v0, "flag_filter"

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v11

    .line 65
    .line 66
    const-string v0, "stoptime"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v12

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 73
    move-object v6, v0

    .line 74
    move-object v7, p1

    .line 75
    .line 76
    .line 77
    invoke-direct/range {v6 .. v12}, Lcom/narvii/flag/resolve/FlagResolveBar;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    const v1, 0x102000a

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    if-eqz p0, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    const v2, 0x7f0701be

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result v1

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    const v3, 0x7f0701c2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 125
    move-result v2

    .line 126
    add-int/2addr v1, v2

    .line 127
    .line 128
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 132
    move-result-object p0

    .line 133
    .line 134
    .line 135
    const p1, 0x7f010063

    .line 136
    .line 137
    .line 138
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 139
    move-result-object p0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-object v0

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    .line 150
    invoke-static {v2}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v4}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    check-cast v4, Lcom/narvii/flag/model/Flag;

    .line 162
    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const v6, 0x7f12079a

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v1, " "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    iget-object v1, v4, Lcom/narvii/flag/model/Flag;->lastResolvedTime:Ljava/util/Date;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    .line 197
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    .line 201
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 202
    move-result-object p1

    .line 203
    .line 204
    .line 205
    const v2, 0x7f0d028f

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    const p1, 0x7f0a0c2f

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    move-result-object p0

    .line 216
    .line 217
    check-cast p0, Landroid/widget/TextView;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_4
    :goto_1
    return-object v0
.end method

.method static bridge synthetic b(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/narvii/flag/resolve/FlagModeHelper;->generateFlagIntent(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static findQuizQuestionById(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizQuestion;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/narvii/model/QuizQuestion;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    return-object v1

    .line 38
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static generateFlagIntent(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    iget-object v0, p1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "id"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    const-string v0, "flag_item"

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    if-eqz p4, :cond_2

    .line 23
    .line 24
    const-string p1, "resolved"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 35
    .line 36
    :goto_1
    const-string v0, "flag_mode"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    const-string p1, "flag_items"

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    const-string p1, "flag_size"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    const-string p1, "flag_filter"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    const-string p1, "stoptime"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    return-object p0
.end method

.method public static handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x12d

    .line 3
    .line 4
    if-ne p2, v0, :cond_1

    .line 5
    const/4 p2, -0x1

    .line 6
    .line 7
    if-ne p3, p2, :cond_0

    .line 8
    .line 9
    const-string p1, "template_content"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/chat/RequestChatUserHelper;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/narvii/chat/RequestChatUserHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    new-instance p3, Lcom/narvii/flag/resolve/FlagModeHelper$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {p3, p0}, Lcom/narvii/flag/resolve/FlagModeHelper$1;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p5, p6, p1, p3}, Lcom/narvii/chat/RequestChatUserHelper;->request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    if-nez p3, :cond_2

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const/16 p0, 0x12e

    .line 38
    .line 39
    if-ne p2, p0, :cond_2

    .line 40
    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public static launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVActivity;)V

    return-void
.end method

.method public static launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVActivity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/app/NVActivity;",
            ")V"
        }
    .end annotation

    .line 2
    iget v0, p1, Lcom/narvii/flag/model/Flag;->objectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-class v0, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-class v0, Lcom/narvii/flag/resolve/CommentResolveFragment;

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    const-class v0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const-class v0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;

    goto :goto_0

    :cond_4
    const/16 v2, 0x6d

    if-ne v0, v2, :cond_5

    const-class v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;

    goto :goto_0

    :cond_5
    const/16 v2, 0xc

    if-ne v0, v2, :cond_6

    const-class v0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;

    goto :goto_0

    :cond_6
    const/16 v2, 0x17

    if-ne v0, v2, :cond_7

    .line 3
    iget v0, p1, Lcom/narvii/flag/model/Flag;->parentType:I

    if-ne v0, v1, :cond_7

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchQuizQuestion(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v0, "Source"

    const-string v3, "Flag Center"

    .line 6
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "showListEntry"

    .line 7
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 8
    invoke-static/range {v2 .. v7}, Lcom/narvii/flag/resolve/FlagModeHelper;->generateFlagIntent(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    :try_start_0
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 10
    instance-of p1, p0, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_8

    .line 11
    check-cast p0, Lcom/narvii/app/NVFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f01005a

    const p2, 0x7f01005f

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    if-eqz p6, :cond_9

    .line 12
    invoke-virtual {p6}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_9
    return-void
.end method

.method private static launchQuizQuestion(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-class v2, Lcom/narvii/model/api/BlogResponse;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/flag/resolve/FlagModeHelper$2;

    .line 17
    move-object v3, v1

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    move v6, p3

    .line 21
    move-object v7, p4

    .line 22
    move-object v8, p5

    .line 23
    move-object v9, p0

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v3 .. v9}, Lcom/narvii/flag/resolve/FlagModeHelper$2;-><init>(Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 32
    .line 33
    const-string p2, "api"

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    check-cast p0, Lcom/narvii/util/http/ApiService;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string p4, "/blog/"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 76
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static saveInstanceStats(Lcom/narvii/app/NVContext;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    check-cast p0, Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    const-string v0, "flag_item"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "flag_items"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    const-string v1, "flag_size"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1, v0}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    const-string v0, "flag_filter"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    const-string v0, "stoptime"

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static showNotAvailableDialog(Landroid/content/Context;I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f120d7e

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x104000a

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x4

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, p1, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 38
    return-void
.end method
