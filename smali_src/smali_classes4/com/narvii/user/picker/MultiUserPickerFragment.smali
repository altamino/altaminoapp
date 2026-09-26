.class public Lcom/narvii/user/picker/MultiUserPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;,
        Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_MEMBER_COUNT:I = 0x64


# instance fields
.field protected adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private maxMember:I

.field private searchBar:Lcom/narvii/widget/SearchBar;

.field private searchIcon:Landroid/view/View;

.field showSearchBar:Z

.field spamProtection:Z

.field private thumbContainer:Landroid/widget/LinearLayout;

.field thumbContainerScroller:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    return-void
.end method

.method private clearSearchEdit()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SearchBar;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/user/picker/MultiUserPickerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->maxMember:I

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/user/picker/MultiUserPickerFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method private updateThumbViews()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-lez v0, :cond_5

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 43
    .line 44
    if-ge v1, v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/model/User;

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_1
    new-instance v2, Lcom/narvii/widget/ThumbImageView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v3}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    const/high16 v4, 0x40000000    # 2.0f

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 77
    move-result v3

    .line 78
    float-to-int v3, v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    const/high16 v5, 0x41700000    # 15.0f

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 88
    move-result v4

    .line 89
    float-to-int v4, v4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    const/high16 v5, 0x41f00000    # 30.0f

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 102
    move-result v3

    .line 103
    float-to-int v3, v3

    .line 104
    .line 105
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .line 107
    .line 108
    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    const v6, 0x7f080a0e

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    iput-object v3, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    .line 128
    const v6, 0x7f0604a1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 132
    move-result v3

    .line 133
    .line 134
    iput v3, v2, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 142
    move-result v6

    .line 143
    .line 144
    if-eqz v6, :cond_2

    .line 145
    .line 146
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_2
    const/high16 v6, 0x3f000000    # 0.5f

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 153
    move-result v3

    .line 154
    .line 155
    iput v3, v2, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 163
    move-result v6

    .line 164
    .line 165
    if-eqz v6, :cond_3

    .line 166
    .line 167
    .line 168
    const v6, 0x7f060058

    .line 169
    goto :goto_2

    .line 170
    .line 171
    .line 172
    :cond_3
    const v6, 0x7f060059

    .line 173
    .line 174
    .line 175
    :goto_2
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 176
    move-result v3

    .line 177
    .line 178
    iput v3, v2, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 179
    .line 180
    iput v4, v2, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 184
    move-result-object v3

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    const v3, 0x7f0a02b3

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 194
    .line 195
    new-instance v0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, p0, v2}, Lcom/narvii/user/picker/MultiUserPickerFragment$2;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/widget/ThumbImageView;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .line 208
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_4
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchIcon:Landroid/view/View;

    .line 213
    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    const/16 v1, 0x8

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    goto :goto_4

    .line 221
    .line 222
    :cond_5
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchIcon:Landroid/view/View;

    .line 223
    .line 224
    if-eqz v0, :cond_6

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_6
    :goto_4
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/widget/SearchBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchIcon:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/user/picker/MultiUserPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->updateThumbViews()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 13
    .line 14
    const-class v0, Lcom/narvii/model/User;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "users"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, v1, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 32
    .line 33
    const-string p1, "showSearchBar"

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar:Z

    .line 41
    .line 42
    const-string p1, "maxMember"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 46
    move-result p1

    .line 47
    .line 48
    iput p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->maxMember:I

    .line 49
    .line 50
    :cond_0
    const-string p1, "exists"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iput-object p1, v1, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    const-string/jumbo p1, "userids"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 72
    .line 73
    const-class v1, Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    iput-object p1, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    .line 80
    .line 81
    new-instance p1, Lcom/narvii/user/picker/MultiUserPickerFragment$1;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p0, p0}, Lcom/narvii/user/picker/MultiUserPickerFragment$1;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 85
    .line 86
    new-instance v0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 101
    const/4 v1, 0x1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 105
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfirmPick(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "users"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const/4 v0, -0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatSpamProtectionEnabled()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->spamProtection:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    const p1, 0x7f12123a

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    const p1, 0x7f12030e

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 29
    const/4 p1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f12052e

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->onConfirmPick(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a04eb

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    instance-of p2, p1, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    const p2, 0x7f120d75

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar:Z

    return v0
.end method

.method public target()Ljava/lang/String;
    .locals 1

    const-string v0, "member"

    return-object v0
.end method

.method protected updateViews()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    move v3, v1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 45
    move-result v3

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    const/4 v3, 0x4

    .line 56
    goto :goto_2

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    :cond_3
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    goto :goto_3

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_5
    return-void
.end method
