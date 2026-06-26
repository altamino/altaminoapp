.class public Lcom/narvii/livelayer/category/OnlineCategoryManager;
.super Ljava/lang/Object;
.source "OnlineCategoryManager.java"


# static fields
.field public static configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/category/OnlineCategoryConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 15
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/ChatCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/ChatCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/QuizCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/QuizCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/PostCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/PostCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/PollOnlineCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/PollOnlineCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/VoteOnlineCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/VoteOnlineCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/CommentOnlineCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/CommentOnlineCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/BrowsingCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/BrowsingCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    new-instance v1, Lcom/narvii/livelayer/category/LiveChatCategoryConfig;

    invoke-direct {v1}, Lcom/narvii/livelayer/category/LiveChatCategoryConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
