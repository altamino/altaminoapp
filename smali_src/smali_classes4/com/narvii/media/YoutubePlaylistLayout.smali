.class public Lcom/narvii/media/YoutubePlaylistLayout;
.super Lcom/narvii/list/NVListViewWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/YoutubePlaylistLayout$Adapter;,
        Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;,
        Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;,
        Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

.field private listener:Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

.field private maximum:I

.field private pickButton:Landroid/view/View;

.field private selectAllIcon:Landroid/widget/ImageView;

.field private selectedPlaylistItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/NVListViewWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/NVListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/narvii/media/YoutubePlaylistLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/YoutubePlaylistLayout;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/media/YoutubePlaylistLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/YoutubePlaylistLayout;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/media/YoutubePlaylistLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/YoutubePlaylistLayout;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->listener:Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/media/YoutubePlaylistLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->updatePickerViews()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->updatePickerViews()V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->listener:Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;->onFinishPick(Ljava/util/List;)V

    .line 7
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->maximum:I

    .line 9
    .line 10
    if-le p1, v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    iget v3, p0, Lcom/narvii/media/YoutubePlaylistLayout;->maximum:I

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    aput-object v3, v2, v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->pick()V

    .line 48
    return-void
.end method

.method private pick()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/media/YoutubePlaylistLayout$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/narvii/media/YoutubePlaylistLayout$1;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 21
    return-void
.end method

.method private updatePickerViews()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 27
    move-result v3

    .line 28
    .line 29
    if-gt v0, v3, :cond_2

    .line 30
    :cond_1
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    instance-of v4, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    iget-object v4, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 58
    .line 59
    check-cast v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectAllIcon:Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_selected:I

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_5
    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_unselected:I

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->pickButton:Landroid/view/View;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 87
    move-result v1

    .line 88
    xor-int/2addr v1, v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    .line 8
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->youtube_playlist_items_picker:I

    return v0
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onViewCreated(Landroid/view/View;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->playlist_url:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->url:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    sget v0, Lcom/narvii/lib/R$id;->select_all:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/media/h;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/media/h;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    sget v0, Lcom/narvii/lib/R$id;->youtube_video_select_all_icon:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectAllIcon:Landroid/widget/ImageView;

    .line 41
    .line 42
    sget v0, Lcom/narvii/lib/R$id;->cancel:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/media/i;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/narvii/media/i;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    sget v0, Lcom/narvii/lib/R$id;->finish_select:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->pickButton:Landroid/view/View;

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/media/j;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/narvii/media/j;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->updatePickerViews()V

    .line 74
    return-void
.end method

.method public setData(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->url:Ljava/lang/String;

    iput p2, p0, Lcom/narvii/media/YoutubePlaylistLayout;->maximum:I

    return-void
.end method

.method public setPlaylistPickerListener(Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->listener:Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    return-void
.end method
