.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/category/HeadlineChannelEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method private getChannelStatus(Lcom/narvii/headlines/category/HeadLineChannel;)I
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->y(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 31
    move-result p1

    .line 32
    .line 33
    if-gez v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->J()I

    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    .line 40
    :cond_1
    if-le p1, v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->K()I

    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->J()I

    .line 49
    move-result p1

    .line 50
    :goto_0
    return p1

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->L()I

    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->w(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    instance-of p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    const/4 p1, 0x2

    .line 22
    return p1

    .line 23
    :cond_2
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 7
    .line 8
    .line 9
    const v2, 0x7f0a0847

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0d040f

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object p3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 29
    .line 30
    iget v0, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;->nameId:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_0
    instance-of v1, v0, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    if-eqz v1, :cond_c

    .line 44
    .line 45
    .line 46
    const v1, 0x7f0d040e

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    const p3, 0x7f0a06d5

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    if-eqz p3, :cond_3

    .line 65
    move-object v4, v0

    .line 66
    .line 67
    check-cast v4, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v5}, Lcom/narvii/headlines/category/HeadLineChannel;->getLocalEditIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v5}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_1
    iget-object v5, v4, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 90
    .line 91
    iget-object v4, v4, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    move-result v4

    .line 96
    .line 97
    if-eqz v4, :cond_2

    .line 98
    move v4, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move v4, v2

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    const v4, -0xb9babb

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    const p3, 0x7f0a0e9e

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object p3

    .line 117
    .line 118
    check-cast p3, Landroid/widget/TextView;

    .line 119
    .line 120
    if-eqz p3, :cond_5

    .line 121
    move-object v4, v0

    .line 122
    .line 123
    check-cast v4, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 127
    move-result-object v5

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v5}, Lcom/narvii/headlines/category/HeadLineChannel;->getLocalTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 131
    move-result-object v5

    .line 132
    .line 133
    if-eqz v5, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 137
    move-result-object v5

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5}, Lcom/narvii/headlines/category/HeadLineChannel;->getLocalTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_4
    iget-object v4, v4, Lcom/narvii/headlines/category/HeadLineChannel;->title:Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    :cond_5
    :goto_2
    check-cast v0, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, v0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->getChannelStatus(Lcom/narvii/headlines/category/HeadLineChannel;)I

    .line 156
    move-result p3

    .line 157
    .line 158
    .line 159
    const v4, 0x7f0a0465

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object v4

    .line 164
    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-nez v0, :cond_7

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->K()I

    .line 175
    move-result v0

    .line 176
    .line 177
    if-ne p3, v0, :cond_6

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move v1, v2

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    :cond_8
    const v0, 0x7f0a0089

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    check-cast v0, Landroid/widget/CheckBox;

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->L()I

    .line 200
    move-result v1

    .line 201
    .line 202
    if-ne p3, v1, :cond_9

    .line 203
    const/4 v1, 0x4

    .line 204
    goto :goto_4

    .line 205
    :cond_9
    move v1, v2

    .line 206
    .line 207
    .line 208
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->J()I

    .line 212
    move-result v1

    .line 213
    .line 214
    if-ne p3, v1, :cond_a

    .line 215
    const/4 v2, 0x1

    .line 216
    .line 217
    .line 218
    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 219
    .line 220
    new-instance p3, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;

    .line 221
    .line 222
    .line 223
    invoke-direct {p3, p0, p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    :cond_b
    return-object p2

    .line 228
    .line 229
    :cond_c
    instance-of p1, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    .line 230
    .line 231
    if-eqz p1, :cond_d

    .line 232
    .line 233
    .line 234
    const p1, 0x7f0d040d

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object p2

    .line 243
    .line 244
    check-cast p2, Landroid/widget/TextView;

    .line 245
    .line 246
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    iget-object p3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 252
    .line 253
    check-cast v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    .line 254
    .line 255
    iget v0, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;->nameId:I

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 259
    move-result-object p3

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    return-object p1

    .line 264
    :cond_d
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

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
    const v1, 0x7f0a0847

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-class v0, Lcom/narvii/suggest/interest/InterestPickerFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 20
    .line 21
    const/16 v2, 0x66

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    return-object v0
.end method
