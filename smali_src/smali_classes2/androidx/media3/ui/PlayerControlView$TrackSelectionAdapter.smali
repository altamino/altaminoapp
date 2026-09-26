.class abstract Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TrackSelectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/PlayerControlView;

.field protected tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/ui/PlayerControlView$TrackInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    .line 13
    return-void
.end method

.method public static synthetic g(Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->h(Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;Landroid/view/View;)V

    return-void
.end method

.method private synthetic h(Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const/16 p4, 0x1d

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p4}, Landroidx/media3/common/Player;->g(I)Z

    .line 6
    move-result p4

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->h()Landroidx/media3/common/TrackSelectionParameters;

    .line 13
    move-result-object p4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Landroidx/media3/common/TrackSelectionParameters;->A()Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 17
    move-result-object p4

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/common/TrackSelectionOverride;

    .line 20
    .line 21
    iget v1, p3, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p2, v1}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->H(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    iget-object p4, p3, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4}, Landroidx/media3/common/Tracks$Group;->e()I

    .line 42
    move-result p4

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p4, v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->K(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->A()Landroidx/media3/common/TrackSelectionParameters;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->E(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 55
    .line 56
    iget-object p1, p3, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->l(Ljava/lang/String;)V

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->H(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 69
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    .line 7
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    :goto_0
    return v0
.end method

.method public i(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/Player;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->j(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;)V

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr p2, v2

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 26
    .line 27
    iget-object v1, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->b()Landroidx/media3/common/TrackGroup;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Landroidx/media3/common/Player;->h()Landroidx/media3/common/TrackSelectionParameters;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    iget-object v3, v3, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/b0;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/media3/ui/PlayerControlView$TrackInformation;->a()Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v2, v4

    .line 53
    .line 54
    :goto_0
    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v5, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v4, 0x4

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    .line 72
    new-instance v2, Landroidx/media3/ui/m;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0, v0, v1, p2}, Landroidx/media3/ui/m;-><init>(Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :goto_2
    return-void
.end method

.method protected abstract j(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;)V
.end method

.method public k(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    sget v0, Landroidx/media3/ui/R$layout;->exo_styled_sub_settings_list_item:I

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance p2, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    return-object p2
.end method

.method protected abstract l(Ljava/lang/String;)V
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->i(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->k(Landroid/view/ViewGroup;I)Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
