.class public final Lcom/narvii/user/profile/BioBriefView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final arrowBtn:Lcom/narvii/widget/TintButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bioContainer:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bioTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasBioContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/profile/BioBriefView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/user/profile/BioBriefView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0073

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a02eb

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->arrowBtn:Lcom/narvii/widget/TintButton;

    const p1, 0x7f0a03a3

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    const p1, 0x7f0a01cf

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioTV:Landroid/widget/TextView;

    const p1, 0x7f0a039f

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final hasBioContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/user/profile/BioBriefView;->hasBioContent:Z

    return v0
.end method

.method public final setBio(Lcom/narvii/model/User;ZZLcom/narvii/user/profile/BioBriefStyle;)V
    .locals 7
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/user/profile/BioBriefStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "user"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "style"

    .line 10
    .line 11
    .line 12
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-interface {p4, v0, p2, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setEmptyTVStyle(Landroid/widget/TextView;ZZ)V

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/user/profile/BioBriefView;->bioTV:Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    invoke-interface {p4, p2, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setBioTVStyle(Landroid/widget/TextView;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 30
    move-result p2

    .line 31
    .line 32
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    const/16 v2, 0x8

    .line 43
    const/4 v3, 0x0

    .line 44
    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioContainer:Landroid/view/ViewGroup;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    iput-boolean v3, p0, Lcom/narvii/user/profile/BioBriefView;->hasBioContent:Z

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_0
    iget-object v4, p0, Lcom/narvii/user/profile/BioBriefView;->emptyTV:Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    iget-object v4, p0, Lcom/narvii/user/profile/BioBriefView;->bioContainer:Landroid/view/ViewGroup;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const/4 v4, 0x1

    .line 73
    .line 74
    iput-boolean v4, p0, Lcom/narvii/user/profile/BioBriefView;->hasBioContent:Z

    .line 75
    .line 76
    .line 77
    const v5, 0x7f0a06fb

    .line 78
    .line 79
    .line 80
    const v6, 0x7f0a06ff

    .line 81
    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 97
    .line 98
    check-cast v5, Landroid/view/ViewGroup;

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v5

    .line 111
    .line 112
    .line 113
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 114
    .line 115
    check-cast v5, Landroid/view/ViewGroup;

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 119
    .line 120
    if-nez p2, :cond_2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    goto :goto_2

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 135
    move-result p2

    .line 136
    .line 137
    if-eqz v1, :cond_3

    .line 138
    goto :goto_1

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 142
    move-result p2

    .line 143
    .line 144
    :goto_1
    if-ge v3, p2, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    check-cast v1, Lcom/narvii/model/Media;

    .line 155
    .line 156
    new-instance v2, Lcom/narvii/widget/NVImageView;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, v4}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p4, v2, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setSnippetImageStyle(Lcom/narvii/widget/NVImageView;Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    .line 174
    add-int/lit8 v3, v3, 0x1

    .line 175
    goto :goto_1

    .line 176
    .line 177
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->bioTV:Landroid/widget/TextView;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    :goto_3
    iget-object p1, p0, Lcom/narvii/user/profile/BioBriefView;->arrowBtn:Lcom/narvii/widget/TintButton;

    .line 183
    .line 184
    .line 185
    invoke-interface {p4, p1, p3}, Lcom/narvii/user/profile/BioBriefStyle;->setArrowBtnStyle(Lcom/narvii/widget/TintButton;Z)V

    .line 186
    return-void
.end method
