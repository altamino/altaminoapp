.class final Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "AssetsStorageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AssetsStorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AssetsAdapter"
.end annotation


# instance fields
.field private final FONTS_TAG:Lcom/narvii/util/Tag;

.field private final MUSIC_TAG:Lcom/narvii/util/Tag;

.field private final STICKER_TAG:Lcom/narvii/util/Tag;

.field private final TEXT_TAG:Lcom/narvii/util/Tag;

.field private final modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/prefs/AssetsStorageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nvContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p3, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    .line 119
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "music"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

    .line 120
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "fonts"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

    .line 121
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "text"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    .line 122
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "sticker"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    return-void
.end method

.method private final setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0b027d

    .line 157
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    const p3, 0x7f090b9a

    .line 158
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById<TextView>(R.id.title)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090a4b

    .line 159
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById<TextView>(R.id.size)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {v1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/narvii/prefs/AssetsStorageFragment;->access$calculateSize(Lcom/narvii/prefs/AssetsStorageFragment;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p3, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {p1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    move-result p1

    const p3, 0x7f090a0d

    .line 161
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById<NVImageView>(R.id.selected_img)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f090c08

    .line 162
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v2, "view.findViewById<NVImag\u2026iew>(R.id.unselected_img)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "view"

    .line 164
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "DIVIDER"

    if-eqz p1, :cond_1

    .line 130
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 132
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p1, :cond_5

    .line 134
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_6

    .line 135
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 139
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "super.getView(position, convertView, parent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_3

    .line 170
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    .line 184
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
