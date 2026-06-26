.class public abstract Lcom/narvii/feed/list/FeedAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "FeedAdapter.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/list/FeedAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/Blog;",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedAdapter.kt\ncom/narvii/feed/list/FeedAdapter\n*L\n1#1,247:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/feed/list/FeedAdapter$Companion;

.field public static final TYPE_STORY:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private progressList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/feed/list/FeedAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/feed/list/FeedAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/feed/list/FeedAdapter;->Companion:Lcom/narvii/feed/list/FeedAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 57
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/feed/list/FeedAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 60
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getService<AccountService>(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/feed/list/FeedAdapter;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/narvii/feed/list/FeedAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$setContext$p(Lcom/narvii/feed/list/FeedAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/feed/list/FeedAdapter;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method protected getItemType(I)I
    .locals 1

    .line 114
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    .line 115
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected final getProgressList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/narvii/feed/list/FeedAdapter;->progressList:Ljava/util/HashSet;

    return-object v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    instance-of v0, p1, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/narvii/model/Blog;

    .line 102
    move-object p2, p1

    check-cast p2, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isDarkTheme()Z

    move-result v0

    iget-object v1, p0, Lcom/narvii/feed/list/FeedAdapter;->progressList:Ljava/util/HashSet;

    invoke-virtual {p2, v0, v4, v1}, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;->bindBlog(ZLcom/narvii/model/Blog;Ljava/util/HashSet;)V

    if-eqz v4, :cond_3

    .line 103
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 104
    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v3, p2

    .line 105
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090571

    invoke-virtual {v4}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v4, v0}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v2, p2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    goto :goto_2

    .line 107
    :cond_2
    instance-of v0, p1, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Blog;

    .line 109
    check-cast p1, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isDarkTheme()Z

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;->bindBlog(ZLcom/narvii/model/Blog;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cell"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0b0215

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    new-instance p2, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/feed/list/viewholder/UnKnownTypeViewHolder;-><init>(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/view/View;)V

    return-object p2

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0b03d5

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/feed/list/viewholder/StoryItemViewHolder;-><init>(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 128
    instance-of v0, p3, Lcom/narvii/model/Feed;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p5, :cond_5

    .line 132
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 134
    :sswitch_0
    check-cast p3, Lcom/narvii/model/Feed;

    iget-object p1, p3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 135
    new-instance p1, Lcom/narvii/community/CommunityHelper;

    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 136
    iget p2, p3, Lcom/narvii/model/Feed;->ndcId:I

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2, v2}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object p2, p3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 138
    iget p2, p3, Lcom/narvii/model/Feed;->ndcId:I

    const-string p3, "__communityId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return v1

    .line 144
    :sswitch_1
    instance-of v0, p3, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_6

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    .line 145
    check-cast p3, Lcom/narvii/model/Feed;

    invoke-virtual {p0, p3, p5}, Lcom/narvii/feed/list/FeedAdapter;->showStoryDetailPage(Lcom/narvii/model/Feed;Landroid/view/View;)V

    return v1

    .line 150
    :sswitch_2
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f06d5

    .line 151
    invoke-virtual {p1, p2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 152
    new-instance p2, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;

    invoke-direct {p2, p0, p3}, Lcom/narvii/feed/list/FeedAdapter$onItemClick$1;-><init>(Lcom/narvii/feed/list/FeedAdapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v1

    .line 162
    :sswitch_3
    iget-object v0, p0, Lcom/narvii/feed/list/FeedAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {p0, v0, v2}, Lcom/narvii/feed/list/FeedAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    goto :goto_0

    .line 165
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :sswitch_4
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 171
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/Feed;

    invoke-static {v0, v1, v3}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/narvii/feed/list/FeedAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {v0}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    goto :goto_0

    .line 179
    :cond_5
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {p0, v0, p4}, Lcom/narvii/feed/list/FeedAdapter;->openFeedDetailPage(Lcom/narvii/model/Feed;Landroid/view/View;)V

    .line 181
    :cond_6
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f090452 -> :sswitch_4
        0x7f090457 -> :sswitch_3
        0x7f0904fe -> :sswitch_2
        0x7f090571 -> :sswitch_1
        0x7f090c12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 66
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v1, v1, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/narvii/model/Blog;

    invoke-virtual {p0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.Blog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 69
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    instance-of v1, v1, Lcom/narvii/model/Comment;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "new"

    if-eq v1, v2, :cond_4

    const-string v2, "delete"

    if-ne v1, v2, :cond_a

    :cond_4
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    .line 73
    iget-object v3, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    instance-of v3, v2, Lcom/narvii/model/Blog;

    if-nez v3, :cond_6

    instance-of v3, v2, Lcom/narvii/model/Item;

    if-eqz v3, :cond_5

    .line 75
    :cond_6
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v3, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.Comment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v1, :cond_a

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 72
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_a
    :goto_4
    return-void
.end method

.method public final openFeedDetailPage(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 2

    .line 185
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/list/FeedAdapter;->showStoryDetailPage(Lcom/narvii/model/Feed;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected final setProgressList(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/narvii/feed/list/FeedAdapter;->progressList:Ljava/util/HashSet;

    return-void
.end method

.method public showStoryDetailPage(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 2

    .line 193
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 194
    new-instance v0, Lcom/narvii/story/StoryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 195
    new-instance v1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v1, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const/4 p1, 0x0

    .line 196
    invoke-virtual {v1, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string v1, "discover-player"

    .line 197
    invoke-virtual {p1, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    const v1, 0x7f090571

    .line 198
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p2, v1

    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method public final vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/feed/list/FeedAdapter;->progressList:Ljava/util/HashSet;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_3
    const/4 v0, 0x1

    .line 206
    invoke-static {p2, p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    move-result v1

    if-nez p2, :cond_4

    if-nez v1, :cond_4

    .line 208
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1105

    .line 209
    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f029c

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 211
    new-instance v0, Lcom/narvii/feed/list/FeedAdapter$vote$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/list/FeedAdapter$vote$1;-><init>(Lcom/narvii/feed/list/FeedAdapter;Lcom/narvii/model/Feed;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 224
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    :cond_4
    if-nez v1, :cond_5

    .line 228
    sget-object p2, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 230
    new-instance p2, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {p2, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/narvii/feed/list/FeedAdapter$vote$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/feed/list/FeedAdapter$vote$2;-><init>(Lcom/narvii/feed/list/FeedAdapter;Lcom/narvii/model/Feed;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 237
    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter;->progressList:Ljava/util/HashSet;

    if-nez p2, :cond_6

    .line 238
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/narvii/feed/list/FeedAdapter;->progressList:Ljava/util/HashSet;

    :cond_6
    if-eqz p1, :cond_7

    .line 240
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 241
    iget-object p2, p0, Lcom/narvii/feed/list/FeedAdapter;->progressList:Ljava/util/HashSet;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
