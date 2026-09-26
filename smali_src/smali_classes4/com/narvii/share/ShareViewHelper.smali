.class public Lcom/narvii/share/ShareViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;,
        Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/share/elements/ElementUtils;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/share/elements/ElementUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/share/ShareViewHelper;->elementUtils:Lcom/narvii/share/elements/ElementUtils;

    .line 13
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/share/ShareViewHelper;)Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/share/ShareViewHelper;->dealWithLink(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/share/ShareViewHelper;->doShare(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V

    return-void
.end method

.method private dealWithImg(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/share/ShareViewHelper$4;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/narvii/share/ShareViewHelper$4;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    .line 20
    const/4 p2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lcom/narvii/media/SaveImageHelper;->setIgnoreMembership(Z)V

    .line 24
    .line 25
    iget-object p2, p1, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/narvii/share/SharePayload;->forceUseImageOriginUrl:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2, p1}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;Z)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-interface {p2, p1}, Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;->onFinish(Lcom/narvii/share/SharePayload;)V

    .line 35
    :goto_0
    return-void
.end method

.method private dealWithLink(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/share/ShareLinkHelper;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/narvii/share/ShareLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 22
    .line 23
    new-instance v2, Lcom/narvii/share/ShareViewHelper$5;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/share/ShareViewHelper$5;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    .line 27
    .line 28
    iget p1, p1, Lcom/narvii/share/SharePayload;->translationTarget:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/share/ShareLinkHelper;->startLinkTranslation(Lcom/narvii/model/NVObject;Lcom/narvii/util/Callback;I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p2, p1}, Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;->onFinish(Lcom/narvii/share/SharePayload;)V

    .line 36
    :goto_0
    return-void
.end method

.method private dealWithPayload(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/ShareViewHelper$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/narvii/share/ShareViewHelper$3;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/narvii/share/ShareViewHelper;->dealWithImg(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    .line 9
    return-void
.end method

.method private doShare(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p1}, Lcom/narvii/share/ShareableTarget;->share(Lcom/narvii/share/SharePayload;)V

    .line 4
    return-void
.end method


# virtual methods
.method public configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V
    .locals 7

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper;->elementUtils:Lcom/narvii/share/elements/ElementUtils;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/share/elements/ElementUtils;->getShareTargetElements(Z)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->getPayload()Lcom/narvii/share/SharePayload;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 18
    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    iget-boolean v2, p1, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/narvii/share/elements/BaseElement;

    .line 44
    .line 45
    instance-of v3, v2, Lcom/narvii/share/elements/InstagramElement;

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    instance-of v2, v2, Lcom/narvii/share/elements/PinterestElement;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    move-result p1

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    move-result v2

    .line 64
    .line 65
    if-ge v2, p1, :cond_5

    .line 66
    .line 67
    :goto_1
    if-ge v2, p1, :cond_5

    .line 68
    .line 69
    .line 70
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    :catch_0
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_5
    iget-object p1, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 96
    .line 97
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .line 99
    .line 100
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 101
    move-result p1

    .line 102
    int-to-float p1, p1

    .line 103
    .line 104
    .line 105
    const v2, 0x3e6147ae    # 0.22f

    .line 106
    mul-float/2addr p1, v2

    .line 107
    float-to-int p1, p1

    .line 108
    .line 109
    instance-of v2, p2, Landroid/widget/GridLayout;

    .line 110
    .line 111
    if-eqz v2, :cond_6

    .line 112
    :try_start_1
    move-object v2, p2

    .line 113
    .line 114
    check-cast v2, Landroid/widget/GridLayout;

    .line 115
    const/4 v3, 0x4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 119
    move-object v2, p2

    .line 120
    .line 121
    check-cast v2, Landroid/widget/GridLayout;

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 125
    move-result v4

    .line 126
    div-int/2addr v4, v3

    .line 127
    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v4}, Landroid/widget/GridLayout;->setRowCount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .line 133
    :catch_1
    :cond_6
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 134
    .line 135
    .line 136
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    .line 140
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 141
    move-result-object v2

    .line 142
    move v3, v1

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 146
    move-result v4

    .line 147
    .line 148
    if-ge v3, v4, :cond_7

    .line 149
    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 151
    goto :goto_2

    .line 152
    :cond_7
    move v3, v1

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 156
    move-result v4

    .line 157
    .line 158
    if-ge v3, v4, :cond_b

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 162
    move-result v4

    .line 163
    .line 164
    if-le v4, v3, :cond_8

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 168
    move-result-object v4

    .line 169
    goto :goto_4

    .line 170
    :cond_8
    const/4 v4, 0x0

    .line 171
    .line 172
    :goto_4
    if-nez v4, :cond_9

    .line 173
    .line 174
    sget v4, Lcom/narvii/lib/R$layout;->share_target_cell_layout:I

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 178
    move-result-object v4

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    .line 183
    :cond_9
    instance-of v5, v4, Lcom/narvii/share/ShareTargetCellLayout;

    .line 184
    .line 185
    if-eqz v5, :cond_a

    .line 186
    move-object v5, v4

    .line 187
    .line 188
    check-cast v5, Lcom/narvii/share/ShareTargetCellLayout;

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    move-result-object v6

    .line 193
    .line 194
    check-cast v6, Lcom/narvii/share/elements/BaseElement;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v6}, Lcom/narvii/share/ShareTargetCellLayout;->setShareTarget(Lcom/narvii/share/elements/BaseElement;)V

    .line 198
    .line 199
    sget v5, Lcom/narvii/lib/R$id;->share_target_element:I

    .line 200
    .line 201
    .line 202
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object v6

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    move-result-object v4

    .line 214
    .line 215
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    .line 217
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 218
    .line 219
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 220
    goto :goto_3

    .line 221
    :cond_b
    return-void
.end method

.method public copyLink(Lcom/narvii/model/NVObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;Ljava/lang/String;)V

    return-void
.end method

.method public copyLink(Lcom/narvii/model/NVObject;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    iput-object p2, v0, Lcom/narvii/share/SharePayload;->successToastMessage:Ljava/lang/String;

    .line 3
    instance-of p2, p1, Lcom/narvii/model/Community;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 4
    check-cast p1, Lcom/narvii/model/Community;

    iget-object p1, p1, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 5
    instance-of p2, p1, Lcom/narvii/model/Feed;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 7
    :cond_1
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->getPayload()Lcom/narvii/share/SharePayload;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v1, p1, Lcom/narvii/share/ShareDialogButton;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget v1, Lcom/narvii/lib/R$id;->share_button_target_info:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/share/ShareButtonCustomInfo;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v0, v1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/narvii/share/ShareButtonCustomInfo;->onClick(Lcom/narvii/share/SharePayload;)V

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v0, p1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->onFinishShare(Lcom/narvii/share/SharePayload;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/share/ShareButtonCustomInfo;->getStatSelectionForShare()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareViewHelper;->stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    instance-of v1, p1, Lcom/narvii/share/ShareTargetCellLayout;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    sget v1, Lcom/narvii/lib/R$id;->share_target_element:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    instance-of v2, v1, Lcom/narvii/share/elements/BaseElement;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v0, v1}, Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;->onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V

    .line 64
    .line 65
    check-cast v1, Lcom/narvii/share/elements/BaseElement;

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/share/ShareViewHelper$1;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0, p1}, Lcom/narvii/share/ShareViewHelper$1;-><init>(Lcom/narvii/share/ShareViewHelper;Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    .line 74
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/ShareViewHelper$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p3}, Lcom/narvii/share/ShareViewHelper$2;-><init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/narvii/share/ShareViewHelper;->dealWithPayload(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    .line 9
    return-void
.end method

.method public shareFeed(Lcom/narvii/model/NVObject;Lcom/narvii/share/elements/BaseElement;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 11
    .line 12
    instance-of v1, p1, Lcom/narvii/model/Feed;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/model/Feed;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, p2, p1}, Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    .line 27
    return-void
.end method

.method public stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "statistics"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 11
    .line 12
    const-string v1, "Content"

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 21
    .line 22
    instance-of v2, v2, Lcom/narvii/model/User;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string v2, "Share Profile"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    const-string v3, "account"

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/model/User;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-string p1, "Mine"

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    const-string p1, "Others"

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    const-string v2, "Share "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p1, " Profile Total"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_1
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 95
    .line 96
    instance-of v2, v2, Lcom/narvii/model/Community;

    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    const-string p1, "Share Community"

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    const-string p1, "Share Community Total"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 110
    goto :goto_3

    .line 111
    .line 112
    :cond_2
    const-string v2, "Share Content"

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_4

    .line 121
    .line 122
    if-nez p1, :cond_3

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_3
    iget-object v2, p0, Lcom/narvii/share/ShareViewHelper;->context:Lcom/narvii/app/NVContext;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v2}, Lcom/narvii/share/SharePayload;->contentType(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    goto :goto_2

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 137
    .line 138
    :goto_2
    const-string p1, "Content Shared Total"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 142
    .line 143
    :goto_3
    const-string p1, "Selection for share"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 147
    .line 148
    iget-object p1, p0, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 152
    return-void
.end method
