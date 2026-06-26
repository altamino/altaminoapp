.class public Lcom/narvii/share/ShareViewHelper;
.super Ljava/lang/Object;
.source "ShareViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;,
        Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

.field private context:Lcom/narvii/app/NVContext;

.field private elementUtils:Lcom/narvii/share/elements/ElementUtils;

.field public source:Ljava/lang/String;

.field public statContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 55
    new-instance v0, Lcom/narvii/share/elements/ElementUtils;

    invoke-direct {v0, p1}, Lcom/narvii/share/elements/ElementUtils;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/share/ShareViewHelper;->elementUtils:Lcom/narvii/share/elements/ElementUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/share/ShareViewHelper;)Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/share/ShareViewHelper;->doShare(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/share/ShareViewHelper;->dealWithLink(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    return-void
.end method

.method private dealWithImg(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 2

    .line 185
    iget-boolean v0, p1, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/narvii/share/ShareViewHelper$4;

    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/narvii/share/ShareViewHelper$4;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    const/4 p2, 0x1

    .line 200
    invoke-virtual {v0, p2}, Lcom/narvii/media/SaveImageHelper;->setIgnoreMembership(Z)V

    .line 202
    iget-object p2, p1, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean p1, p1, Lcom/narvii/share/SharePayload;->forceUseImageOriginUrl:Z

    invoke-virtual {v0, p2, v1, p1}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {p2, p1}, Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;->onFinish(Lcom/narvii/share/SharePayload;)V

    :goto_0
    return-void
.end method

.method private dealWithLink(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 3

    .line 209
    iget-boolean v0, p1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/narvii/share/ShareLinkHelper;

    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/share/ShareLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    new-instance v2, Lcom/narvii/share/ShareViewHelper$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/share/ShareViewHelper$5;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    iget p1, p1, Lcom/narvii/share/SharePayload;->translationTarget:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/share/ShareLinkHelper;->startLinkTranslation(Lcom/narvii/model/NVObject;Lcom/narvii/util/Callback;I)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {p2, p1}, Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;->onFinish(Lcom/narvii/share/SharePayload;)V

    :goto_0
    return-void
.end method

.method private dealWithPayload(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 1

    .line 172
    new-instance v0, Lcom/narvii/share/ShareViewHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/narvii/share/ShareViewHelper$3;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/share/ShareViewHelper;->dealWithImg(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    return-void
.end method

.method private doShare(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V
    .locals 0

    .line 231
    invoke-interface {p2, p1}, Lcom/narvii/share/ShareableTarget;->share(Lcom/narvii/share/SharePayload;)V

    return-void
.end method


# virtual methods
.method public configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V
    .locals 7

    .line 59
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 61
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper;->elementUtils:Lcom/narvii/share/elements/ElementUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/share/elements/ElementUtils;->getShareTargetElements(Z)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {p1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->getPayload()Lcom/narvii/share/SharePayload;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 64
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 65
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 66
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/share/elements/BaseElement;

    .line 68
    instance-of v3, v2, Lcom/narvii/share/elements/InstagramElement;

    if-nez v3, :cond_2

    instance-of v2, v2, Lcom/narvii/share/elements/PinterestElement;

    if-eqz v2, :cond_1

    .line 69
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_5

    :goto_1
    if-ge v2, p1, :cond_5

    .line 79
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 88
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3e6147ae    # 0.22f

    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 91
    instance-of v2, p2, Landroid/widget/GridLayout;

    if-eqz v2, :cond_6

    .line 93
    :try_start_1
    move-object v2, p2

    check-cast v2, Landroid/widget/GridLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 94
    move-object v2, p2

    check-cast v2, Landroid/widget/GridLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/GridLayout;->setRowCount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :catch_1
    :cond_6
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 100
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 105
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 106
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v3, :cond_8

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_9

    .line 108
    sget v4, Lcom/narvii/lib/R$layout;->share_target_cell_layout:I

    invoke-virtual {v2, v4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 109
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    :cond_9
    instance-of v5, v4, Lcom/narvii/share/ShareTargetCellLayout;

    if-eqz v5, :cond_a

    .line 112
    move-object v5, v4

    check-cast v5, Lcom/narvii/share/ShareTargetCellLayout;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/share/elements/BaseElement;

    invoke-virtual {v5, v6}, Lcom/narvii/share/ShareTargetCellLayout;->setShareTarget(Lcom/narvii/share/elements/BaseElement;)V

    .line 113
    sget v5, Lcom/narvii/lib/R$id;->share_target_element:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 114
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 116
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public copyLink(Lcom/narvii/model/NVObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;Ljava/lang/String;)V

    return-void
.end method

.method public copyLink(Lcom/narvii/model/NVObject;Ljava/lang/String;)V
    .locals 2

    .line 268
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 269
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 270
    iput-object p2, v0, Lcom/narvii/share/SharePayload;->successToastMessage:Ljava/lang/String;

    .line 271
    instance-of p2, p1, Lcom/narvii/model/Community;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 272
    iput-boolean p2, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 273
    check-cast p1, Lcom/narvii/model/Community;

    iget-object p1, p1, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_0
    instance-of p2, p1, Lcom/narvii/model/Blog;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    const/16 p2, 0xb

    .line 276
    iput p2, v0, Lcom/narvii/share/SharePayload;->translationTarget:I

    :cond_1
    const/4 p2, 0x1

    .line 278
    iput-boolean p2, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 279
    instance-of p2, p1, Lcom/narvii/model/Feed;

    if-eqz p2, :cond_2

    .line 280
    check-cast p1, Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 283
    :cond_2
    :goto_0
    new-instance p1, Lcom/narvii/share/elements/ClipboardElement;

    iget-object p2, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/share/elements/ClipboardElement;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-interface {v0}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->getPayload()Lcom/narvii/share/SharePayload;

    move-result-object v0

    .line 131
    instance-of v1, p1, Lcom/narvii/share/ShareDialogButton;

    if-eqz v1, :cond_1

    .line 132
    sget v1, Lcom/narvii/lib/R$id;->share_button_target_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/share/ShareButtonCustomInfo;

    .line 133
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    invoke-interface {v2, v0, v1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v1, v0}, Lcom/narvii/share/ShareButtonCustomInfo;->onClick(Lcom/narvii/share/SharePayload;)V

    .line 136
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    invoke-interface {v2, v0, p1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->onFinishShare(Lcom/narvii/share/SharePayload;Landroid/view/View;)V

    .line 138
    invoke-virtual {v1}, Lcom/narvii/share/ShareButtonCustomInfo;->getStatSelectionForShare()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareViewHelper;->stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    instance-of v1, p1, Lcom/narvii/share/ShareTargetCellLayout;

    if-eqz v1, :cond_2

    .line 143
    sget v1, Lcom/narvii/lib/R$id;->share_target_element:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 144
    instance-of v2, v1, Lcom/narvii/share/elements/BaseElement;

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    invoke-interface {v2, v0, v1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V

    .line 146
    check-cast v1, Lcom/narvii/share/elements/BaseElement;

    new-instance v2, Lcom/narvii/share/ShareViewHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/share/ShareViewHelper$1;-><init>(Lcom/narvii/share/ShareViewHelper;Landroid/view/View;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/share/SharePayload;",
            "Lcom/narvii/share/elements/BaseElement;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/share/SharePayload;",
            ">;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/narvii/share/ShareViewHelper$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/narvii/share/ShareViewHelper$2;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/share/ShareViewHelper;->dealWithPayload(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    return-void
.end method

.method public shareFeed(Lcom/narvii/model/NVObject;Lcom/narvii/share/elements/BaseElement;)V
    .locals 3

    .line 287
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 288
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 289
    instance-of v1, p1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/16 v1, 0xb

    .line 290
    iput v1, v0, Lcom/narvii/share/SharePayload;->translationTarget:I

    :cond_0
    const/4 v1, 0x1

    .line 292
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 293
    instance-of v1, p1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 294
    check-cast p1, Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    .line 296
    invoke-virtual {p0, v0, p2, p1}, Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
