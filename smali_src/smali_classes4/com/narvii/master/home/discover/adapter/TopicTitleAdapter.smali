.class public Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;
    }
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final iconRes:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private titleClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p4, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->iconRes:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Lcom/narvii/util/RequestResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->onItemClick$lambda$3$lambda$1(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Lcom/narvii/util/RequestResult;)V

    return-void
.end method

.method public static synthetic h(ZLcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->onItemClick$lambda$3(ZLcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method private static final onItemClick$lambda$3(ZLcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 8

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "$pw"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/narvii/logging/ActSemantic;->unbookmark:Lcom/narvii/logging/ActSemantic;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    iget-object p3, p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p3}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/topic/TopicRequestHelper;

    .line 29
    .line 30
    iget-object p0, p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/narvii/topic/TopicRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    iget-object p0, p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    .line 39
    move-result v1

    .line 40
    .line 41
    new-instance v4, Lcom/narvii/master/home/discover/adapter/u;

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, p1}, Lcom/narvii/master/home/discover/adapter/u;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)V

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x2

    .line 49
    const/4 v7, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static/range {v0 .. v7}, Lcom/narvii/topic/TopicRequestHelper;->sendBookmarkRequest$default(Lcom/narvii/topic/TopicRequestHelper;ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;ZILjava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    iget-object p0, p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/topic/model/discover/ContentModule;->getInterestId()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    sget-object p3, Lcom/narvii/logging/ActSemantic;->notInterested:Lcom/narvii/logging/ActSemantic;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    iget-object v0, p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 70
    .line 71
    .line 72
    invoke-static {p3, v0}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 76
    .line 77
    new-instance p3, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    .line 79
    .line 80
    invoke-direct {p3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v1, "persona/interests/"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    .line 106
    const-string p0, "api"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 111
    .line 112
    check-cast p0, Lcom/narvii/util/http/ApiService;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 116
    move-result-object p3

    .line 117
    .line 118
    new-instance v0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$2$1;

    .line 119
    .line 120
    const-class v1, Lcom/narvii/model/story/StoryTopicListResponse;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p1, v1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$2$1;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p3, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 130
    return-void
.end method

.method private static final onItemClick$lambda$3$lambda$1(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Lcom/narvii/util/RequestResult;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 10
    .line 11
    const-string v1, "delete"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 15
    .line 16
    const-string v0, "notification"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    check-cast p0, Lcom/narvii/notification/NotificationCenter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 26
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "moduleType"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->showTitle:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;->getItemCount()I

    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method protected final getModuleDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public final getTitleClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->titleClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of p2, p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;

    .line 8
    .line 9
    if-eqz p2, :cond_3

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getTitle()Landroid/widget/TextView;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->iconRes:Ljava/lang/Integer;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->iconRes:Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 62
    .line 63
    iget-object p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "TopicBasedTrendingTopics"

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result p2

    .line 70
    const/4 v1, 0x4

    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getIcon()Lcom/narvii/widget/NVImageView;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;->getInterestIcon()Landroid/widget/FrameLayout;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 86
    .line 87
    iget-boolean p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    .line 88
    .line 89
    if-eqz p2, :cond_2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move v0, v1

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0d03ee

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$TopicTitleViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/view/View;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    if-ne p1, v0, :cond_0

    .line 41
    .line 42
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const/high16 v1, 0x41f00000    # 30.0f

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 63
    move-result v0

    .line 64
    .line 65
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    .line 67
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_0
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    const/4 v2, 0x1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    goto :goto_2

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v3

    .line 22
    .line 23
    .line 24
    const v4, 0x7f0a06df

    .line 25
    .line 26
    if-ne v3, v4, :cond_3

    .line 27
    .line 28
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    instance-of p2, p1, Lcom/narvii/app/NVFragment;

    .line 45
    .line 46
    const-class p3, Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    const/16 p3, 0x65

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 68
    :goto_1
    return v2

    .line 69
    .line 70
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v3

    .line 77
    .line 78
    .line 79
    const v4, 0x7f0a0733

    .line 80
    .line 81
    if-ne v3, v4, :cond_7

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    const p2, 0x7f0d03ef

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    const p2, 0x7f0a0a1d

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    check-cast p2, Landroid/widget/TextView;

    .line 106
    .line 107
    iget-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 108
    const/4 p4, 0x0

    .line 109
    .line 110
    if-eqz p3, :cond_5

    .line 111
    .line 112
    iget p3, p3, Lcom/narvii/topic/model/discover/ContentModule;->linkedObjectType:I

    .line 113
    .line 114
    const/16 v0, 0x80

    .line 115
    .line 116
    if-ne p3, v0, :cond_5

    .line 117
    move p3, v2

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move p3, p4

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    if-eqz p3, :cond_6

    .line 126
    .line 127
    .line 128
    const v1, 0x7f121208

    .line 129
    goto :goto_4

    .line 130
    .line 131
    .line 132
    :cond_6
    const v1, 0x7f120d83

    .line 133
    .line 134
    :goto_4
    new-array v3, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    iget-object v4, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/narvii/topic/model/discover/ContentModule;->getInterestName()Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 141
    .line 142
    aput-object v4, v3, p4

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 157
    move-result v0

    .line 158
    int-to-float v0, v0

    .line 159
    .line 160
    .line 161
    const v1, 0x3f2e147b    # 0.68f

    .line 162
    mul-float/2addr v0, v1

    .line 163
    float-to-int v0, v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 167
    .line 168
    new-instance p2, Landroid/widget/PopupWindow;

    .line 169
    const/4 v0, -0x2

    .line 170
    .line 171
    .line 172
    invoke-direct {p2, p1, v0, v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 176
    .line 177
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 187
    .line 188
    new-instance p4, Lcom/narvii/master/home/discover/adapter/t;

    .line 189
    .line 190
    .line 191
    invoke-direct {p4, p3, p0, p2}, Lcom/narvii/master/home/discover/adapter/t;-><init>(ZLcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/widget/PopupWindow;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 198
    return v2

    .line 199
    .line 200
    :cond_7
    :goto_5
    if-nez v1, :cond_8

    .line 201
    goto :goto_7

    .line 202
    .line 203
    .line 204
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 205
    move-result v0

    .line 206
    .line 207
    .line 208
    const v1, 0x7f0a0e9e

    .line 209
    .line 210
    if-ne v0, v1, :cond_b

    .line 211
    .line 212
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 213
    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    iget-boolean p1, p1, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 217
    .line 218
    if-ne p1, v2, :cond_9

    .line 219
    goto :goto_6

    .line 220
    .line 221
    :cond_9
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->titleClickListener:Landroid/view/View$OnClickListener;

    .line 222
    .line 223
    if-eqz p1, :cond_a

    .line 224
    .line 225
    .line 226
    invoke-interface {p1, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 227
    :cond_a
    :goto_6
    return v2

    .line 228
    .line 229
    .line 230
    :cond_b
    :goto_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 231
    move-result p1

    .line 232
    return p1
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public final setTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->titleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
