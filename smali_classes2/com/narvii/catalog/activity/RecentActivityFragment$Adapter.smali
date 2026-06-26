.class Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "RecentActivityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/activity/RecentActivityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field authorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final inMyFavoritesMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/activity/RecentActivityFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 147
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 104
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    const-string p1, "Catalog"

    .line 148
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method

.method private addDateSection()V
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    iput-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    goto :goto_1

    .line 116
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    goto :goto_1

    .line 119
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    .line 122
    iget-object v3, v2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    new-instance v3, Lcom/narvii/date/DateSection;

    iget-object v4, v2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    invoke-direct {p0, v4}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    iget-object v1, v2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 126
    iget-object v3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    const v0, 0x7f0f10c8

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    const v0, 0x7f0f11a1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 139
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    iget-object v0, v0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    iget-object v0, v0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 379
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/knowledge-base-request/activities"

    .line 380
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 304
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    .line 307
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item repeat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 265
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->getItemTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 268
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    .line 326
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 172
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    const v0, 0x7f0b05df

    .line 173
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 174
    check-cast p1, Lcom/narvii/date/DateSection;

    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 177
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 178
    instance-of p3, p2, Lcom/narvii/feed/FeedListItem;

    if-eqz p3, :cond_c

    instance-of p3, p1, Lcom/narvii/model/Item;

    if-eqz p3, :cond_c

    .line 179
    check-cast p2, Lcom/narvii/feed/FeedListItem;

    .line 180
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    invoke-static {v0}, Lcom/narvii/catalog/activity/RecentActivityFragment;->access$000(Lcom/narvii/catalog/activity/RecentActivityFragment;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    const v0, 0x7f090445

    .line 182
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CardView;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0, v1}, Lcom/narvii/widget/CardView;->setStyle(I)V

    :cond_1
    const v0, 0x7f090446

    .line 187
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/Card2View;

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0, v1}, Lcom/narvii/widget/Card2View;->setOfficial(Z)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    const v2, 0x7f090764

    .line 194
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NicknameView;

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 196
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v2, v0, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    :cond_3
    const v2, 0x7f090c10

    .line 202
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {v2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_4
    const-string v0, "pin"

    .line 208
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x11

    if-nez v2, :cond_7

    .line 211
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08045d

    .line 212
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 214
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 217
    invoke-virtual {v6, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_5

    const/16 v5, 0x15

    .line 219
    invoke-virtual {v6, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_5
    const/16 v5, 0xb

    .line 221
    invoke-virtual {v6, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 224
    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 225
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_6

    .line 226
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 228
    :cond_6
    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 230
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p2, v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    if-eqz p3, :cond_c

    .line 236
    iget-object p3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    .line 237
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_9

    const/16 p3, 0x8

    goto :goto_3

    :cond_9
    const/4 p3, 0x0

    .line 238
    :goto_3
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    new-instance p3, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;

    invoke-direct {p3, p0, p1}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;-><init>(Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;Lcom/narvii/model/Item;)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090c12

    .line 246
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    if-eqz v1, :cond_a

    goto :goto_4

    .line 248
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0702eb

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 249
    :goto_4
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0702ea

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr v0, p3

    .line 250
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v4, :cond_b

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p3, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_5

    .line 253
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p3, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    :goto_5
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 164
    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->addDateSection()V

    .line 109
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 273
    instance-of v0, p3, Lcom/narvii/model/Feed;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090c12

    if-ne v2, v3, :cond_1

    .line 274
    iget-object v2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    move-object v3, p3

    check-cast v3, Lcom/narvii/model/Feed;

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    .line 276
    invoke-static {p0, v2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string p2, "Source"

    const-string p3, "Feed"

    .line 278
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    if-eqz v0, :cond_4

    .line 285
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    if-nez p5, :cond_4

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p1, p2, :cond_3

    .line 289
    iget-object p4, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    instance-of p4, p4, Lcom/narvii/model/Feed;

    if-eqz p4, :cond_2

    add-int/lit8 p3, p3, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {p0, v0, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetail(Lcom/narvii/model/Feed;I)V

    return v1

    .line 297
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 336
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Item;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "delete"

    if-ne v1, v2, :cond_1

    .line 338
    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 342
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->notifyDataSetChanged()V

    return-void

    .line 348
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Item;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v2, "update"

    if-ne v1, v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 351
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/Item;

    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    iget-object v2, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iput-object v2, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 352
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->notifyDataSetChanged()V

    return-void

    .line 358
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 363
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 364
    instance-of p1, p2, Lcom/narvii/catalog/activity/RecentActivityResponse;

    if-eqz p1, :cond_1

    .line 365
    check-cast p2, Lcom/narvii/catalog/activity/RecentActivityResponse;

    iget-object p1, p2, Lcom/narvii/catalog/activity/RecentActivityResponse;->inMyFavoritesMapping:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 366
    iget-object p3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 369
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/catalog/activity/RecentActivityResponse;->authorMapping()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 371
    iget-object p2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/catalog/activity/RecentActivityResponse;",
            ">;"
        }
    .end annotation

    .line 331
    const-class v0, Lcom/narvii/catalog/activity/RecentActivityResponse;

    return-object v0
.end method
