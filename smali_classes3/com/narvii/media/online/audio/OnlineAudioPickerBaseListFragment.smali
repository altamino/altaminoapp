.class public abstract Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "OnlineAudioPickerBaseListFragment.java"

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

    .line 42
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method private startDownload(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V
    .locals 4

    .line 305
    sget v0, Lcom/narvii/lib/R$id;->music_download_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CircleProgressBar;

    .line 306
    sget v1, Lcom/narvii/lib/R$id;->music_download_download:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 307
    sget v2, Lcom/narvii/lib/R$id;->music_download_pick:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x0

    .line 308
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    .line 309
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-virtual {v0, v2}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 312
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-virtual {p2, p1, p0, p0}, Lcom/narvii/media/online/audio/AudioDownloader;->loadAudioFile(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Object;Lcom/narvii/media/online/audio/AudioDownloader$AudioDownloaderCallback;)V

    return-void
.end method


# virtual methods
.method protected configItemView(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V
    .locals 6

    .line 180
    sget v0, Lcom/narvii/lib/R$id;->track_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 181
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 183
    sget v0, Lcom/narvii/lib/R$id;->track_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget v0, Lcom/narvii/lib/R$id;->track_artist:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p1, Lcom/narvii/media/online/audio/model/Sound;->artist:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    sget v0, Lcom/narvii/lib/R$id;->track_tags:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getTagStr()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    sget v0, Lcom/narvii/lib/R$id;->track_duration:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getDurationInMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    sget v0, Lcom/narvii/lib/R$id;->music_seekbar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/online/audio/MusicSliderView;

    .line 198
    sget v1, Lcom/narvii/lib/R$id;->playing_status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/online/audio/MusicPlayStatusView;

    .line 199
    sget v2, Lcom/narvii/lib/R$id;->music_download_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 200
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {v4, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->isCurrentPlayMusic(Lcom/narvii/media/online/audio/model/Sound;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_5

    .line 202
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 204
    :goto_2
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->currentSelectItemView:Landroid/view/View;

    .line 206
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 208
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {p2, v0, v1}, Lcom/narvii/media/online/audio/MusicPlayer;->bindViews(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V

    .line 211
    sget p2, Lcom/narvii/lib/R$id;->music_download_progress:I

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CircleProgressBar;

    .line 212
    sget v0, Lcom/narvii/lib/R$id;->music_download_download:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    sget v1, Lcom/narvii/lib/R$id;->music_download_pick:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-virtual {v2, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDownloadState(Lcom/narvii/media/online/audio/model/Sound;)I

    move-result p1

    const/4 v2, -0x2

    if-eq p1, v2, :cond_4

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    .line 229
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p2, p1}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    goto :goto_3

    .line 217
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 223
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 236
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/media/online/audio/MusicPlayer;->clearViewBind(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V

    .line 238
    invoke-virtual {v1, v3}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    .line 239
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 105
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;Lcom/narvii/app/NVContext;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected abstract createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
.end method

.method protected dealClickEvent(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 247
    sget-object p3, Lcom/narvii/logging/ActSemantic;->playMusic:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    const-string v1, "MusicList"

    invoke-virtual {p3, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 249
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {p3, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->play(Lcom/narvii/media/online/audio/model/Sound;)V

    .line 250
    iget-boolean p3, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-virtual {p3, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDownloadState(Lcom/narvii/media/online/audio/model/Sound;)I

    move-result p3

    const/4 v1, -0x2

    if-ne p3, v1, :cond_0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->startDownload(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v0

    .line 256
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/narvii/lib/R$id;->music_seekbar:I

    if-ne v1, v2, :cond_3

    .line 257
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->pause()V

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/MusicPlayer;->resume()V

    :goto_0
    return v0

    .line 263
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/narvii/lib/R$id;->music_download_download:I

    if-ne v1, v2, :cond_4

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->startDownload(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    goto/16 :goto_1

    .line 265
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lcom/narvii/lib/R$id;->music_download_pick:I

    if-ne p2, p3, :cond_6

    .line 266
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMedia()Lcom/narvii/model/Media;

    move-result-object p2

    .line 268
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-virtual {p3, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDwonloadedFile(Lcom/narvii/media/online/audio/model/Sound;)Ljava/io/File;

    move-result-object p3

    if-nez p2, :cond_5

    const-string p1, "OnlineAudioPicker sound media is null"

    .line 270
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v0

    .line 274
    :cond_5
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    invoke-virtual {v1, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->add(Lcom/narvii/media/online/audio/model/Sound;)V

    .line 276
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 277
    const-class v1, Lcom/narvii/model/Media;

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    .line 278
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 280
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "mediaList"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget v1, p1, Lcom/narvii/media/online/audio/model/Sound;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "soundTypeList"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "soundDataList"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "category"

    .line 294
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 296
    invoke-virtual {p0, p1, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 297
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_1
    return v0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xe4e4df

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 77
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

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

    const v0, 0xfd08

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 152
    invoke-virtual {p0, v0, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance p1, Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-direct {p1, p0}, Lcom/narvii/media/online/audio/MusicPlayer;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    const-string p1, "audioDownloader"

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/online/audio/AudioDownloader;

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 57
    invoke-static {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->access$000(Lcom/narvii/app/NVContext;)Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->soundHistoryHelper:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateWifiActive()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 87
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 88
    sget p2, Lcom/narvii/lib/R$string;->search:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->ic_search_actionbar:I

    .line 89
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 90
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 132
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/narvii/media/online/audio/model/Sound;Ljava/lang/Exception;)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->download_audio_error:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 168
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$string;->search:I

    if-ne v0, v1, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0xfd08

    .line 97
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->pause()V

    .line 126
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    return-void
.end method

.method public onPostExecute(Ljava/io/File;Lcom/narvii/media/online/audio/model/Sound;)V
    .locals 1

    .line 161
    sget-object p1, Lcom/narvii/logging/ActSemantic;->downloaded:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "MusicList"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/media/online/audio/model/Sound;->title:Ljava/lang/String;

    const-string v0, "musicName"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 162
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->mainAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onProgressUpdate(Lcom/narvii/media/online/audio/model/Sound;II)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->isCurrentPlayMusic(Lcom/narvii/media/online/audio/model/Sound;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->currentSelectItemView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->music_download_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/CircleProgressBar;

    mul-int/lit8 p2, p2, 0x64

    .line 175
    div-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->stopPlayMusic()V

    .line 120
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    return-void
.end method

.method public stopPlayMusic()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->musicPlayer:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-virtual {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->stop()V

    return-void
.end method
