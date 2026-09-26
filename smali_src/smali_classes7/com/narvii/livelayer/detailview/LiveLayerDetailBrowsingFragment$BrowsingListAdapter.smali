.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 13
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

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

    const-class v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    instance-of v2, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0a0707

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    move-object v3, v2

    .line 21
    .line 22
    check-cast v3, Lcom/narvii/widget/NVImageSwitcher;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    iget-object v4, v2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 33
    .line 34
    iget-object v4, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->mediaList:Ljava/util/List;

    .line 35
    .line 36
    const-wide/16 v5, 0x32

    .line 37
    .line 38
    const-wide/16 v7, 0x1388

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/widget/NVImageSwitcher;->startSwitch(Ljava/util/List;JJ)V

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->url:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    const v3, 0x7f0a0e9e

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Lcom/narvii/modulization/page/PageItem;->getName(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    const v3, 0x7f0a020f

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    check-cast v3, Landroid/widget/ImageView;

    .line 79
    .line 80
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 81
    .line 82
    .line 83
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    const/high16 v6, 0x41700000    # 15.0f

    .line 90
    .line 91
    .line 92
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 93
    move-result v5

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 97
    move-result v6

    .line 98
    const/4 v7, 0x7

    .line 99
    const/4 v8, 0x6

    .line 100
    const/4 v9, 0x5

    .line 101
    const/4 v10, 0x4

    .line 102
    const/4 v11, 0x3

    .line 103
    const/4 v12, 0x2

    .line 104
    const/4 v13, 0x1

    .line 105
    const/4 v14, 0x0

    .line 106
    .line 107
    const/16 v15, 0x8

    .line 108
    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    if-eqz v6, :cond_1

    .line 112
    .line 113
    new-array v6, v15, [F

    .line 114
    .line 115
    aput v5, v6, v14

    .line 116
    .line 117
    aput v5, v6, v13

    .line 118
    .line 119
    aput v16, v6, v12

    .line 120
    .line 121
    aput v16, v6, v11

    .line 122
    .line 123
    aput v16, v6, v10

    .line 124
    .line 125
    aput v16, v6, v9

    .line 126
    .line 127
    aput v5, v6, v8

    .line 128
    .line 129
    aput v5, v6, v7

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 133
    .line 134
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_1
    new-array v6, v15, [F

    .line 141
    .line 142
    aput v16, v6, v14

    .line 143
    .line 144
    aput v16, v6, v13

    .line 145
    .line 146
    aput v5, v6, v12

    .line 147
    .line 148
    aput v5, v6, v11

    .line 149
    .line 150
    aput v5, v6, v10

    .line 151
    .line 152
    aput v5, v6, v9

    .line 153
    .line 154
    aput v16, v6, v8

    .line 155
    .line 156
    aput v16, v6, v7

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 160
    .line 161
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    .line 166
    :goto_0
    iget v5, v0, Lcom/narvii/modulization/page/PageItem;->iconDrawableId:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v5}, Lcom/narvii/modulization/page/PageItem;->getIconColor(Landroid/content/Context;)I

    .line 177
    move-result v0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    goto :goto_1

    .line 185
    .line 186
    :cond_2
    move-object/from16 v2, p0

    .line 187
    :goto_1
    return-object v1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d04f6

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v3, "android.intent.action.VIEW"

    .line 13
    .line 14
    iget-object v4, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->url:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .line 23
    const-string v3, "ndc://catalog"

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->url:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    const-class v5, Lcom/narvii/catalog/CatalogWrapperActivity;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    const-string v4, "isAllEntry"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    .line 60
    move-result v0

    .line 61
    xor-int/2addr v0, v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    .line 66
    const-string v0, "fragment"

    .line 67
    .line 68
    const-class v4, Lcom/narvii/catalog/CatalogFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_0
    :goto_0
    const-string v0, "Source"

    .line 81
    .line 82
    iget-object v4, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return v3

    .line 92
    .line 93
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    const-string v3, "fail to open page "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    const v2, 0x7f120815

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 129
    move-result p1

    .line 130
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
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

    const-class v0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;

    return-object v0
.end method
