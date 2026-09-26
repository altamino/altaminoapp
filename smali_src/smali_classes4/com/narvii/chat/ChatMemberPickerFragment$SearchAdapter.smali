.class public Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchAdapter"
.end annotation


# instance fields
.field private searchBar:Lcom/narvii/widget/SearchBar;

.field private searchIcon:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

.field private thumbContainer:Landroid/view/ViewGroup;

.field private thumbContainerScroller:Landroid/widget/HorizontalScrollView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->lambda$updateThumbViews$0()V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->updateThumbViews()V

    return-void
.end method

.method private synthetic lambda$updateThumbViews$0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x11

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const/16 v1, 0x42

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 17
    return-void
.end method

.method private updateThumbViews()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 9
    .line 10
    if-eqz v1, :cond_6

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/ChatMemberPickerFragment;->showSearchBar()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v1

    .line 43
    .line 44
    if-lez v1, :cond_5

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v1

    .line 55
    .line 56
    if-ge v0, v1, :cond_1

    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v0, v2

    .line 60
    .line 61
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v1

    .line 70
    .line 71
    if-ge v2, v1, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 74
    .line 75
    iget-object v3, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 76
    .line 77
    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    check-cast v3, Lcom/narvii/model/User;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/narvii/chat/ChatMemberPickerFragment;->isUserEnableInSearchBar(Lcom/narvii/model/User;)Z

    .line 87
    move-result v1

    .line 88
    .line 89
    if-nez v1, :cond_2

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_2
    new-instance v1, Lcom/narvii/widget/ThumbImageView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v3}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    const/high16 v4, 0x40000000    # 2.0f

    .line 106
    .line 107
    .line 108
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 109
    move-result v3

    .line 110
    float-to-int v3, v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    const/high16 v5, 0x41700000    # 15.0f

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 120
    move-result v4

    .line 121
    float-to-int v4, v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    const/high16 v5, 0x41f00000    # 30.0f

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 134
    move-result v3

    .line 135
    float-to-int v3, v3

    .line 136
    .line 137
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    .line 139
    .line 140
    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    iget-object v3, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 143
    .line 144
    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 145
    .line 146
    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    check-cast v3, Lcom/narvii/model/User;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v4}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 163
    .line 164
    iget-object v3, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    .line 167
    .line 168
    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    move-result-object v3

    .line 173
    .line 174
    .line 175
    const v4, 0x7f0a02b3

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 179
    .line 180
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 181
    .line 182
    const-string v4, "#cccccc"

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 186
    move-result v4

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    .line 194
    new-instance v3, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;

    .line 195
    .line 196
    .line 197
    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;Lcom/narvii/widget/ThumbImageView;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    iget-object v3, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_3
    if-eqz v0, :cond_4

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    .line 214
    .line 215
    new-instance v1, Lcom/narvii/chat/s;

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, p0}, Lcom/narvii/chat/s;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 222
    .line 223
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchIcon:Landroid/view/View;

    .line 224
    .line 225
    if-eqz v0, :cond_6

    .line 226
    .line 227
    const/16 v1, 0x8

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    goto :goto_2

    .line 232
    .line 233
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchIcon:Landroid/view/View;

    .line 234
    .line 235
    if-eqz v0, :cond_6

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d06b7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const p2, 0x7f0a0e76

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    const p2, 0x7f0a0c92

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    const p2, 0x7f0a0ca0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchIcon:Landroid/view/View;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 54
    .line 55
    .line 56
    const p2, 0x7f0a0cab

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    .line 65
    .line 66
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 67
    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    return-void
.end method
