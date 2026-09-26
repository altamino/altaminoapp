.class public final Lcom/narvii/amino/databinding/UserDialogMainBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aminoId:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aminoStaffBadge:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final errorContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flag:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mood:Lcom/narvii/widget/MoodView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineStatusOval:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineUserProfile:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineUserStartChat:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final requestProgress:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final retry:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userTitleFlow:Lcom/narvii/user/title/UserTitleFlowView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Lcom/narvii/widget/MoodView;Lcom/narvii/widget/NicknameView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ProgressBar;Lcom/narvii/widget/FontAwesomeView;Landroid/widget/TextView;Lcom/narvii/user/title/UserTitleFlowView;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/MoodView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/user/title/UserTitleFlowView;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->rootView:Landroid/view/View;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->aminoId:Landroid/widget/TextView;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->aminoStaffBadge:Lcom/narvii/widget/ThumbImageView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->content:Landroid/widget/TextView;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->contentContainer:Landroid/widget/LinearLayout;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->errorContainer:Landroid/widget/LinearLayout;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->flag:Lcom/narvii/widget/TintButton;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->mood:Lcom/narvii/widget/MoodView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->onlineStatusOval:Landroid/view/View;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->onlineUserProfile:Landroid/widget/Button;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->onlineUserStartChat:Landroid/widget/Button;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->requestProgress:Landroid/widget/ProgressBar;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->retry:Lcom/narvii/widget/FontAwesomeView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->text:Landroid/widget/TextView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->userTitleFlow:Lcom/narvii/user/title/UserTitleFlowView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserDialogMainBinding;
    .locals 18
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0a0108

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    check-cast v2, Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a010b

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Lcom/narvii/widget/ThumbImageView;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a039d

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0a039f

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    check-cast v5, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a04fe

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    check-cast v6, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a05b8

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    check-cast v7, Lcom/narvii/widget/TintButton;

    .line 67
    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a0989

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 75
    move-result-object v8

    .line 76
    .line 77
    check-cast v8, Lcom/narvii/widget/MoodView;

    .line 78
    .line 79
    if-eqz v8, :cond_0

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a09f9

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 86
    move-result-object v9

    .line 87
    .line 88
    check-cast v9, Lcom/narvii/widget/NicknameView;

    .line 89
    .line 90
    if-eqz v9, :cond_0

    .line 91
    .line 92
    .line 93
    const v0, 0x7f0a0a5e

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 97
    move-result-object v10

    .line 98
    .line 99
    if-eqz v10, :cond_0

    .line 100
    .line 101
    .line 102
    const v0, 0x7f0a0a62

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 106
    move-result-object v11

    .line 107
    .line 108
    check-cast v11, Landroid/widget/Button;

    .line 109
    .line 110
    if-eqz v11, :cond_0

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0a0a63

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 117
    move-result-object v12

    .line 118
    .line 119
    check-cast v12, Landroid/widget/Button;

    .line 120
    .line 121
    if-eqz v12, :cond_0

    .line 122
    .line 123
    .line 124
    const v0, 0x7f0a0c24

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 128
    move-result-object v13

    .line 129
    .line 130
    check-cast v13, Landroid/widget/ProgressBar;

    .line 131
    .line 132
    if-eqz v13, :cond_0

    .line 133
    .line 134
    .line 135
    const v0, 0x7f0a0c38

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 139
    move-result-object v14

    .line 140
    .line 141
    check-cast v14, Lcom/narvii/widget/FontAwesomeView;

    .line 142
    .line 143
    if-eqz v14, :cond_0

    .line 144
    .line 145
    .line 146
    const v0, 0x7f0a0e51

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 150
    move-result-object v15

    .line 151
    .line 152
    check-cast v15, Landroid/widget/TextView;

    .line 153
    .line 154
    if-eqz v15, :cond_0

    .line 155
    .line 156
    .line 157
    const v0, 0x7f0a0f61

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 161
    move-result-object v16

    .line 162
    .line 163
    check-cast v16, Lcom/narvii/user/title/UserTitleFlowView;

    .line 164
    .line 165
    if-eqz v16, :cond_0

    .line 166
    .line 167
    new-instance v17, Lcom/narvii/amino/databinding/UserDialogMainBinding;

    .line 168
    .line 169
    move-object/from16 v0, v17

    .line 170
    .line 171
    move-object/from16 v1, p0

    .line 172
    .line 173
    .line 174
    invoke-direct/range {v0 .. v16}, Lcom/narvii/amino/databinding/UserDialogMainBinding;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Lcom/narvii/widget/MoodView;Lcom/narvii/widget/NicknameView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ProgressBar;Lcom/narvii/widget/FontAwesomeView;Landroid/widget/TextView;Lcom/narvii/user/title/UserTitleFlowView;)V

    .line 175
    return-object v17

    .line 176
    .line 177
    .line 178
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    new-instance v1, Ljava/lang/NullPointerException;

    .line 186
    .line 187
    const-string v2, "Missing required view with ID: "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 195
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/amino/databinding/UserDialogMainBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d0765

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/amino/databinding/UserDialogMainBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserDialogMainBinding;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string p1, "parent"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/databinding/UserDialogMainBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
