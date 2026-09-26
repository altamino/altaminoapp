.class public abstract Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;
    }
.end annotation


# static fields
.field private static final REQUEST_AUDIO:I = 0xfd08


# instance fields
.field private audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

.field private currentSelectItemView:Landroid/view/View;

.field private mainAdapter:Lcom/narvii/list/NVAdapter;

.field private musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

.field protected soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
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

.method private startDownload(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->music_download_progress:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/CircleProgressBar;

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$id;->music_download_download:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sget v2, Lcom/narvii/lib/R$id;->music_download_pick:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1, p0, p0}, Lcom/narvii/media/online/audio/AudioDownloader;->loadAudioFile(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Object;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected configItemView(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->track_thumbnail:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->thumbnailUrl:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 14
    .line 15
    sget v0, Lcom/narvii/lib/R$id;->track_name:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->title:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    sget v0, Lcom/narvii/lib/R$id;->track_artist:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->artist:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->artist:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x4

    .line 47
    const/4 v3, 0x0

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    move v1, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v1, v3

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    sget v0, Lcom/narvii/lib/R$id;->track_tags:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getTagStr()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v2, v3

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    sget v0, Lcom/narvii/lib/R$id;->track_duration:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getDurationInMs()J

    .line 93
    move-result-wide v1

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    sget v0, Lcom/narvii/lib/R$id;->music_seekbar:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Lcom/narvii/media/online/audio/MusicSliderView;

    .line 109
    .line 110
    sget v1, Lcom/narvii/lib/R$id;->playing_status:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    check-cast v1, Lcom/narvii/media/online/audio/MusicPlayStatusView;

    .line 117
    .line 118
    sget v2, Lcom/narvii/lib/R$id;->music_download_container:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->isCurrentPlayMusic(Lcom/narvii/media/online/audio/model/Sound;)Z

    .line 128
    move-result v4

    .line 129
    .line 130
    const/16 v5, 0x8

    .line 131
    .line 132
    if-eqz v4, :cond_5

    .line 133
    .line 134
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 135
    .line 136
    if-eqz v4, :cond_2

    .line 137
    .line 138
    iget-object v4, v4, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    const/4 v4, 0x0

    .line 141
    .line 142
    :goto_2
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->currentSelectItemView:Landroid/view/View;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0, v1}, Lcom/narvii/media/online/audio/MusicPlayer;->bindViews(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V

    .line 157
    .line 158
    sget p2, Lcom/narvii/lib/R$id;->music_download_progress:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    check-cast p2, Lcom/narvii/widget/CircleProgressBar;

    .line 165
    .line 166
    sget v0, Lcom/narvii/lib/R$id;->music_download_download:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    sget v1, Lcom/narvii/lib/R$id;->music_download_pick:I

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDownloadState(Lcom/narvii/media/online/audio/model/Sound;)I

    .line 182
    move-result p1

    .line 183
    const/4 v2, -0x2

    .line 184
    .line 185
    if-eq p1, v2, :cond_4

    .line 186
    const/4 v2, -0x1

    .line 187
    .line 188
    if-eq p1, v2, :cond_3

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, p1}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 201
    goto :goto_3

    .line 202
    .line 203
    .line 204
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    goto :goto_3

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    goto :goto_3

    .line 228
    .line 229
    .line 230
    :cond_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0, v1}, Lcom/narvii/media/online/audio/MusicPlayer;->clearViewBind(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :goto_3
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    return-object p1
.end method

.method protected abstract createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
.end method

.method protected dealClickEvent(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p3, :cond_1

    .line 4
    .line 5
    sget-object p3, Lcom/narvii/logging/ActSemantic;->playMusic:Lcom/narvii/logging/ActSemantic;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 9
    move-result-object p3

    .line 10
    .line 11
    const-string v1, "MusicList"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 19
    .line 20
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->play(Lcom/narvii/media/online/audio/model/Sound;)V

    .line 24
    .line 25
    iget-boolean p3, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDownloadState(Lcom/narvii/media/online/audio/model/Sound;)I

    .line 33
    move-result p3

    .line 34
    const/4 v1, -0x2

    .line 35
    .line 36
    if-ne p3, v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->startDownload(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 45
    return v0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 49
    move-result v1

    .line 50
    .line 51
    sget v2, Lcom/narvii/lib/R$id;->music_seekbar:I

    .line 52
    .line 53
    if-ne v1, v2, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->isPlaying()Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->pause()V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->resume()V

    .line 73
    :goto_0
    return v0

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 77
    move-result v1

    .line 78
    .line 79
    sget v2, Lcom/narvii/lib/R$id;->music_download_download:I

    .line 80
    .line 81
    if-ne v1, v2, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->startDownload(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 90
    move-result p2

    .line 91
    .line 92
    sget p3, Lcom/narvii/lib/R$id;->music_download_pick:I

    .line 93
    .line 94
    if-ne p2, p3, :cond_6

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMedia()Lcom/narvii/model/Media;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDwonloadedFile(Lcom/narvii/media/online/audio/model/Sound;)Ljava/io/File;

    .line 104
    move-result-object p3

    .line 105
    .line 106
    if-nez p2, :cond_5

    .line 107
    .line 108
    const-string p1, "OnlineAudioPicker sound media is null"

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 112
    return v0

    .line 113
    .line 114
    :cond_5
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->add(Lcom/narvii/media/online/audio/model/Sound;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    const-class v1, Lcom/narvii/model/Media;

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    check-cast p2, Lcom/narvii/model/Media;

    .line 130
    .line 131
    .line 132
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 133
    move-result-object p3

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 137
    move-result-object p3

    .line 138
    .line 139
    iput-object p3, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 140
    .line 141
    new-instance p3, Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 145
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    const-string p2, "mediaList"

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .line 163
    new-instance p2, Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    iget v1, p1, Lcom/narvii/media/online/audio/model/Sound;->type:I

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    const-string v1, "soundTypeList"

    .line 178
    .line 179
    .line 180
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    .line 186
    new-instance p2, Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    const-string p1, "soundDataList"

    .line 195
    .line 196
    .line 197
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    move-result-object p2

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    .line 203
    const-string p1, "category"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object p2

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/4 p1, -0x1

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 218
    :goto_1
    return v0

    .line 219
    :cond_6
    const/4 p1, 0x0

    .line 220
    return p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xe4e4df

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0xfd08

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 19
    :goto_0
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
    new-instance p1, Lcom/narvii/media/online/audio/MusicPlayer;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/media/online/audio/MusicPlayer;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 11
    .line 12
    const-string p1, "audioDownloader"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/media/online/audio/AudioDownloader;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->a(Lcom/narvii/app/NVContext;)Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    .line 27
    const/4 p1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateWifiActive()V

    .line 34
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$string;->search:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget p2, Lcom/narvii/lib/R$drawable;->ic_search_actionbar:I

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public onError(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Lcom/narvii/media/online/audio/model/Sound;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget p2, Lcom/narvii/lib/R$string;->download_audio_error:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 20
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$string;->search:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "ndc://fragment/"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-class v2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    const-string v2, "android.intent.action.VIEW"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .line 44
    .line 45
    const v1, 0xfd08

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0, v1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->pause()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 9
    return-void
.end method

.method public onPostExecute(Ljava/io/File;Lcom/narvii/media/online/audio/model/Sound;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->downloaded:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "MusicList"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "musicName"

    .line 15
    .line 16
    iget-object p2, p2, Lcom/narvii/media/online/audio/model/Sound;->title:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 29
    return-void
.end method

.method public onProgressUpdate(Lcom/narvii/media/online/audio/model/Sound;II)V
    .locals 1
    .param p1    # Lcom/narvii/media/online/audio/model/Sound;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->isCurrentPlayMusic(Lcom/narvii/media/online/audio/model/Sound;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->currentSelectItemView:Landroid/view/View;

    .line 11
    .line 12
    sget v0, Lcom/narvii/lib/R$id;->music_download_progress:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/widget/CircleProgressBar;

    .line 19
    .line 20
    mul-int/lit8 p2, p2, 0x64

    .line 21
    div-int/2addr p2, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->stopPlayMusic()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 7
    return-void
.end method

.method public stopPlayMusic()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->stop()V

    .line 6
    return-void
.end method
