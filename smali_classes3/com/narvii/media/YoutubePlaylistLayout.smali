.class public Lcom/narvii/media/YoutubePlaylistLayout;
.super Lcom/narvii/list/NVListViewWrapper;
.source "YoutubePlaylistLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/YoutubePlaylistLayout$Adapter;,
        Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;,
        Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;,
        Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;
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

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/list/NVListViewWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/NVListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$Adapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->listener:Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/media/YoutubePlaylistLayout;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/media/YoutubePlaylistLayout;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/media/YoutubePlaylistLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->updatePickerViews()V

    return-void
.end method

.method private pick()V
    .locals 2

    .line 129
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 132
    new-instance v1, Lcom/narvii/media/YoutubePlaylistLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/media/YoutubePlaylistLayout$1;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 166
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updatePickerViews()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-gt v0, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 113
    instance-of v4, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    check-cast v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    iget-object v3, v3, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectAllIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_selected:I

    goto :goto_1

    :cond_5
    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_picker_youtube_playlist_item_radio_unselected:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->pickButton:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 101
    new-instance v0, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubePlaylistLayout$Adapter;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    iput-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 63
    sget v0, Lcom/narvii/lib/R$layout;->youtube_playlist_items_picker:I

    return v0
.end method

.method public synthetic lambda$onViewCreated$0$YoutubePlaylistLayout(Landroid/view/View;)V
    .locals 3

    .line 71
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 75
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;

    .line 76
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    iget-object v2, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    iget-object v2, v0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->updatePickerViews()V

    .line 83
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->adapter:Lcom/narvii/media/YoutubePlaylistLayout$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$YoutubePlaylistLayout(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->listener:Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;->onFinishPick(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$YoutubePlaylistLayout(Landroid/view/View;)V
    .locals 5

    .line 89
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectedPlaylistItems:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->maximum:I

    if-le p1, v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/narvii/media/YoutubePlaylistLayout;->maximum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->pick()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onViewCreated(Landroid/view/View;)V

    .line 69
    sget v0, Lcom/narvii/lib/R$id;->playlist_url:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v0, Lcom/narvii/lib/R$id;->select_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$YWTX4-SDrvQ9TdK8TjIcjiaQwZU;

    invoke-direct {v1, p0}, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$YWTX4-SDrvQ9TdK8TjIcjiaQwZU;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v0, Lcom/narvii/lib/R$id;->youtube_video_select_all_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout;->selectAllIcon:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/narvii/lib/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$esg01Ol2DtR5oaZAkZvNlCZw2O4;

    invoke-direct {v1, p0}, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$esg01Ol2DtR5oaZAkZvNlCZw2O4;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcom/narvii/lib/R$id;->finish_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->pickButton:Landroid/view/View;

    .line 88
    iget-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->pickButton:Landroid/view/View;

    new-instance v0, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$gu9QE9dIgjxXkjDrc5LUNlTxZR0;

    invoke-direct {v0, p0}, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$gu9QE9dIgjxXkjDrc5LUNlTxZR0;-><init>(Lcom/narvii/media/YoutubePlaylistLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lcom/narvii/media/YoutubePlaylistLayout;->updatePickerViews()V

    return-void
.end method

.method public setData(Ljava/lang/String;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->url:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/narvii/media/YoutubePlaylistLayout;->maximum:I

    return-void
.end method

.method public setPlaylistPickerListener(Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/narvii/media/YoutubePlaylistLayout;->listener:Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;

    return-void
.end method
