.class public Lcom/narvii/livelayer/category/OnlineCategoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/livelayer/category/ChatCategoryConfig;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/narvii/livelayer/category/ChatCategoryConfig;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/livelayer/category/QuizCategoryConfig;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Lcom/narvii/livelayer/category/QuizCategoryConfig;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/livelayer/category/PostCategoryConfig;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Lcom/narvii/livelayer/category/PostCategoryConfig;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/livelayer/category/PollOnlineCategoryConfig;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Lcom/narvii/livelayer/category/PollOnlineCategoryConfig;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 48
    .line 49
    new-instance v1, Lcom/narvii/livelayer/category/VoteOnlineCategoryConfig;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Lcom/narvii/livelayer/category/VoteOnlineCategoryConfig;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 58
    .line 59
    new-instance v1, Lcom/narvii/livelayer/category/CommentOnlineCategoryConfig;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1}, Lcom/narvii/livelayer/category/CommentOnlineCategoryConfig;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 68
    .line 69
    new-instance v1, Lcom/narvii/livelayer/category/BrowsingCategoryConfig;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1}, Lcom/narvii/livelayer/category/BrowsingCategoryConfig;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 78
    .line 79
    new-instance v1, Lcom/narvii/livelayer/category/LiveChatCategoryConfig;

    .line 80
    .line 81
    .line 82
    invoke-direct {v1}, Lcom/narvii/livelayer/category/LiveChatCategoryConfig;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
