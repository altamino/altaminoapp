.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;
.source "LiveLayerDetailBrowsingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowsingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter<",
        "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
        "Lcom/narvii/model/api/ListResponse<",
        "+",
        "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 89
    new-instance p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;)V

    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    return-void
.end method


# virtual methods
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
            ">;"
        }
    .end annotation

    .line 110
    const-class v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p1

    .line 161
    invoke-super/range {p0 .. p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 163
    instance-of v2, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    if-eqz v2, :cond_2

    .line 164
    check-cast v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    const v2, 0x7f090581

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/widget/NVImageSwitcher;

    .line 175
    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    move-object/from16 v2, p0

    .line 176
    iget-object v4, v2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 177
    iget-object v4, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->mediaList:Ljava/util/List;

    const-wide/16 v5, 0x32

    const-wide/16 v7, 0x1388

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/widget/NVImageSwitcher;->startSwitch(Ljava/util/List;JJ)V

    .line 179
    iget-object v0, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    move-result-object v0

    const v3, 0x7f090b9a

    .line 181
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/narvii/modulization/page/PageItem;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v3, 0x7f09016f

    .line 187
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 188
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    .line 191
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    if-eqz v6, :cond_1

    new-array v6, v15, [F

    aput v5, v6, v14

    aput v5, v6, v13

    aput v16, v6, v12

    aput v16, v6, v11

    aput v16, v6, v10

    aput v16, v6, v9

    aput v5, v6, v8

    aput v5, v6, v7

    .line 192
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 193
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_1
    new-array v6, v15, [F

    aput v16, v6, v14

    aput v16, v6, v13

    aput v5, v6, v12

    aput v5, v6, v11

    aput v5, v6, v10

    aput v5, v6, v9

    aput v16, v6, v8

    aput v16, v6, v7

    .line 195
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 196
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 200
    :goto_0
    iget v5, v0, Lcom/narvii/modulization/page/PageItem;->iconDrawableId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/narvii/modulization/page/PageItem;->getIconColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 203
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    :goto_1
    return-object v1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b04c9

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 127
    instance-of v0, p3, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    if-eqz v0, :cond_2

    .line 128
    move-object v0, p3

    check-cast v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    const/4 v1, 0x0

    .line 131
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "ndc://catalog"

    .line 133
    iget-object v0, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 135
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/narvii/catalog/CatalogWrapperActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "isAllEntry"

    .line 136
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "fragment"

    .line 137
    const-class v4, Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v0, "Source"

    .line 139
    iget-object v4, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment;

    iget-object v4, v4, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to open page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0766

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 150
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
            ">;I)V"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 122
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
            ">;>;"
        }
    .end annotation

    .line 114
    const-class v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;

    return-object v0
.end method
