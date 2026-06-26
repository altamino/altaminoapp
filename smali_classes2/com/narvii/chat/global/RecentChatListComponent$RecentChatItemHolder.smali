.class final Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecentChatListComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/RecentChatListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentChatItemHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatListComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatListComponent.kt\ncom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder\n*L\n1#1,146:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final fansOnlyMask:Landroid/view/View;

.field private final image$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/narvii/chat/global/RecentChatListComponent;

.field private final title$delegate:Lkotlin/Lazy;

.field private final unreadSig$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "image"

    const-string v5, "getImage()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "title"

    const-string v5, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string/jumbo v3, "unreadSig"

    const-string v4, "getUnreadSig()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/global/RecentChatListComponent;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090571

    .line 76
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->image$delegate:Lkotlin/Lazy;

    const p1, 0x7f090b9a

    .line 77
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->title$delegate:Lkotlin/Lazy;

    const p1, 0x7f09020c

    .line 78
    invoke-direct {p0, p0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->unreadSig$delegate:Lkotlin/Lazy;

    const p1, 0x7f090425

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->fansOnlyMask:Landroid/view/View;

    return-void
.end method

.method private final bind(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 82
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bind$1;-><init>(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getImage()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->image$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->title$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getUnreadSig()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->unreadSig$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final bindData(Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 5

    const-string v0, "globalChatThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/narvii/widget/ThumbImageView;

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 89
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 88
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.ThumbImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    instance-of v1, v0, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v1, :cond_4

    .line 92
    iget-object v0, p1, Lcom/narvii/chat/global/GlobalChatThread;->targetUser:Lcom/narvii/model/User;

    .line 93
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 94
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f01d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.UserAvatarLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_4
    instance-of v0, v0, Lcom/narvii/chat/MultiAvatarView;

    if-eqz v0, :cond_6

    .line 97
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getImage()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/narvii/chat/MultiAvatarView;

    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->avatarList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/MultiAvatarView;->setAvatars(Ljava/util/List;)V

    .line 98
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.chat.MultiAvatarView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->fansOnlyMask:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_8

    iget-boolean v3, p1, Lcom/narvii/chat/global/GlobalChatThread;->isFansOnly:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_8
    invoke-direct {p0}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->getUnreadSig()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-static {v3}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getGlobalChatService$p(Lcom/narvii/chat/global/RecentChatListComponent;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object v3

    iget-object v4, p1, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/chat/util/GlobalChatService;->isThreadUnread(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder$bindData$1;-><init>(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;Lcom/narvii/chat/global/GlobalChatThread;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
