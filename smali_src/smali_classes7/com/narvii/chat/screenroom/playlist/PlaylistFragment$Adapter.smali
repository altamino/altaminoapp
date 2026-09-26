.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/PlayListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    const-class p1, Lcom/narvii/model/PlayListItem;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->lambda$onItemClick$0(Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    const/4 p4, 0x0

    .line 12
    .line 13
    .line 14
    sparse-switch p1, :sswitch_data_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    .line 19
    :sswitch_0
    invoke-virtual {p2}, Lcom/narvii/model/PlayListItem;->isLocalMedia()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    instance-of p1, p1, Lcom/narvii/chat/ChatActivity;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/chat/ChatActivity;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p4}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->F(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V

    .line 49
    .line 50
    sget-object p1, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 51
    .line 52
    sget-object p2, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    iget-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    const/16 p2, 0x133

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->C(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->D(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->D(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    .line 106
    move-result-object p1

    .line 107
    const/4 p2, 0x2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :sswitch_1
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 118
    move-result-object p3

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    const p3, 0x7f121266

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setTitle(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/util/dialog/AlertDialog;->setEditTextBlackCursor()Landroid/widget/EditText;

    .line 131
    move-result-object p3

    .line 132
    .line 133
    iget-object p5, p2, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    new-instance p5, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    .line 139
    .line 140
    .line 141
    invoke-direct {p5, p0, p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Landroid/widget/EditText;)V

    .line 142
    .line 143
    const/high16 v0, 0x1040000

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0, p4, p5}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 147
    .line 148
    new-instance p4, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;

    .line 149
    .line 150
    .line 151
    invoke-direct {p4, p0, p2, p1, p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$2;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Lcom/narvii/model/PlayListItem;Lcom/narvii/util/dialog/AlertDialog;Landroid/widget/EditText;)V

    .line 152
    .line 153
    .line 154
    const p2, 0x7f120402

    .line 155
    const/4 p5, 0x4

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2, p5, p4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 159
    move-result-object p2

    .line 160
    .line 161
    check-cast p2, Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 165
    move-result-object p4

    .line 166
    .line 167
    .line 168
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    move-result p4

    .line 170
    .line 171
    if-nez p4, :cond_2

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->enableView(Landroid/widget/TextView;)V

    .line 175
    goto :goto_0

    .line 176
    .line 177
    .line 178
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->disableView(Landroid/widget/TextView;)V

    .line 179
    .line 180
    :goto_0
    new-instance p4, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;

    .line 181
    .line 182
    .line 183
    invoke-direct {p4, p0, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Landroid/widget/TextView;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 190
    goto :goto_1

    .line 191
    .line 192
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->w(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 200
    .line 201
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 202
    .line 203
    .line 204
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->H(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 207
    .line 208
    .line 209
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->K(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 210
    goto :goto_1

    .line 211
    .line 212
    :sswitch_3
    new-instance p1, Landroid/os/Bundle;

    .line 213
    .line 214
    .line 215
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 216
    .line 217
    const-string p2, "item"

    .line 218
    .line 219
    .line 220
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    move-result-object p3

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    const-string p2, "type"

    .line 227
    .line 228
    const-string p3, "cover"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 234
    .line 235
    .line 236
    invoke-static {p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->z(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/io/File;

    .line 237
    move-result-object p2

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 241
    .line 242
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 243
    .line 244
    .line 245
    invoke-static {p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->x(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/media/MediaPickerFragment;

    .line 246
    move-result-object p2

    .line 247
    .line 248
    iget-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 249
    .line 250
    .line 251
    invoke-static {p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->z(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/io/File;

    .line 252
    move-result-object p3

    .line 253
    const/4 p4, 0x6

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, p3, p1, p4}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    .line 257
    :cond_3
    :goto_1
    return-void

    .line 258
    nop

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    :sswitch_data_0
    .sparse-switch
        0x7f120218 -> :sswitch_3
        0x7f1203a0 -> :sswitch_2
        0x7f120fec -> :sswitch_1
        0x7f121267 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method disableView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f080181

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 26
    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f080182

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 26
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/PlayListItem;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_9

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0d06b0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    const p3, 0x7f0a0c80

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    check-cast p3, Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->C(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x3

    .line 37
    const/4 v3, 0x2

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    if-ne v1, p1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->C(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentStatus()I

    .line 50
    move-result v0

    .line 51
    .line 52
    if-ne v0, v3, :cond_0

    .line 53
    .line 54
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/b;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    const-string v5, "ic_screenroom_playlist_playing_gif.gif"

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1, v5}, Lpl/droidsonroids/gif/b;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :catch_0
    const v0, 0x7f0805f9

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->C(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentStatus()I

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eq v0, v2, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->C(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentStatus()I

    .line 102
    move-result v0

    .line 103
    .line 104
    if-ne v0, v4, :cond_4

    .line 105
    .line 106
    .line 107
    :cond_1
    const v0, 0x7f0805f7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_2
    iget-boolean v1, p1, Lcom/narvii/model/PlayListItem;->isDone:Z

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    .line 118
    const v0, 0x7f0805f8

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    goto :goto_0

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_0
    const p3, 0x7f0a0c81

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p3

    .line 133
    .line 134
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-static {v0, p3, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 142
    .line 143
    .line 144
    const p3, 0x7f0a0c83

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object p3

    .line 149
    .line 150
    check-cast p3, Landroid/widget/TextView;

    .line 151
    .line 152
    iget-object v0, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    const p3, 0x7f0a0c7f

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p3

    .line 163
    .line 164
    check-cast p3, Landroid/widget/TextView;

    .line 165
    .line 166
    .line 167
    const v0, 0x7f0a0c7e

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    check-cast v0, Landroid/widget/ImageView;

    .line 174
    .line 175
    iget v1, p1, Lcom/narvii/model/PlayListItem;->type:I

    .line 176
    const/4 v5, 0x0

    .line 177
    .line 178
    if-eq v1, v4, :cond_6

    .line 179
    .line 180
    if-ne v1, v2, :cond_5

    .line 181
    goto :goto_1

    .line 182
    .line 183
    :cond_5
    if-ne v1, v3, :cond_7

    .line 184
    .line 185
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 186
    .line 187
    new-array v2, v4, [Ljava/lang/Object;

    .line 188
    .line 189
    iget-object v3, p1, Lcom/narvii/model/PlayListItem;->author:Ljava/lang/String;

    .line 190
    .line 191
    aput-object v3, v2, v5

    .line 192
    .line 193
    .line 194
    const v3, 0x7f121054

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    const p3, 0x7f08058a

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    goto :goto_2

    .line 209
    .line 210
    .line 211
    :cond_6
    :goto_1
    const v1, 0x7f12104e

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    .line 216
    .line 217
    const p3, 0x7f0805fa

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    .line 222
    :cond_7
    :goto_2
    iget-wide v0, p1, Lcom/narvii/model/PlayListItem;->duration:D

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 228
    mul-double/2addr v0, v2

    .line 229
    double-to-int p1, v0

    .line 230
    int-to-long v0, p1

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    .line 237
    const p3, 0x7f0a0c7d

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object p3

    .line 242
    .line 243
    check-cast p3, Landroid/widget/TextView;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    const p1, 0x7f0a0c82

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    move-result-object p1

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    const p1, 0x7f0a0465

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    iget-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 269
    .line 270
    .line 271
    invoke-static {p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->J(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z

    .line 272
    move-result p3

    .line 273
    .line 274
    if-eqz p3, :cond_8

    .line 275
    goto :goto_3

    .line 276
    .line 277
    :cond_8
    const/16 v5, 0x8

    .line 278
    .line 279
    .line 280
    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 281
    return-object p2

    .line 282
    :cond_9
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->J(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    if-nez p3, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->M(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 21
    .line 22
    :cond_1
    instance-of v0, p3, Lcom/narvii/model/PlayListItem;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    move-object v0, p3

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/PlayListItem;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->v(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x0

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    .line 53
    const v3, 0x7f121267

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    const v3, 0x7f120fec

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    iget v3, v0, Lcom/narvii/model/PlayListItem;->type:I

    .line 79
    const/4 v5, 0x2

    .line 80
    .line 81
    if-eq v3, v5, :cond_3

    .line 82
    .line 83
    .line 84
    const v3, 0x7f120218

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    const/4 v3, 0x1

    .line 96
    .line 97
    .line 98
    const v4, 0x7f1203a0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 102
    .line 103
    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 112
    .line 113
    new-instance v3, Lcom/narvii/chat/screenroom/playlist/a;

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, p0, v2, v0, p3}, Lcom/narvii/chat/screenroom/playlist/a;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 123
    move-result p1

    .line 124
    return p1
.end method
