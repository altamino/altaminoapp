.class Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private createTabTitleText(II)Landroid/text/SpannableString;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    const/16 v2, 0x11

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-gtz p2, :cond_0

    .line 13
    .line 14
    new-instance p2, Landroid/text/SpannableString;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 36
    return-object p2

    .line 37
    .line 38
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v5, " "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    new-instance p2, Landroid/text/style/StyleSpan;

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 78
    .line 79
    new-instance p2, Landroid/text/style/StyleSpan;

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 86
    move-result v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    .line 90
    move-result v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 94
    .line 95
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    .line 96
    .line 97
    .line 98
    const v1, 0x3f4ccccd    # 0.8f

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 105
    move-result v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    .line 109
    move-result v1

    .line 110
    .line 111
    const/16 v2, 0x21

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 115
    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->y(Lcom/narvii/user/profile/UserProfileFragment;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/User;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v0, v0, Lcom/narvii/model/User;->role:I

    .line 25
    .line 26
    const/16 v2, 0xfd

    .line 27
    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    return v1

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/user/profile/UserProfileFragment;->SWITCH:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/user/profile/UserProfileFragment;->SWITCH:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter$CellType;->hashCode()I

    .line 6
    move-result p1

    .line 7
    int-to-long v0, p1

    .line 8
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d077f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0f5d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/RadioGroup;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result p3

    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    .line 24
    .line 25
    :goto_0
    const v2, 0x7f0a0f5c

    .line 26
    .line 27
    .line 28
    const v3, 0x7f0a0f5e

    .line 29
    .line 30
    .line 31
    const v4, 0x7f0a0f5f

    .line 32
    .line 33
    if-ge v1, p3, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    instance-of v6, v5, Lcom/narvii/widget/SwitchButton;

    .line 40
    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    check-cast v5, Lcom/narvii/widget/SwitchButton;

    .line 44
    .line 45
    iget-boolean v6, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6}, Lcom/narvii/widget/SwitchButton;->setDarkTheme(Z)V

    .line 49
    .line 50
    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 51
    .line 52
    iget-object v6, v6, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 63
    .line 64
    iget-object v6, v6, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    check-cast v6, Lcom/narvii/model/User;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 74
    move-result v7

    .line 75
    .line 76
    if-ne v7, v3, :cond_0

    .line 77
    .line 78
    .line 79
    const v2, 0x7f12124a

    .line 80
    .line 81
    iget v3, v6, Lcom/narvii/model/User;->postsCount:I

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v2, v3}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->createTabTitleText(II)Landroid/text/SpannableString;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 93
    move-result v3

    .line 94
    .line 95
    if-ne v3, v2, :cond_1

    .line 96
    .line 97
    .line 98
    const v2, 0x7f121249

    .line 99
    .line 100
    iget v3, v6, Lcom/narvii/model/User;->commentsCount:I

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v2, v3}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->createTabTitleText(II)Landroid/text/SpannableString;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    goto :goto_1

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 112
    move-result v2

    .line 113
    .line 114
    if-ne v2, v4, :cond_2

    .line 115
    .line 116
    .line 117
    const v2, 0x7f12124b

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v2, v0}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->createTabTitleText(II)Landroid/text/SpannableString;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_3
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 133
    move-result p3

    .line 134
    .line 135
    if-nez p3, :cond_4

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p3

    .line 140
    .line 141
    const/16 v1, 0x8

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    :cond_4
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 147
    .line 148
    iget-object p3, p3, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Lcom/narvii/list/ProxyAdapter;->getAdapter()Landroid/widget/ListAdapter;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 155
    .line 156
    iget-object v5, v1, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    .line 157
    .line 158
    if-ne p3, v5, :cond_5

    .line 159
    move v2, v3

    .line 160
    goto :goto_2

    .line 161
    .line 162
    :cond_5
    iget-object p3, v1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Lcom/narvii/list/ProxyAdapter;->getAdapter()Landroid/widget/ListAdapter;

    .line 166
    move-result-object p3

    .line 167
    .line 168
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 169
    .line 170
    iget-object v3, v1, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    .line 171
    .line 172
    if-ne p3, v3, :cond_6

    .line 173
    goto :goto_2

    .line 174
    .line 175
    :cond_6
    iget-object p3, v1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3}, Lcom/narvii/list/ProxyAdapter;->getAdapter()Landroid/widget/ListAdapter;

    .line 179
    move-result-object p3

    .line 180
    .line 181
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    .line 184
    .line 185
    if-ne p3, v1, :cond_7

    .line 186
    move v2, v4

    .line 187
    goto :goto_2

    .line 188
    :cond_7
    const/4 v2, -0x1

    .line 189
    .line 190
    :goto_2
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 191
    const/4 v1, 0x1

    .line 192
    .line 193
    iput-boolean v1, p3, Lcom/narvii/user/profile/UserProfileFragment;->disableSwitchListener:Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 197
    .line 198
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 199
    .line 200
    .line 201
    invoke-static {p3}, Lcom/narvii/user/profile/UserProfileFragment;->A(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 202
    move-result-object p3

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 206
    .line 207
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 208
    .line 209
    iput-boolean v0, p2, Lcom/narvii/user/profile/UserProfileFragment;->disableSwitchListener:Z

    .line 210
    .line 211
    .line 212
    const p2, 0x7f0a07fd

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    move-result-object p2

    .line 217
    .line 218
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 219
    .line 220
    if-eqz p3, :cond_8

    .line 221
    .line 222
    .line 223
    const p3, 0x7f060171

    .line 224
    goto :goto_3

    .line 225
    .line 226
    .line 227
    :cond_8
    const p3, 0x7f060170

    .line 228
    .line 229
    .line 230
    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    return-object p1
.end method
