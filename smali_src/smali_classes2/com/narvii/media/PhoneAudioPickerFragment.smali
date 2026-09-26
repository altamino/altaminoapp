.class public Lcom/narvii/media/PhoneAudioPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;,
        Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;,
        Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;,
        Lcom/narvii/media/PhoneAudioPickerFragment$Entry;
    }
.end annotation


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = "date_added"

.field private static final SELECTION_ALL_FOR_SINGLE_MEDIA_TYPE:Ljava/lang/String; = "media_type=? AND _size>0"

.field private static loadExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

.field albumList:Landroid/widget/ListView;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field fentries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private loadTask:Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

.field mainList:Landroid/widget/ListView;

.field pickButton:Landroid/widget/Button;

.field private selectionStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field titleButton:Landroid/view/View;

.field touchArea:Landroid/view/View;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "content://media/external/audio/albumart"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/media/PhoneAudioPickerFragment;->sArtworkUri:Landroid/net/Uri;

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    const-string v1, "galley media loader"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/media/PhoneAudioPickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method

.method private filterAlbum(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget v3, v2, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 28
    .line 29
    iget v4, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 30
    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-object v0
.end method

.method public static getBundle(ZILjava/lang/String;Ljava/io/File;)Landroid/os/Bundle;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "single"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p0, "maximum"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    :cond_0
    const-string p0, "maxStr"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    const-string p0, "dir"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 28
    return-object v0
.end method

.method private hideAlbum()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget v2, Lcom/narvii/lib/R$anim;->slide_out_top:I

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget v1, Lcom/narvii/lib/R$anim;->fade_out:I

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    :cond_0
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selectionStrList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    return-void
.end method

.method private pick()V
    .locals 10

    .line 1
    .line 2
    const-string v0, "photo"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-lez v1, :cond_2

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    const-string v5, "dir"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    check-cast v4, Ljava/io/File;

    .line 62
    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    iget-object v5, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->fileName:Ljava/lang/String;

    .line 66
    .line 67
    const-string v6, "."

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 71
    move-result v6

    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    .line 88
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    move-result-object v7

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v5}, Lcom/narvii/util/FileUtils;->getNewFileName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    invoke-static {v6, v7, v4, v5}, Lcom/narvii/util/FileUtils;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    iget-wide v6, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->soingId:J

    .line 104
    .line 105
    iget v8, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumId:I

    .line 106
    int-to-long v8, v8

    .line 107
    .line 108
    .line 109
    invoke-static {v6, v7, v8, v9}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->a(JJ)Landroid/net/Uri;

    .line 110
    move-result-object v6

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v4, v6}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 114
    move-result-object v4

    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v4

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 121
    move-result-object v5

    .line 122
    const/4 v4, 0x0

    .line 123
    .line 124
    :goto_1
    new-instance v6, Lcom/narvii/model/Media;

    .line 125
    .line 126
    .line 127
    invoke-direct {v6}, Lcom/narvii/model/Media;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getMediaType()I

    .line 131
    move-result v7

    .line 132
    .line 133
    iput v7, v6, Lcom/narvii/model/Media;->type:I

    .line 134
    .line 135
    iput-object v5, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v4, v6, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v4, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v4, v6, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 142
    .line 143
    iget v4, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    .line 144
    int-to-long v4, v4

    .line 145
    .line 146
    iput-wide v4, v6, Lcom/narvii/model/Media;->duration:J

    .line 147
    .line 148
    iget-object v4, v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    .line 149
    .line 150
    iput-object v4, v6, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 155
    .line 156
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    const-string v6, "fail to import audio from "

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    .line 174
    invoke-static {v3, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    .line 179
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 180
    move-result v0

    .line 181
    .line 182
    if-lez v0, :cond_2

    .line 183
    .line 184
    new-instance v0, Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .line 189
    const-string v2, "mediaList"

    .line 190
    .line 191
    .line 192
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v1, -0x1

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 204
    :cond_2
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->filterAlbum(Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->hideAlbum()V

    return-void
.end method

.method private resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_2

    .line 13
    .line 14
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    check-cast v3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_2
    return-object v0
.end method

.method static bridge synthetic s(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->pick()V

    return-void
.end method

.method private showAlbum()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v0

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget v2, Lcom/narvii/lib/R$anim;->slide_in_top:I

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sget v1, Lcom/narvii/lib/R$anim;->fade_in:I

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    :cond_1
    return-void
.end method

.method private switchAlbum()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->hideAlbum()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->showAlbum()V

    .line 19
    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->switchAlbum()V

    return-void
.end method

.method private updatePickButton()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "single"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    .line 34
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    .line 35
    .line 36
    if-lez v0, :cond_3

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    .line 42
    sget v1, Lcom/narvii/lib/R$string;->pick:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-lez v0, :cond_4

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, " ("

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, ")"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->loading:I

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$id;->main_list:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Landroid/widget/ListView;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->mainList:Landroid/widget/ListView;

    .line 29
    .line 30
    new-instance v3, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 34
    .line 35
    iput-object v3, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->mainList:Landroid/widget/ListView;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    .line 47
    sget v1, Lcom/narvii/lib/R$id;->media_gallery_list:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Landroid/widget/ListView;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 56
    .line 57
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 58
    .line 59
    .line 60
    const v4, -0x777778

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 69
    const/4 v3, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 75
    .line 76
    const/16 v3, 0x8

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    new-instance v1, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, p0, v4}, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)V

    .line 87
    .line 88
    iget-object v4, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    .line 93
    iget-object v4, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->albumList:Landroid/widget/ListView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    .line 98
    sget v1, Lcom/narvii/lib/R$id;->media_image_gallery_mask:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    iput-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->touchArea:Landroid/view/View;

    .line 110
    .line 111
    new-instance v4, Lcom/narvii/media/PhoneAudioPickerFragment$1;

    .line 112
    .line 113
    .line 114
    invoke-direct {v4, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$1;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    move-result v1

    .line 124
    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    sget v1, Lcom/narvii/lib/R$id;->empty:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->mainList:Landroid/widget/ListView;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updatePickButton()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updateViews()V

    return-void
.end method

.method static bridge synthetic x()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/media/PhoneAudioPickerFragment;->sArtworkUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$drawable;->media_actionbar:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "music_picker"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_title:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/media/PhoneAudioPickerFragment$2;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$2;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    .line 32
    .line 33
    sget v1, Lcom/narvii/lib/R$id;->title:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_audios:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_button:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 58
    .line 59
    sget v0, Lcom/narvii/lib/R$id;->pick_image:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Landroid/widget/Button;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->pickButton:Landroid/widget/Button;

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/media/PhoneAudioPickerFragment$3;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$3;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updatePickButton()V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->loadTask:Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/media/PhoneAudioPickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    new-array v2, v2, [Ljava/lang/Void;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 29
    .line 30
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v0

    .line 35
    .line 36
    div-int/lit8 v0, v0, 0x3

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->width:I

    .line 39
    .line 40
    const-class v0, Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "selections"

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 66
    .line 67
    :goto_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_picker:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->loadTask:Lcom/narvii/media/PhoneAudioPickerFragment$LoadTask;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment;->selections:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneAudioPickerFragment;->convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "selections"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/media/PhoneAudioPickerFragment;->updateViews()V

    .line 7
    return-void
.end method
