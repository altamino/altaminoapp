.class public Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ModerationHistoryBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/poweruser/history/ModerationHistory;",
        "Lcom/narvii/poweruser/history/ModerationHistoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 37
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method

.method private getOperationLevelDrawable(Lcom/narvii/poweruser/history/ModerationHistory;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 181
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$drawable;->tag_rounded_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 183
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$drawable;->tag_rounded_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_0

    return-object v1

    .line 185
    :cond_0
    iget-object v3, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationLevel:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 187
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/narvii/lib/R$color;->moderation_operation_level_default_pressed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const-string v6, "danger"

    .line 188
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$color;->moderation_operation_level_danger:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 190
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_danger_pressed:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_0

    :cond_1
    const-string v6, "success"

    .line 191
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$color;->moderation_operation_level_success:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 193
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_success_pressed:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_0

    :cond_2
    const-string v6, "warning"

    .line 194
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$color;->moderation_operation_level_warning:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 196
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_warning_pressed:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 198
    :cond_3
    :goto_0
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 199
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 200
    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, p1, v3

    .line 203
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 204
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 60
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "/admin/operation"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getCid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "objectType"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->operatorUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->operatorUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "operatorUid"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/poweruser/history/ModerationHistory;",
            ">;"
        }
    .end annotation

    .line 45
    const-class v0, Lcom/narvii/poweruser/history/ModerationHistory;

    return-object v0
.end method

.method protected disableAllItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCid()I
    .locals 1

    const-string v0, "config"

    .line 72
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 73
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    return v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 92
    check-cast p1, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 93
    sget v0, Lcom/narvii/lib/R$layout;->item_modeartion_history:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 94
    sget p3, Lcom/narvii/lib/R$id;->avatar:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 95
    instance-of v0, p3, Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 97
    move-object v2, p3

    check-cast v2, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 98
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->disableAllItem()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 102
    :cond_0
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 105
    :cond_1
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->nickname:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 106
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 107
    move-object v2, p3

    check-cast v2, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v2, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 108
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->disableAllItem()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_2
    sget p3, Lcom/narvii/lib/R$id;->logtime:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 113
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 114
    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v2, p1, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_3
    sget p3, Lcom/narvii/lib/R$id;->operation_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 117
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 118
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getOperationLevelDrawable(Lcom/narvii/poweruser/history/ModerationHistory;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, p1, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x17

    if-eqz v2, :cond_4

    .line 121
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    .line 122
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x7f000001

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 125
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    .line 126
    invoke-virtual {p3, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {p3, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    .line 131
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_6

    .line 132
    check-cast v2, Lcom/narvii/app/NVFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    goto :goto_2

    .line 133
    :cond_6
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_7

    .line 134
    check-cast v2, Lcom/narvii/app/NVActivity;

    goto :goto_2

    :cond_7
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_8

    .line 137
    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p3

    .line 138
    iget p3, p3, Landroid/graphics/Point;->x:I

    mul-int/lit8 p3, p3, 0x3

    int-to-float p3, p3

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr p3, v2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr p3, v2

    float-to-int p3, p3

    .line 140
    :cond_8
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 142
    :cond_9
    sget p3, Lcom/narvii/lib/R$id;->note:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 143
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationDetail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    .line 144
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 146
    :cond_a
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_3
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 149
    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationDetail:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_b
    sget p3, Lcom/narvii/lib/R$id;->list_time_section_name:I

    invoke-virtual {p2, p3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 153
    iget p3, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operation:I

    const/16 v0, 0x10b

    const/4 v4, 0x1

    if-eq p3, v0, :cond_d

    const/16 v0, 0xcd

    if-ne p3, v0, :cond_c

    goto :goto_4

    :cond_c
    const/4 p3, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 p3, 0x1

    .line 157
    :goto_5
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->refObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "nickname"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_6
    sget v0, Lcom/narvii/lib/R$id;->target_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    iget p1, p1, Lcom/narvii/poweruser/history/ModerationHistory;->objectType:I

    if-nez p1, :cond_f

    if-eqz p3, :cond_f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 v2, 0x0

    :cond_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget p1, Lcom/narvii/lib/R$id;->target_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method protected objectId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected objectType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected operatorUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    or-int/lit16 p1, p1, 0x200

    .line 55
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/poweruser/history/ModerationHistoryListResponse;",
            ">;"
        }
    .end annotation

    .line 50
    const-class v0, Lcom/narvii/poweruser/history/ModerationHistoryListResponse;

    return-object v0
.end method
