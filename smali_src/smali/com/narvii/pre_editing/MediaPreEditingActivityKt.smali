.class public final Lcom/narvii/pre_editing/MediaPreEditingActivityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaPreEditingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,380:1\n1#2:381\n*E\n"
.end annotation


# static fields
.field public static final CROP_GOOGLE_SEARCH_VIDEO:I = 0xfd30

.field public static final MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY:I = 0xee47

.field public static final TRIM_START_END_TIME:I = 0xfd32


# direct methods
.method public static final handlePickerMediaResult(Lcom/narvii/app/NVFragment;Ljava/util/List;Landroid/os/Bundle;ZLe8/a;Le8/p;)V
    .locals 5
    .param p0    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVFragment;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Le8/a<",
            "Ljava/lang/String;",
            ">;",
            "Le8/p<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Landroid/os/Bundle;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "fragment"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outputPath"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "result"

    .line 13
    .line 14
    .line 15
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    if-eqz p3, :cond_3

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result p3

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    move-object v2, v1

    .line 40
    .line 41
    check-cast v2, Lcom/narvii/model/Media;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v1, v0

    .line 50
    .line 51
    :goto_0
    check-cast v1, Lcom/narvii/model/Media;

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v1, v0

    .line 54
    .line 55
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    .line 57
    new-instance p3, Lcom/narvii/scene/helper/SceneSpHelper;

    .line 58
    .line 59
    .line 60
    invoke-direct {p3, p0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 61
    .line 62
    iget-object v2, v1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "fileName"

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v1, v2}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    .line 71
    .line 72
    :cond_3
    if-eqz p1, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    move-object v0, p1

    .line 78
    .line 79
    check-cast v0, Lcom/narvii/model/Media;

    .line 80
    .line 81
    :cond_4
    if-eqz v0, :cond_8

    .line 82
    .line 83
    iget-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-nez p1, :cond_8

    .line 90
    .line 91
    if-eqz p2, :cond_8

    .line 92
    .line 93
    iget p1, v0, Lcom/narvii/model/Media;->type:I

    .line 94
    .line 95
    const/16 p3, 0x67

    .line 96
    .line 97
    if-ne p1, p3, :cond_5

    .line 98
    .line 99
    .line 100
    invoke-interface {p4}, Le8/a;->invoke()Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v0, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_5
    const/16 p3, 0x7b

    .line 110
    .line 111
    if-ne p1, p3, :cond_7

    .line 112
    .line 113
    iget-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    .line 114
    .line 115
    .line 116
    const-wide/32 v3, 0xee47

    .line 117
    .line 118
    cmp-long p1, v1, v3

    .line 119
    .line 120
    if-lez p1, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-interface {p4}, Le8/a;->invoke()Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    check-cast p1, Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-static {p0, v0, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 130
    goto :goto_2

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-interface {p5, v0, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    goto :goto_2

    .line 135
    .line 136
    .line 137
    :cond_7
    invoke-interface {p5, v0, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic handlePickerMediaResult$default(Lcom/narvii/app/NVFragment;Ljava/util/List;Landroid/os/Bundle;ZLe8/a;Le8/p;ILjava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x8

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    :cond_0
    const-string p6, "fragment"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p6, "outputPath"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p6, "result"

    .line 18
    .line 19
    .line 20
    invoke-static {p5, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 p6, 0x0

    .line 22
    .line 23
    if-eqz p3, :cond_4

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 37
    move-result p7

    .line 38
    .line 39
    if-eqz p7, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 43
    move-result-object p7

    .line 44
    move-object v0, p7

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/model/Media;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object p7, p6

    .line 55
    .line 56
    :goto_0
    check-cast p7, Lcom/narvii/model/Media;

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object p7, p6

    .line 59
    .line 60
    :goto_1
    if-eqz p7, :cond_4

    .line 61
    .line 62
    new-instance p3, Lcom/narvii/scene/helper/SceneSpHelper;

    .line 63
    .line 64
    .line 65
    invoke-direct {p3, p0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 66
    .line 67
    iget-object v0, p7, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "fileName"

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p7, v0}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    .line 76
    .line 77
    :cond_4
    if-eqz p1, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    move-object p6, p1

    .line 83
    .line 84
    check-cast p6, Lcom/narvii/model/Media;

    .line 85
    .line 86
    :cond_5
    if-eqz p6, :cond_9

    .line 87
    .line 88
    iget-object p1, p6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-nez p1, :cond_9

    .line 95
    .line 96
    if-eqz p2, :cond_9

    .line 97
    .line 98
    iget p1, p6, Lcom/narvii/model/Media;->type:I

    .line 99
    .line 100
    const/16 p3, 0x67

    .line 101
    .line 102
    if-ne p1, p3, :cond_6

    .line 103
    .line 104
    .line 105
    invoke-interface {p4}, Le8/a;->invoke()Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p6, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 112
    goto :goto_2

    .line 113
    .line 114
    :cond_6
    const/16 p3, 0x7b

    .line 115
    .line 116
    if-ne p1, p3, :cond_8

    .line 117
    .line 118
    iget-wide v0, p6, Lcom/narvii/model/Media;->duration:J

    .line 119
    .line 120
    .line 121
    const-wide/32 v2, 0xee47

    .line 122
    .line 123
    cmp-long p1, v0, v2

    .line 124
    .line 125
    if-lez p1, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-interface {p4}, Le8/a;->invoke()Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    check-cast p1, Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-static {p0, p6, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 135
    goto :goto_2

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-interface {p5, p6, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    goto :goto_2

    .line 140
    .line 141
    .line 142
    :cond_8
    invoke-interface {p5, p6, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_9
    :goto_2
    return-void
.end method

.method public static final handlePreEditActivityResult(IILandroid/content/Intent;Le8/p;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Le8/p<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Landroid/os/Bundle;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "result"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    .line 11
    const p1, 0xfd30

    .line 12
    .line 13
    if-ne p0, p1, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const-string p0, "media"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const-class p1, Lcom/narvii/model/Media;

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    check-cast p0, Lcom/narvii/model/Media;

    .line 30
    .line 31
    const-string p1, "bundle"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    new-instance p1, Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p3, p0, p1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    return-void
.end method

.method public static final pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V
    .locals 3
    .param p0    # Lcom/narvii/media/MediaPickerFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "picker"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "dir"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p1, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    const-string/jumbo v0, "type"

    .line 18
    .line 19
    const-string/jumbo v1, "video"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    const-string v0, "checkUnsupportedImageType"

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    const-string v0, "minVideoDuration"

    .line 31
    .line 32
    const/16 v2, 0x3e8

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    const-string v0, "needDuration"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    const-string v0, "caller"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    new-instance p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 48
    .line 49
    .line 50
    invoke-direct {p3}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 51
    .line 52
    iput p2, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 53
    const/4 p2, 0x0

    .line 54
    .line 55
    if-eqz p4, :cond_0

    .line 56
    .line 57
    const/16 p4, 0x8

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move p4, p2

    .line 60
    .line 61
    :goto_0
    or-int/lit8 p4, p4, 0x10

    .line 62
    .line 63
    iput p4, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 64
    .line 65
    iput p2, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 66
    const/4 p2, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p2, p1, p3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 70
    return-void
.end method

.method public static synthetic pickVideoFromGalleryAndYoutube$default(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x4

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    const/16 p2, 0xa

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p6, p5, 0x8

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eqz p6, :cond_1

    .line 12
    move p3, v0

    .line 13
    .line 14
    :cond_1
    and-int/lit8 p5, p5, 0x10

    .line 15
    .line 16
    if-eqz p5, :cond_2

    .line 17
    move p4, v0

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V

    .line 21
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

.method public static final startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;JJJI)V
    .locals 4
    .param p0    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fakeTrim"

    const/4 v0, 0x1

    .line 14
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "trimStartTime"

    .line 15
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p1, "trimEndTime"

    .line 16
    invoke-virtual {v2, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "maxOutputTime"

    .line 17
    invoke-virtual {v2, p1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-wide/16 p1, 0x3e8

    .line 18
    invoke-static {p1, p2, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-string p3, "minOutputTime"

    invoke-virtual {v2, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "index"

    .line 19
    invoke-virtual {v2, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0xfd32

    .line 20
    invoke-static {p0, v2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static final startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p0    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bundle"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outputPath"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0xfd30

    .line 7
    invoke-static {p0, v4, p2}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 8
    iget-wide p0, p1, Lcom/narvii/model/Media;->duration:J

    const-wide/16 p2, 0x1

    cmp-long p2, p2, p0

    if-gtz p2, :cond_0

    const-wide/32 p2, 0xee48

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    sget p0, Lcom/narvii/mediaeditor/R$anim;->fade_in:I

    sget p1, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    .line 9
    invoke-virtual {v3, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
