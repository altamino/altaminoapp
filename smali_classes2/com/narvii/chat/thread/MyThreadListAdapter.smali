.class public abstract Lcom/narvii/chat/thread/MyThreadListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MyThreadListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/thread/MyThreadListAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyThreadListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyThreadListAdapter.kt\ncom/narvii/chat/thread/MyThreadListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1587#2,2:160\n*E\n*S KotlinDebug\n*F\n+ 1 MyThreadListAdapter.kt\ncom/narvii/chat/thread/MyThreadListAdapter\n*L\n142#1,2:160\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/thread/MyThreadListAdapter$Companion;

.field public static final SEARCH_ACTION_CLICK:I = 0x1

.field public static final SEARCH_ACTION_NONE:I


# instance fields
.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/thread/MyThreadListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/thread/MyThreadListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/thread/MyThreadListAdapter;->Companion:Lcom/narvii/chat/thread/MyThreadListAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 35
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 37
    iget-object p1, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "chat"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"chat\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method private final findAllMatches(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 149
    invoke-static {p1, p2, p3, v0}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-ltz v1, :cond_0

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p3, v0

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/thread/MyThreadListAdapter;->findAllMatches(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    :cond_0
    return-object p4
.end method

.method static synthetic findAllMatches$default(Lcom/narvii/chat/thread/MyThreadListAdapter;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 148
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/thread/MyThreadListAdapter;->findAllMatches(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: findAllMatches"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic highLightSearchKey$default(Lcom/narvii/chat/thread/MyThreadListAdapter;Lcom/narvii/chat/thread/ThreadListItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "#4A90E2"

    .line 137
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/thread/MyThreadListAdapter;->highLightSearchKey(Lcom/narvii/chat/thread/ThreadListItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: highLightSearchKey"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public communityMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createThreadItem(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/narvii/chat/thread/ThreadListItem;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b00d3

    const-string v0, "hangout"

    .line 119
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.chat\u2026, convertView, \"hangout\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f0b00d6

    const-string v0, "plain"

    .line 122
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.chat\u2026nt, convertView, \"plain\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    return-object p1

    :cond_1
    const p1, 0x7f0b00d1

    const-string v0, "group"

    .line 125
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.chat\u2026nt, convertView, \"group\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 39
    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyChats"

    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 56
    iget-object v0, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result p1

    return p1

    .line 55
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p1, :cond_4

    .line 68
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyThreadListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    .line 71
    invoke-virtual {p0, v0, p2, p3}, Lcom/narvii/chat/thread/MyThreadListAdapter;->createThreadItem(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/narvii/chat/thread/ThreadListItem;

    move-result-object p2

    .line 72
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyThreadListAdapter;->isDarkNVTheme()Z

    move-result p3

    iput-boolean p3, p2, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    .line 73
    iget-object p3, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->chatService:Lcom/narvii/chat/core/ChatService;

    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    const p3, 0x7f09020c

    .line 74
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "cell.findViewById<View>(R.id.chat_thread_unread)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f09032e

    .line 75
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v1, "cell.findViewById<TextView>(R.id.datetime)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f0902a9

    .line 76
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    iget v0, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyThreadListAdapter;->communityMap()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_3

    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    if-eqz p1, :cond_3

    const p3, 0x7f0902a3

    .line 78
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    if-eqz p3, :cond_2

    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_2
    const p3, 0x7f0902b6

    .line 79
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyThreadListAdapter;->getSearchKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/thread/MyThreadListAdapter;->highLightSearchKey$default(Lcom/narvii/chat/thread/MyThreadListAdapter;Lcom/narvii/chat/thread/ThreadListItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object p2

    .line 68
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public highLightSearchKey(Lcom/narvii/chat/thread/ThreadListItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highLightColor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyThreadListAdapter;->showHighLight()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 141
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    const-string/jumbo v2, "view.title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p1, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/narvii/chat/thread/MyThreadListAdapter;->findAllMatches$default(Lcom/narvii/chat/thread/MyThreadListAdapter;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 160
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 143
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x12

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object p1, p1, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 49
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cell"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    .line 88
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 89
    const-class p1, Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 90
    move-object p2, p3

    check-cast p2, Lcom/narvii/model/ChatThread;

    iget-object p4, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string p5, "id"

    invoke-virtual {p1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "thread"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyThreadListAdapter;->communityMap()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_0

    iget p2, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    if-eqz p2, :cond_0

    .line 93
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    const-string p3, "__communityId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyThreadListAdapter;->communityMap()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 27
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/thread/MyThreadListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/thread/ThreadListResponse;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method

.method public final setChatService(Lcom/narvii/chat/core/ChatService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/thread/MyThreadListAdapter;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public showHighLight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
