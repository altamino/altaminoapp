.class Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    .line 20
    .line 21
    const-string p1, "Catalog"

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private addDateSection()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Lcom/narvii/model/Feed;

    .line 48
    .line 49
    iget-object v3, v2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v3}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    .line 58
    .line 59
    new-instance v3, Lcom/narvii/date/DateSection;

    .line 60
    .line 61
    iget-object v4, v2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v4}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, v4}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    :cond_2
    iget-object v1, v2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    .line 76
    .line 77
    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f1211d4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f1212a9

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/narvii/catalog/activity/RecentActivityFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    return-object p1
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
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/knowledge-base-request/activities"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 14
    move-result-object p1

    .line 15
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p2, v0, :cond_2

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashSet;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/model/Feed;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v3, "item repeat "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-object p2

    .line 83
    :cond_2
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->getItemTypeCount()I

    .line 8
    move-result p1

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemTypeCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d0696

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p2, Landroid/widget/TextView;

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/date/DateSection;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-object p2

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    instance-of p3, p2, Lcom/narvii/feed/FeedListItem;

    .line 28
    .line 29
    if-eqz p3, :cond_9

    .line 30
    .line 31
    instance-of p3, p1, Lcom/narvii/model/Item;

    .line 32
    .line 33
    if-eqz p3, :cond_9

    .line 34
    .line 35
    check-cast p2, Lcom/narvii/feed/FeedListItem;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->this$0:Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/catalog/activity/RecentActivityFragment;->access$000(Lcom/narvii/catalog/activity/RecentActivityFragment;)I

    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1, v0}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a057c

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/widget/CardView;->setStyle(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const v0, 0x7f0a057d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Lcom/narvii/widget/Card2View;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/narvii/widget/Card2View;->setOfficial(Z)V

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    .line 76
    .line 77
    check-cast p1, Lcom/narvii/model/Item;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Lcom/narvii/model/User;

    .line 88
    .line 89
    .line 90
    const v2, 0x7f0a09f9

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 97
    const/4 v3, -0x1

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    .line 108
    .line 109
    .line 110
    :cond_3
    const v2, 0x7f0a0f36

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 124
    .line 125
    :cond_4
    const-string v0, "pin"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    if-nez v2, :cond_5

    .line 132
    .line 133
    new-instance v2, Landroid/view/View;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    const v4, 0x7f080584

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 150
    move-result-object v4

    .line 151
    .line 152
    const/high16 v5, 0x41d00000    # 26.0f

    .line 153
    .line 154
    .line 155
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 156
    move-result v4

    .line 157
    float-to-int v4, v4

    .line 158
    .line 159
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    .line 161
    .line 162
    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    .line 164
    const/16 v4, 0xa

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    .line 169
    const/16 v4, 0x15

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    const/high16 v4, 0x41600000    # 14.0f

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 182
    move-result v3

    .line 183
    float-to-int v3, v3

    .line 184
    .line 185
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    :cond_5
    if-eqz p3, :cond_9

    .line 197
    .line 198
    iget-object p3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object p3

    .line 207
    .line 208
    check-cast p3, Ljava/lang/Integer;

    .line 209
    const/4 v0, 0x0

    .line 210
    .line 211
    if-eqz p3, :cond_6

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 215
    move-result p3

    .line 216
    .line 217
    if-ne p3, v1, :cond_6

    .line 218
    goto :goto_0

    .line 219
    :cond_6
    move v1, v0

    .line 220
    .line 221
    :goto_0
    if-eqz v1, :cond_7

    .line 222
    .line 223
    const/16 p3, 0x8

    .line 224
    goto :goto_1

    .line 225
    :cond_7
    move p3, v0

    .line 226
    .line 227
    .line 228
    :goto_1
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    new-instance p3, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;

    .line 231
    .line 232
    .line 233
    invoke-direct {p3, p0, p1}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter$1;-><init>(Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;Lcom/narvii/model/Item;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    const p1, 0x7f0a0f38

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    if-eqz p1, :cond_9

    .line 246
    .line 247
    if-eqz v1, :cond_8

    .line 248
    goto :goto_2

    .line 249
    .line 250
    .line 251
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 252
    move-result-object p3

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    move-result-object p3

    .line 257
    .line 258
    .line 259
    const v0, 0x7f07052e

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 263
    move-result v0

    .line 264
    .line 265
    .line 266
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 267
    move-result-object p3

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 271
    move-result-object p3

    .line 272
    .line 273
    .line 274
    const v1, 0x7f07052d

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 278
    move-result p3

    .line 279
    add-int/2addr v0, p3

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 283
    move-result p3

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 287
    move-result v1

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 291
    move-result v2

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p3, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 295
    :cond_9
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/date/DateSection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
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

    iget-object v0, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->addDateSection()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Feed;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p5, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    const v3, 0x7f0a0f38

    .line 15
    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    .line 19
    move-object v3, p3

    .line 20
    .line 21
    check-cast v3, Lcom/narvii/model/Feed;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/model/User;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    return v1

    .line 41
    .line 42
    :cond_0
    const-string p2, "Source"

    .line 43
    .line 44
    const-string p3, "Feed"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 51
    return v1

    .line 52
    .line 53
    :cond_1
    if-eqz v0, :cond_4

    .line 54
    move-object v0, p3

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/model/Feed;

    .line 57
    .line 58
    if-nez p5, :cond_4

    .line 59
    const/4 p1, 0x0

    .line 60
    move p3, p1

    .line 61
    .line 62
    :goto_0
    if-ge p1, p2, :cond_3

    .line 63
    .line 64
    iget-object p4, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->l:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p4

    .line 69
    .line 70
    instance-of p4, p4, Lcom/narvii/model/Feed;

    .line 71
    .line 72
    if-eqz p4, :cond_2

    .line 73
    .line 74
    add-int/lit8 p3, p3, 0x1

    .line 75
    .line 76
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {p0, v0, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetail(Lcom/narvii/model/Feed;I)V

    .line 81
    return v1

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 85
    move-result p1

    .line 86
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Item;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "delete"

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Item;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->notifyDataSetChanged()V

    .line 44
    return-void

    .line 45
    .line 46
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    instance-of v1, v0, Lcom/narvii/model/Item;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "update"

    .line 55
    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/model/Item;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 68
    move-result v0

    .line 69
    .line 70
    if-ltz v0, :cond_1

    .line 71
    .line 72
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lcom/narvii/model/Item;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    check-cast v2, Lcom/narvii/model/Feed;

    .line 83
    .line 84
    iget-object v2, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 85
    .line 86
    iput-object v2, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Lcom/narvii/model/Feed;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->notifyDataSetChanged()V

    .line 99
    return-void

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 103
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 4
    .line 5
    instance-of p1, p2, Lcom/narvii/catalog/activity/RecentActivityResponse;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    check-cast p2, Lcom/narvii/catalog/activity/RecentActivityResponse;

    .line 10
    .line 11
    iget-object p1, p2, Lcom/narvii/catalog/activity/RecentActivityResponse;->inMyFavoritesMapping:Ljava/util/Map;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/catalog/activity/RecentActivityResponse;->authorMapping()Ljava/util/HashMap;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/catalog/activity/RecentActivityFragment$Adapter;->authorMap:Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 30
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

    const-class v0, Lcom/narvii/catalog/activity/RecentActivityResponse;

    return-object v0
.end method
