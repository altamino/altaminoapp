.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "PlaylistFragment.java"


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

    .line 767
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 768
    const-class p1, Lcom/narvii/model/PlayListItem;

    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method disableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 956
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 961
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 962
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 778
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PlayListItem;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const v1, 0x7f0b05fc

    .line 781
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0909b7

    .line 782
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 785
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, p1, :cond_2

    .line 786
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 788
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v5, "ic_screenroom_playlist_playing_gif.gif"

    invoke-direct {v0, v1, v5}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f0804cb

    .line 791
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentStatus()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentStatus()I

    move-result v0

    if-ne v0, v4, :cond_4

    :cond_1
    const v0, 0x7f0804c9

    .line 794
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 797
    :cond_2
    iget-boolean v1, p1, Lcom/narvii/model/PlayListItem;->isDone:Z

    if-eqz v1, :cond_3

    const v0, 0x7f0804ca

    .line 798
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 800
    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    const p3, 0x7f0909b8

    .line 804
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 805
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    const p3, 0x7f0909ba

    .line 807
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 808
    iget-object v0, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0909b6

    .line 810
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 811
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 812
    iget v1, p1, Lcom/narvii/model/PlayListItem;->type:I

    const/4 v5, 0x0

    if-eq v1, v4, :cond_6

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_7

    .line 816
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    const v2, 0x7f0f0f45

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/narvii/model/PlayListItem;->author:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f080463

    .line 817
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    :goto_1
    const v1, 0x7f0f0f3f

    .line 813
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0804cc

    .line 814
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    :cond_7
    :goto_2
    iget-wide v0, p1, Lcom/narvii/model/PlayListItem;->duration:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    int-to-long v0, p1

    .line 820
    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f0909b4

    .line 821
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 822
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0909b9

    .line 824
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090376

    .line 826
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 827
    iget-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1400(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_3

    :cond_8
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_9
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 837
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1400(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p3, :cond_1

    .line 842
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$600(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 845
    :cond_1
    instance-of v0, p3, Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_4

    .line 846
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/PlayListItem;

    .line 847
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 848
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 849
    iget-object v3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1500(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const v3, 0x7f0f115e

    .line 850
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 851
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const v3, 0x7f0f0ed3

    .line 853
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 854
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    iget v3, v0, Lcom/narvii/model/PlayListItem;->type:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const v3, 0x7f0f01c8

    .line 856
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 857
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x1

    const v4, 0x7f0f0348

    .line 859
    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 860
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 862
    new-instance v3, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    invoke-direct {v3, p0, v2, v0, p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 949
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
