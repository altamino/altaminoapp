.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-class v0, Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->t(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "threadId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "message"

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 38
    return-void

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 47
    .line 48
    const/16 v1, 0x64

    .line 49
    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/model/Media;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 60
    .line 61
    iget v1, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 62
    .line 63
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 64
    .line 65
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    new-instance v0, Landroid/content/Intent;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    const-class v3, Lcom/narvii/media/MediaGalleryActivity;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .line 90
    const-string v2, "list"

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const/4 v1, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 102
    move-result p1

    .line 103
    const/4 v1, 0x1

    .line 104
    .line 105
    if-nez p1, :cond_1

    .line 106
    .line 107
    const-string p1, "hideShareBar"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    .line 112
    :cond_1
    const-string p1, "showCheckHD"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 118
    const/4 v1, 0x3

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v0, v1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 122
    goto :goto_0

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 130
    move-result v0

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 146
    goto :goto_0

    .line 147
    .line 148
    :cond_3
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 154
    move-result v0

    .line 155
    .line 156
    const/16 v1, 0x5a

    .line 157
    .line 158
    if-le v0, v1, :cond_4

    .line 159
    .line 160
    new-instance v0, Lcom/narvii/chat/ChatDetailDialog;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v1}, Lcom/narvii/chat/ChatDetailDialog;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatDetailDialog;->setChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 176
    :cond_4
    :goto_0
    return-void
.end method
