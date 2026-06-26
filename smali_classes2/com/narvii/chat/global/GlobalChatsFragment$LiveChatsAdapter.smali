.class final Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "GlobalChatsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/GlobalChatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LiveChatsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/chat/global/GlobalThreadListWrapper;",
        "Lcom/narvii/chat/global/GlobalThreadCategoryResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatsFragment.kt\ncom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter\n*L\n1#1,321:1\n*E\n"
.end annotation


# instance fields
.field private final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/GlobalChatsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 255
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;->communityMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 275
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/chat/thread/explore/categories"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/16 v0, 0x14

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "threadPreviewSize"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-static {v1}, Lcom/narvii/chat/global/GlobalChatsFragment;->access$getLanguageService$p(Lcom/narvii/chat/global/GlobalChatsFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 277
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/global/GlobalThreadListWrapper;",
            ">;"
        }
    .end annotation

    .line 267
    const-class v0, Lcom/narvii/chat/global/GlobalThreadListWrapper;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "LivechatRooms"

    return-object v0
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
    .locals 1

    .line 297
    instance-of v0, p2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    const v0, 0x7f0b0097

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    if-eqz p1, :cond_1

    .line 298
    check-cast p1, Lcom/narvii/chat/global/GlobalThreadListWrapper;

    .line 299
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;->communityMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setThreadCategory(Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;Landroid/app/Activity;)V

    .line 300
    invoke-virtual {p2, p0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setShownInAdapter(Lcom/narvii/list/NVAdapter;)V

    const-string p1, "itemView"

    .line 301
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    .line 298
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.chat.global.GlobalThreadListWrapper"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttach()V
    .locals 2

    .line 258
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 259
    new-instance v0, Lcom/narvii/chat/global/GlobalChatImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/chat/global/GlobalChatImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/GlobalThreadCategoryResponse;I)V
    .locals 0

    .line 305
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz p2, :cond_0

    .line 306
    iget-object p1, p2, Lcom/narvii/chat/global/GlobalThreadCategoryResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;->communityMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 254
    check-cast p2, Lcom/narvii/chat/global/GlobalThreadCategoryResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/global/GlobalChatsFragment$LiveChatsAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/GlobalThreadCategoryResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/global/GlobalThreadCategoryResponse;",
            ">;"
        }
    .end annotation

    .line 271
    const-class v0, Lcom/narvii/chat/global/GlobalThreadCategoryResponse;

    return-object v0
.end method
