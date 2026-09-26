.class Lcom/narvii/media/PhoneImagePickerFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneImagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneImagePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private greyItem(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/narvii/media/PhoneImagePickerFragment;->p(Lcom/narvii/media/PhoneImagePickerFragment;)I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v0, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->p(Lcom/narvii/media/PhoneImagePickerFragment;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-gtz v0, :cond_2

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->n(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->s(Lcom/narvii/media/PhoneImagePickerFragment;)I

    .line 39
    move-result v0

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isImage()Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->t(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->s(Lcom/narvii/media/PhoneImagePickerFragment;)I

    .line 61
    move-result p1

    .line 62
    .line 63
    if-eq p1, v1, :cond_3

    .line 64
    :cond_2
    const/4 p1, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p1, 0x0

    .line 67
    :goto_0
    return p1
.end method

.method private hideSelect(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->C(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private openDetail(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->C(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v1, v0

    .line 43
    .line 44
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v3, "ndc://fragment/"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-class v3, Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    const-string v3, "android.intent.action.VIEW"

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result v2

    .line 83
    .line 84
    const/16 v3, 0x3e8

    .line 85
    .line 86
    if-le v2, v3, :cond_3

    .line 87
    .line 88
    sget-object v2, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_3
    const-string v2, "list"

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    :goto_1
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Lcom/narvii/media/PhoneImagePickerFragment;->r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    .line 107
    move-result-object v3

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Lcom/narvii/media/PhoneImagePickerFragment;->v(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    const-string v3, "selected"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    const-string v2, "class"

    .line 123
    .line 124
    const-class v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 130
    .line 131
    const-string v3, "single"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 135
    move-result v2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 141
    .line 142
    const-string v3, "maximum"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 146
    move-result v2

    .line 147
    .line 148
    const-string v3, "maxCount"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    .line 153
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 154
    .line 155
    const-string v3, "maxStr"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    const-string v2, "position"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 168
    move-result p1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 174
    .line 175
    const-string v1, "minGifWidth"

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 179
    move-result p1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    .line 184
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 185
    .line 186
    const-string v1, "minGifHeight"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 190
    move-result p1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    .line 195
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 196
    .line 197
    const-string v1, "minWidth"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 201
    move-result p1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 207
    .line 208
    const-string v1, "minHeight"

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 212
    move-result p1

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    .line 217
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 218
    .line 219
    const-string v1, "showHQBar"

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 223
    move-result p1

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    .line 228
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 229
    .line 230
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 231
    .line 232
    if-eqz p1, :cond_4

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 236
    move-result p1

    .line 237
    goto :goto_2

    .line 238
    :cond_4
    const/4 p1, 0x0

    .line 239
    .line 240
    :goto_2
    const-string v1, "hqChecked"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    .line 245
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 246
    .line 247
    const/16 v1, 0x58

    .line 248
    .line 249
    .line 250
    invoke-static {p1, v0, v1}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 251
    return-void
.end method

.method private openVideoEditor(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const-string v1, "arm"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    sget-boolean v1, Lcom/narvii/media/PhoneImagePickerFragment;->isSupportMeishe:Z

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    sget-boolean v1, Lcom/narvii/media/PhoneImagePickerFragment;->ffmpegInstalled:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->o(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v0, "membership"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 51
    .line 52
    sget v1, Lcom/narvii/lib/R$string;->chat_video_membership_hint:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 63
    return-void

    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    const-string v1, "dir"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Ljava/io/File;

    .line 86
    .line 87
    const-string v1, "fragmentRegister"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, Lcom/narvii/app/FragmentRegister;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    const-string v2, "mediaEditor"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    new-instance v2, Landroid/content/Intent;

    .line 106
    .line 107
    const-string v3, "android.intent.action.VIEW"

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    .line 112
    iget-object v1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 113
    .line 114
    const-string v3, "inputFile"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    const-string v1, "outputFileDir"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    const-string v0, "account"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 135
    .line 136
    const-string v1, "isVideoTrimming"

    .line 137
    const/4 v3, 0x1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    .line 142
    const-string v1, "realOutput"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    .line 147
    const-string v1, "maxOutputLength"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrivilegeOfMaxVideoDuration()I

    .line 151
    move-result v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    .line 156
    const-string v0, "entryInfo"

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    .line 165
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 166
    .line 167
    const/16 v0, 0x63

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v2, v0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 171
    :cond_2
    return-void

    .line 172
    .line 173
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    sget v1, Lcom/narvii/lib/R$string;->device_not_support:I

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 186
    const/4 v1, 0x0

    .line 187
    const/4 v2, 0x0

    .line 188
    .line 189
    .line 190
    const v3, 0x104000a

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v3, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 197
    .line 198
    if-nez v0, :cond_4

    .line 199
    .line 200
    const-string v0, "no cpu detected"

    .line 201
    .line 202
    :cond_4
    const-string p1, "VideoPicker"

    .line 203
    .line 204
    .line 205
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
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

.method private selectEntry(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 3
    .line 4
    const-string v1, "maximum"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    const-string v1, "single"

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lcom/narvii/media/PhoneImagePickerFragment;->r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 32
    .line 33
    new-instance v4, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Lcom/narvii/media/PhoneImagePickerFragment;->u(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)V

    .line 40
    .line 41
    :cond_1
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 42
    .line 43
    const-string v4, "checkUnsupportedImageType"

    .line 44
    const/4 v5, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v4}, Lcom/narvii/media/PhoneImagePickerFragment;->r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-nez v4, :cond_e

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isImage()Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_b

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    iget-object v3, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lcom/narvii/util/Utils;->getImageType(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    if-nez v3, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    sget v0, Lcom/narvii/lib/R$string;->invalid_input_image:I

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 90
    return-void

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    .line 94
    move-result v3

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    const-string v3, "config"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 105
    .line 106
    const-string v4, "maxUploadImagePayloadLength"

    .line 107
    .line 108
    const/high16 v6, 0x600000

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4, v6}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    .line 112
    move-result v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-static {v4}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    .line 120
    move-result-object v4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 124
    move-result-wide v6

    .line 125
    int-to-long v3, v3

    .line 126
    .line 127
    cmp-long v3, v6, v3

    .line 128
    .line 129
    if-lez v3, :cond_3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_file_too_large:I

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v0, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 143
    return-void

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    .line 147
    move-result v3

    .line 148
    .line 149
    if-eqz v3, :cond_4

    .line 150
    .line 151
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 152
    .line 153
    const-string v4, "minGifWidth"

    .line 154
    .line 155
    .line 156
    :goto_0
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 157
    move-result v3

    .line 158
    goto :goto_1

    .line 159
    .line 160
    :cond_4
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 161
    .line 162
    const-string v4, "minWidth"

    .line 163
    goto :goto_0

    .line 164
    .line 165
    .line 166
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    .line 167
    move-result v4

    .line 168
    .line 169
    if-eqz v4, :cond_5

    .line 170
    .line 171
    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 172
    .line 173
    const-string v6, "minGifHeight"

    .line 174
    .line 175
    .line 176
    :goto_2
    invoke-virtual {v4, v6}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 177
    move-result v4

    .line 178
    goto :goto_3

    .line 179
    .line 180
    :cond_5
    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 181
    .line 182
    const-string v6, "minHeight"

    .line 183
    goto :goto_2

    .line 184
    .line 185
    :goto_3
    if-gtz v3, :cond_6

    .line 186
    .line 187
    if-lez v4, :cond_b

    .line 188
    .line 189
    :cond_6
    iget v6, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 190
    .line 191
    iget v7, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    .line 192
    .line 193
    if-eqz v6, :cond_7

    .line 194
    .line 195
    if-nez v7, :cond_8

    .line 196
    .line 197
    :cond_7
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    .line 198
    .line 199
    .line 200
    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 201
    .line 202
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 206
    move-result-object v9

    .line 207
    .line 208
    .line 209
    invoke-static {v9}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    .line 210
    move-result-object v9

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    move-result-object v9

    .line 215
    .line 216
    .line 217
    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 218
    .line 219
    iget v6, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 220
    .line 221
    iget v7, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    goto :goto_4

    .line 223
    :catchall_0
    move-exception v8

    .line 224
    .line 225
    .line 226
    invoke-static {v8}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    :cond_8
    :goto_4
    if-lez v6, :cond_9

    .line 229
    .line 230
    if-lez v3, :cond_9

    .line 231
    .line 232
    if-lt v6, v3, :cond_a

    .line 233
    .line 234
    :cond_9
    if-lez v7, :cond_b

    .line 235
    .line 236
    if-lez v4, :cond_b

    .line 237
    .line 238
    if-ge v7, v4, :cond_b

    .line 239
    .line 240
    .line 241
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_image_too_small:I

    .line 245
    .line 246
    .line 247
    invoke-static {p1, v0, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 248
    move-result-object p1

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 252
    return-void

    .line 253
    .line 254
    :cond_b
    if-lez v0, :cond_d

    .line 255
    .line 256
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 257
    .line 258
    .line 259
    invoke-static {v3}, Lcom/narvii/media/PhoneImagePickerFragment;->r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    .line 260
    move-result-object v3

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 264
    move-result v3

    .line 265
    .line 266
    if-lt v3, v0, :cond_d

    .line 267
    .line 268
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 269
    .line 270
    const-string v4, "maxStr"

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 275
    .line 276
    .line 277
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    move-result v4

    .line 279
    .line 280
    if-eqz v4, :cond_c

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 284
    move-result-object v3

    .line 285
    .line 286
    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 287
    .line 288
    sget v6, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    .line 289
    .line 290
    new-array v2, v2, [Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    aput-object v0, v2, v5

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v6, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    move-result-object v0

    .line 301
    .line 302
    .line 303
    invoke-static {v3, v0, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 304
    move-result-object v0

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 308
    goto :goto_5

    .line 309
    .line 310
    .line 311
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 312
    move-result-object v0

    .line 313
    .line 314
    .line 315
    invoke-static {v0, v3, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 316
    move-result-object v0

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 320
    goto :goto_5

    .line 321
    .line 322
    :cond_d
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 323
    .line 324
    .line 325
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    .line 326
    move-result-object v0

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 335
    move-result v0

    .line 336
    .line 337
    if-nez v0, :cond_10

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 341
    move-result p1

    .line 342
    .line 343
    if-eqz p1, :cond_f

    .line 344
    .line 345
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 346
    .line 347
    .line 348
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->C(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 349
    move-result p1

    .line 350
    .line 351
    if-nez p1, :cond_f

    .line 352
    goto :goto_6

    .line 353
    .line 354
    :cond_f
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 355
    .line 356
    .line 357
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->H(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 361
    .line 362
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 363
    .line 364
    .line 365
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->I(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 366
    goto :goto_7

    .line 367
    .line 368
    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 369
    .line 370
    .line 371
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->D(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 372
    :goto_7
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-wide v1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 27
    move-result p1

    .line 28
    int-to-long v0, p1

    .line 29
    return-wide v0

    .line 30
    :cond_1
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 7
    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$layout;->media_image_grid:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 23
    .line 24
    iget v1, v1, Lcom/narvii/media/PhoneImagePickerFragment;->width:I

    .line 25
    .line 26
    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 33
    .line 34
    iget v1, v1, Lcom/narvii/media/PhoneImagePickerFragment;->width:I

    .line 35
    .line 36
    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    sget p3, Lcom/narvii/lib/R$id;->image:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p3, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->F(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 50
    .line 51
    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p3}, Lcom/narvii/media/PhoneImagePickerFragment;->r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    .line 55
    move-result-object p3

    .line 56
    const/4 v1, 0x1

    .line 57
    const/4 v8, 0x0

    .line 58
    .line 59
    if-eqz p3, :cond_0

    .line 60
    .line 61
    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Lcom/narvii/media/PhoneImagePickerFragment;->r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result p3

    .line 70
    .line 71
    if-eqz p3, :cond_0

    .line 72
    move p3, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move p3, v8

    .line 75
    .line 76
    :goto_0
    sget v2, Lcom/narvii/lib/R$id;->select:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v2

    .line 81
    move-object v9, v2

    .line 82
    .line 83
    check-cast v9, Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz p3, :cond_1

    .line 86
    .line 87
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_1
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v9, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    .line 95
    new-instance p3, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;

    .line 96
    move-object v2, p3

    .line 97
    move-object v3, p0

    .line 98
    move v4, p1

    .line 99
    move-object v5, v0

    .line 100
    move-object v6, p2

    .line 101
    move-object v7, v9

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v2 .. v7}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;-><init>(Lcom/narvii/media/PhoneImagePickerFragment$Adapter;ILcom/narvii/media/PhoneImagePickerFragment$Entry;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->hideSelect(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    .line 111
    move-result p1

    .line 112
    xor-int/2addr p1, v1

    .line 113
    .line 114
    .line 115
    invoke-static {v9, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 116
    .line 117
    sget p1, Lcom/narvii/lib/R$id;->membership_label:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    const-string p3, "membership"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object p3

    .line 128
    .line 129
    check-cast p3, Lcom/narvii/wallet/MembershipService;

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->hideSelect(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    .line 133
    move-result v2

    .line 134
    .line 135
    if-eqz v2, :cond_2

    .line 136
    .line 137
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 138
    .line 139
    .line 140
    invoke-static {v2}, Lcom/narvii/media/PhoneImagePickerFragment;->o(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 141
    move-result v2

    .line 142
    .line 143
    if-eqz v2, :cond_2

    .line 144
    .line 145
    if-eqz p3, :cond_2

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 149
    move-result p3

    .line 150
    .line 151
    if-nez p3, :cond_2

    .line 152
    goto :goto_2

    .line 153
    :cond_2
    move v1, v8

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 157
    .line 158
    sget p1, Lcom/narvii/lib/R$id;->media_picker_label:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    check-cast p1, Landroid/widget/ImageView;

    .line 165
    .line 166
    sget p3, Lcom/narvii/lib/R$id;->media_picker_video_time:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object p3

    .line 171
    .line 172
    check-cast p3, Landroid/widget/TextView;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 176
    move-result v1

    .line 177
    .line 178
    if-eqz v1, :cond_3

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    .line 183
    iget p1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 184
    int-to-long v1, p1

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v2}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 195
    goto :goto_3

    .line 196
    .line 197
    :cond_3
    const/16 v1, 0x8

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    .line 205
    :goto_3
    sget p1, Lcom/narvii/lib/R$id;->grey_mask:I

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->greyItem(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    .line 209
    move-result p3

    .line 210
    .line 211
    .line 212
    invoke-static {p2, p1, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 213
    return-object p2

    .line 214
    :cond_4
    const/4 p1, 0x0

    .line 215
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->greyItem(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 17
    move-result p1

    .line 18
    const/4 p4, 0x0

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->n(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isImage()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->t(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    sget p3, Lcom/narvii/lib/R$string;->can_not_select_image_and_video_together:I

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p3, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->p(Lcom/narvii/media/PhoneImagePickerFragment;)I

    .line 62
    move-result p1

    .line 63
    .line 64
    div-int/lit16 p1, p1, 0x3e8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    if-ne p1, p2, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 73
    .line 74
    sget p5, Lcom/narvii/lib/R$string;->video_duration_less_than_one_second:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_3
    iget-object p5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 82
    .line 83
    sget v0, Lcom/narvii/lib/R$string;->video_duration_less_than_seconds:I

    .line 84
    .line 85
    new-array v1, p2, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    aput-object p1, v1, p4

    .line 92
    .line 93
    .line 94
    invoke-virtual {p5, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-static {p3, p1, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 103
    :goto_1
    return p2

    .line 104
    .line 105
    :cond_4
    if-eqz p5, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 109
    move-result p1

    .line 110
    .line 111
    sget p4, Lcom/narvii/lib/R$id;->select:I

    .line 112
    .line 113
    if-ne p1, p4, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->selectEntry(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_5
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->z(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 123
    move-result p1

    .line 124
    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 129
    move-result p1

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->openVideoEditor(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 135
    goto :goto_2

    .line 136
    .line 137
    :cond_6
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->C(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 141
    move-result p1

    .line 142
    .line 143
    if-nez p1, :cond_7

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    .line 147
    move-result p1

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->selectEntry(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 153
    goto :goto_2

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->openDetail(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 157
    :goto_2
    return p2

    .line 158
    .line 159
    .line 160
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 161
    move-result p1

    .line 162
    return p1
.end method
