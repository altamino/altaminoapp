.class public Lcom/narvii/modulization/entry/EntryManager;
.super Ljava/lang/Object;
.source "EntryManager.java"


# static fields
.field public static final CHAT_PUBLIC_CHAT_PATH:[Ljava/lang/String;

.field public static final CHAT_PUBLIC_GO_LIVE_PATH:[Ljava/lang/String;

.field public static final ENTRY_BLOG:Ljava/lang/String; = "blog"

.field public static final ENTRY_CHAT_PUBLIC_CHATROOMS:Ljava/lang/String; = "chat_publicChat"

.field public static final ENTRY_DRAFT:Ljava/lang/String; = "draft"

.field public static final ENTRY_GO_LIVE:Ljava/lang/String; = "go_live"

.field public static final ENTRY_IMAGE_POST:Ljava/lang/String; = "image"

.field public static final ENTRY_LINK_POST:Ljava/lang/String; = "webLink"

.field public static final ENTRY_POLL:Ljava/lang/String; = "poll"

.field public static final ENTRY_POST_PUBLIC_CHATROOMS:Ljava/lang/String; = "post_publicChat"

.field public static final ENTRY_QUEATION:Ljava/lang/String; = "question"

.field public static final ENTRY_QUIZZES:Ljava/lang/String; = "quiz"

.field public static final ENTRY_SCREEN_ROOM:Ljava/lang/String; = "screen_room"

.field public static final ENTRY_STORY:Ljava/lang/String; = "story"

.field public static final ENTRY_WIKI:Ljava/lang/String; = "wikiEntry"

.field public static final POST_ENTRY_BLOGPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_IMAGEPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_POLLPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_PUBLIC_CHAT_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_QUESTIONPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_QUIZPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_STORYPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_WEB_LINKPOST_PATH:[Ljava/lang/String;

.field public static final POST_ENTRY_WIKI_ENTRYPOST_PATH:[Ljava/lang/String;

.field public static entryItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/modulization/entry/EntryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static entryPathHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cid:I

.field public communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "post"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "postType"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v6, "story"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 61
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_STORYPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v8, "image"

    aput-object v8, v1, v7

    .line 62
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_IMAGEPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v9, "blog"

    aput-object v9, v1, v7

    .line 63
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_BLOGPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v10, "quiz"

    aput-object v10, v1, v7

    .line 64
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_QUIZPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v11, "question"

    aput-object v11, v1, v7

    .line 65
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_QUESTIONPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v12, "webLink"

    aput-object v12, v1, v7

    .line 66
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_WEB_LINKPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v13, "poll"

    aput-object v13, v1, v7

    .line 67
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_POLLPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v14, "catalogEntry"

    aput-object v14, v1, v7

    .line 68
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_WIKI_ENTRYPOST_PATH:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v14, "publicChatRooms"

    aput-object v14, v1, v7

    .line 69
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_PUBLIC_CHAT_PATH:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v14, "chat"

    aput-object v14, v1, v3

    const-string v14, "publicChat"

    aput-object v14, v1, v5

    .line 70
    sput-object v1, Lcom/narvii/modulization/entry/EntryManager;->CHAT_PUBLIC_CHAT_PATH:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    const-string v1, "liveMode"

    aput-object v1, v0, v7

    .line 72
    sput-object v0, Lcom/narvii/modulization/entry/EntryManager;->CHAT_PUBLIC_GO_LIVE_PATH:[Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_STORYPOST_PATH:[Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_PUBLIC_CHAT_PATH:[Ljava/lang/String;

    const-string v2, "post_publicChat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_IMAGEPOST_PATH:[Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_BLOGPOST_PATH:[Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_QUIZPOST_PATH:[Ljava/lang/String;

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_WEB_LINKPOST_PATH:[Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_POLLPOST_PATH:[Ljava/lang/String;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_QUESTIONPOST_PATH:[Ljava/lang/String;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->POST_ENTRY_WIKI_ENTRYPOST_PATH:[Ljava/lang/String;

    const-string v4, "wikiEntry"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->CHAT_PUBLIC_CHAT_PATH:[Ljava/lang/String;

    const-string v5, "chat_publicChat"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/modulization/entry/EntryManager;->CHAT_PUBLIC_GO_LIVE_PATH:[Ljava/lang/String;

    const-string v5, "go_live"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v5, Lcom/narvii/lib/R$string;->post_type_public_chat:I

    sget v7, Lcom/narvii/lib/R$color;->chat_theme_color:I

    sget v14, Lcom/narvii/lib/R$drawable;->ic_page_public_chat:I

    sget v15, Lcom/narvii/lib/R$string;->compose_hint_chat:I

    invoke-direct {v1, v5, v7, v14, v15}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_public_chat:I

    sget v5, Lcom/narvii/lib/R$color;->chat_theme_color:I

    sget v7, Lcom/narvii/lib/R$drawable;->ic_page_public_chat:I

    sget v14, Lcom/narvii/lib/R$string;->compose_hint_chat:I

    invoke-direct {v1, v2, v5, v7, v14}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    const-string v2, "chat_publicChat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_story:I

    sget v5, Lcom/narvii/lib/R$color;->page_story:I

    sget v7, Lcom/narvii/lib/R$drawable;->ic_page_story:I

    sget v14, Lcom/narvii/lib/R$string;->compose_hint_story:I

    invoke-direct {v1, v2, v5, v7, v14}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->chat_go_live:I

    sget v5, Lcom/narvii/lib/R$color;->go_live_theme_color:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_chat_go_live:I

    sget v7, Lcom/narvii/lib/R$string;->_empty:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    const-string v2, "go_live"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_image_post:I

    sget v5, Lcom/narvii/lib/R$color;->page_image_post:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_image_post:I

    sget v7, Lcom/narvii/lib/R$string;->compose_hint_image_post:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_blog:I

    sget v5, Lcom/narvii/lib/R$color;->page_blog:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_blog:I

    sget v7, Lcom/narvii/lib/R$string;->compose_hint_blog:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_quiz:I

    sget v5, Lcom/narvii/lib/R$color;->page_quizzes:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_quizzes:I

    sget v7, Lcom/narvii/lib/R$string;->compose_hint_quiz:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_link:I

    sget v5, Lcom/narvii/lib/R$color;->page_link_post:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_link_posts:I

    sget v7, Lcom/narvii/lib/R$string;->compose_hint_link:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_poll:I

    sget v5, Lcom/narvii/lib/R$color;->page_poll:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_poll:I

    sget v7, Lcom/narvii/lib/R$string;->compose_hint_poll:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_question:I

    sget v5, Lcom/narvii/lib/R$color;->page_question:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_questions:I

    sget v7, Lcom/narvii/lib/R$string;->compose_hint_question:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->post_type_wiki_entry:I

    sget v5, Lcom/narvii/lib/R$color;->page_wiki:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_wiki:I

    sget v7, Lcom/narvii/lib/R$string;->compose_hint_item:I

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/entry/EntryItem;

    sget v2, Lcom/narvii/lib/R$string;->compose_draft:I

    sget v4, Lcom/narvii/lib/R$color;->page_draft:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_draft:I

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/narvii/modulization/entry/EntryItem;-><init>(IIII)V

    const-string v2, "draft"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    .line 50
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 51
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/modulization/entry/EntryManager;->cid:I

    .line 52
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget v1, p0, Lcom/narvii/modulization/entry/EntryManager;->cid:I

    invoke-direct {v0, p1, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 57
    iput p2, p0, Lcom/narvii/modulization/entry/EntryManager;->cid:I

    .line 58
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public static getEntryItem(Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryItem;
    .locals 1

    .line 108
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/modulization/entry/EntryItem;

    return-object p0
.end method

.method public static getEntryPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private varargs isEntryEnabled(Lcom/narvii/model/User;[Ljava/lang/String;)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    .line 132
    :cond_1
    iget-boolean v2, p2, Lcom/narvii/modulization/entry/EntrySetting;->enabled:Z

    if-nez v2, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/modulization/entry/EntrySetting;->getPrivilegeType()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    return v0

    .line 139
    :cond_4
    iget-boolean p1, p2, Lcom/narvii/modulization/entry/EntrySetting;->enabled:Z

    return p1
.end method

.method public static isStoryEnabled()Z
    .locals 3

    .line 215
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v1, 0x1

    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    .line 216
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v2, "config"

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 217
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    const/16 v2, 0x2dd

    new-array v2, v2, [I

    .line 218
    fill-array-data v2, :array_0

    .line 221
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0xfa5d8
        0x1010e5
        0x12d86e
        0x280896
        0x2c8a42
        0x346698
        0x37352d
        0x396b7e
        0x49667d
        0x4d8204
        0x547951
        0x549d2c
        0x586935
        0x5d5279
        0x67b2a9
        0x68dc45
        0x6d6910
        0x7173f0
        0x7360eb
        0x8df9f2
        0xa2478d
        0xa5a1e7
        0xb909b5
        0xd2aaaf
        0xd3d428
        0xe1f0d1
        0xf91fbe
        0xfb7d00
        0xfe96e2
        0x1037a15
        0x10c7cd2
        0x10e1c8e
        0x10e59ce
        0x11bd59b
        0x11e680e
        0x12c12ed
        0x14dd90c
        0x15dbea9
        0x168c224
        0x16a12f4
        0x174f959
        0x1996e5f
        0x1a0cd0c
        0x1a0dfb8
        0x1a18c83
        0x1acb593
        0x1bdf765
        0x1c50ec7
        0x1c75353
        0x1def526
        0x1f49425
        0x1fa0070
        0x2014371
        0x2025d41
        0x212e671
        0x21b6378
        0x2270b7c
        0x232a679
        0x24ca53c
        0x254ee1e
        0x2585560
        0x261a26c
        0x271a07a
        0x2839a8c
        0x28891df
        0x292b5ad
        0x2a53a01
        0x2a6ceb8
        0x2ab5252
        0x2c8b1ad
        0x2d3cadd
        0x2ea091f
        0x2f16c74
        0x2f2ef32
        0x2f78f98
        0x2fa15bc
        0x2ffa102
        0x3089a82
        0x30d4036
        0x311dddc
        0x31f63e3
        0x33014d2
        0x345b685
        0x347140a
        0x35a6003
        0x3605095
        0x36387ae
        0x36d98c9
        0x37a04ab
        0x384129a
        0x3870e23
        0x3871551
        0x3913a18
        0x3b6ccac
        0x3c84c2f
        0x3cc61e0
        0x3cd6df2
        0x3d245e0
        0x40749df
        0x408c8cd
        0x41ceb9d
        0x420adb5
        0x4231447
        0x423db5d
        0x433e323
        0x436aa70
        0x44988a2
        0x44dfe7c
        0x44fb33e
        0x45544aa
        0x46b2b1d
        0x472823c
        0x4834a73
        0x4b06c75
        0x4be6fd2
        0x4c2dff0
        0x4c5254c
        0x4cbb5ce
        0x4d21ff9
        0x4d896e2
        0x4db2e51
        0x4e373ee
        0x4e97a0e
        0x4f8865d
        0x5098365
        0x50d96a2
        0x527c43f
        0x5282f95
        0x52b9bc9
        0x537a396
        0x53c9aa1
        0x5533b4b
        0x58d53fd
        0x58e8923
        0x58f2fb9
        0x590150b
        0x590bb3c
        0x5948fab
        0x59a6076
        0x5a8246b
        0x5a8ef19
        0x5d687f1
        0x5db4762
        0x5e8c365
        0x5f132b7
        0x5f31821
        0x6156857
        0x618dbb3
        0x620d3b5
        0x623ab10
        0x6297e59
        0x64fd2aa
        0x65623df
        0x664be8d
        0x66795b4
        0x686022e
        0x68db2fc
        0x6973000
        0x6a23bd0
        0x6a48d0a
        0x6b6d420
        0x6c97b24
        0x6d152db
        0x6eb722d
        0x6f18d3d
        0x6f26ef7
        0x6f885e3
        0x702e672
        0x702f86e
        0x70efeea
        0x71116d9
        0x726f65f
        0x72e5b9d
        0x7504492
        0x7881377
        0x79589e8    # 2.2500082E-34f
        0x796ef32
        0x7a5e93f
        0x7a67c94
        0x7aa0971
        0x7b2d42b
        0x7b50e42
        0x7bc7b8b
        0x7c078bf
        0x7dcc883
        0x7f2577e
        0x7f3b278
        0x7fbb8be
        0x8137548
        0x8299344
        0x82df5f9
        0x83d14db
        0x841ffe8
        0x8480aed
        0x859bbb1
        0x875a824
        0x8790d16
        0x87de934
        0x880b05d
        0x89a0d38
        0x89a2b71
        0x89a73cd
        0x8b5e2a6
        0x8c40b1b
        0x8c5be48
        0x8cb72f8
        0x8db0df5
        0x8ec8764
        0x910a91a
        0x917ee59
        0x91db585
        0x9290769
        0x935802e
        0x943302d
        0x954a542
        0x9602695
        0x96136cb
        0x962efa7
        0x964a29a
        0x973670a
        0x9752d8e
        0x97fcf9b
        0x9811043
        0x9885953
        0x996c0ff
        0x9ab8ac5
        0x9c3c1bb
        0x9ccf86e
        0x9d1c8f6
        0x9d826f9
        0x9db23b4
        0x9e8bd79
        0xa1e5a09
        0xa293708
        0xa2adc25
        0xa35ed60
        0xa3d7e08
        0xa45d9b9
        0xa4f6b13
        0xa552fed
        0xa565759
        0xa6088a4
        0xa7317c2
        0xa7ba79d
        0xa8617cb
        0xa94fb97
        0xa96a6dc
        0xad1c919
        0xad390ac
        0xadef932
        0xae22d94
        0xaea859f
        0xb00fa29
        0xb0e5925
        0xb1c7d4e
        0xb281887
        0xb2d7ae2
        0xb33696f
        0xb33ccad
        0xb34c89b
        0xb362d0b
        0xb36b42a
        0xb3ac80f
        0xb4af3b2
        0xb56759c
        0xb596707
        0xb69d66e
        0xb7e46bd
        0xb85d6d1
        0xb896035
        0xb94680d
        0xba82ccc
        0xbb929d1
        0xbcef731
        0xbd34b65
        0xbd7092c
        0xbd7bace
        0xbd9a88b
        0xbe20fea
        0xbfca49c
        0xc1e3c1a
        0xc3bbb29
        0xc4ec121
        0xc624711
        0xc6333f5
        0xc63b109
        0xc669fc4
        0xc6c3eee
        0xc6d121e
        0xc847280
        0xc864927    # 2.0689996E-31f
        0xc909411
        0xc97cf01
        0xc9d02b4
        0xc9dbabb
        0xcb8243e
        0xcc94588
        0xccf7d03
        0xcd1a9dd
        0xce0e55d
        0xcf19887
        0xcf88ad0
        0xcfe11b9
        0xd0c30f6
        0xd11f551
        0xd1614e7
        0xd1f4d3e
        0xd200b44
        0xd242b34
        0xd4b3c91
        0xd544187
        0xd6e8313
        0xd7528b1
        0xd902278
        0xd92bbbd
        0xd9ba094
        0xda74e03
        0xdaeefd0
        0xdb86152
        0xdce62c2
        0xdd2fc37
        0xde85f17
        0xde9026f
        0xdf5cd89
        0xe04d1e3
        0xe1369ae
        0xe203392
        0xe24ea0b
        0xe2689b4
        0xe3c004d
        0xe431c2d
        0xe4e4f89
        0xe5e28e8
        0xe5f7b12
        0xe6cb03d
        0xe70433d
        0xe762a56
        0xe780671
        0xe784140
        0xe7d8c41
        0xe860a51
        0xe8b2ada
        0xe8dae79
        0xe8fcbbd
        0xe90db95
        0xe95b279
        0xe9a05c1
        0xeb258ed
        0xec69c07
        0xec82b0f
        0xed3e3df
        0xee3b8e3
        0xeed779a
        0xeee19ec
        0xef2d1f1
        0xef52c12
        0xf18a75c
        0xf2a0d8b
        0xf3355fb
        0xf4dace1
        0xf73786c
        0xf748c4d
        0xf749511
        0xf77149b
        0xf7e5cc1
        0xf9636a7
        0xf9eca5a
        0xfa10792
        0xfa7327a
        0xfade3c3
        0xfafda0d
        0xfc278c1
        0xfcc8afd
        0xfcdb7fb
        0xfe9af9f
        0xff4017b
        0xffa3c97
        0xffc4c88
        0x94280e5
        0x4e20a96
        0x8ae79cf
        0xef2c4cf
        0x2a6cbb4
        0x9ee3c2b
        0x28a5b04
        0xea06705
        0x785d11
        0x50d8a6
        0xa5761c7
        0xdaab65d
        0xf0cf76f
        0x6b7c934
        0x3ab9598
        0x5f7168f
        0xe41ab07
        0x8f9cd2c
        0x47e7737
        0x4490017
        0xd238e5d
        0xf5d99f6
        0x37ad2e7
        0x84410cf
        0xb08310e
        0x6cedd3c
        0xa894dc0
        0x86592f1
        0xb97c99
        0x8bbedb1
        0x49d0e2d
        0x62163be
        0xd84d291
        0x4146bea
        0xb66e10
        0xf4db792
        0x6cf4932
        0x7e58004
        0x87b5bc2
        0x2729cd5
        0xe92f587
        0x1505e44
        0x9ea79e4
        0xe5f295c
        0x1dcd51f
        0x356b261
        0x80b2425
        0x1f01bb4
        0x9689ae9
        0xe9b62f
        0x1837898
        0x265eeca
        0x5f52a8
        0x958f07a
        0x42b2b2
        0x657d560
        0x4008cb6
        0x200df28
        0x4367379
        0xe312c11
        0xdd6ccf9
        0x53e7d25
        0xc373c5a
        0xd5c7e5d
        0xb885761
        0xc0e0e50
        0xdcd6337
        0xd64b320
        0x907f499
        0x76e8266
        0x4794718
        0x107b9c0
        0x19dc3de
        0x9b7b5b
        0xa3ec7e7
        0xc8ebaea
        0x5b6893a
        0x8102ea9
        0x5ef9052
        0xa87a2a7
        0xf192797
        0xe7d8703
        0x4a28674
        0xdb54034
        0xc563776
        0x167e151
        0x6214ea0
        0xabb5b0f
        0x7f496bc
        0xda5682a
        0x6b9324c
        0x343ce3e
        0x71068d2
        0xb678c63
        0x9b3de72
        0xd7270a1
        0xa857848
        0x3ff8780
        0x1592843
        0x501c33
        0xf81b7cd
        0x9f2d144
        0xe758bfe
        0x30717c7
        0x76d411c
        0xf7e425c
        0x771b91
        0x15c50bc
        0x52a8d40
        0x98f56fa
        0x83eebf2
        0x3e71bd
        0xdd6fb93
        0xfab381e
        0x4e42c23
        0x700a154
        0xff61b6
        0xfc27f86
        0xa43f9fa
        0xd4021dc
        0xa70a7c2
        0x6879980
        0x1f0c9a
        0xf16a1a3
        0xa76813a
        0x6d2734e
        0xab71c9b
        0xf1c77fd
        0x8708c8f
        0x84f3dd9
        0x719b738
        0xe28266d
        0xfc2e848
        0x685fac8
        0x98e5898
        0x5e172cb
        0x1648368
        0x9c52810
        0xb6d7a7e
        0x79dc766
        0x56d7bce
        0xb395e7f
        0xf135fdb
        0x1c32a8a
        0x3f076fc
        0x147f710
        0x55d348f
        0xd6f9f6a
        0x42f351c
        0x6c2e360
        0x24d1247
        0x375cc65
        0x20c8641
        0xc31c4a4
        0x44efff3
        0x4f7d3fc
        0x4267f92
        0xc7fc3cc
        0xccbbc7c
        0xf25030d
        0x902f568
        0xdcd0a62    # 1.26366E-30f
        0x947a4a4
        0xeb1a3c1
        0xce84154
        0x6e44bf7
        0xfe4bd6d    # 2.25555E-29f
        0x1f23f27
        0xa85b97c
        0xa2f672b
        0x89733a9
        0xfeb963d
        0x131e433
        0x998a9de
        0x91cb203
        0x4e3cbd5
        0xe1b7ecf
        0x374280e
        0x40ad7ab
        0xc7e546c
        0xa605738
        0x3db975c
        0x8ce96f9
        0x41567bf
        0x724bf2
        0xd49f6a3
        0xbcd5835
        0xbf119f9
        0x7c97292
        0xaa232c0
        0xd83f35
        0x591962b
        0xdec65a9
        0x5585b9e
        0x2730e9a
        0xcf0fbad
        0x2789607
        0xb1a7316
        0xf904b53
        0x6913941
        0xa237a02
        0xd14cc1d
        0xab5549f
        0xd693bf7
        0xe57283e
        0x635d326
        0xca2dbf1
        0x6e8e0bd
        0x6e8b5a1
        0x258ed77
        0xb86e1ef
        0x80e4222
        0xd4950ff
        0x4f266b3
        0x13ade04
        0x9852d51
        0xa56d59a
        0x36b01b2
        0x8d93775
        0x1eff97
        0x8e3c5b4
        0xe1a5c68
        0x4977ecf
        0xafa0f3a
        0xb5ecfee
        0x920a336
        0xfaf4989
        0xcd97929
        0x5cb64a1
        0xb0e6a07
        0xe49770a
        0x69ed414
        0xc654a63
        0x29e85ff
        0x9dda806
        0xe1dd129
        0x1a8498
        0xb84cc5
        0x57121c3
        0xe2cf51
        0x42d9113
        0xf2e0d75
        0x41846db    # 1.790005E-36f
        0x5946891
        0x406960f
        0xf80a014
        0xd691e63
        0x41cc572
        0xd0f61c6
        0xa9d5cef
        0x17efa2c
        0xa9f4620
        0xbe83772
        0x3b2a41c
        0x39a9176
        0x8d9affd
        0xda1203
        0x90dab0c
        0xc4b812f
        0x4a8c4da
        0xbbff02e
        0x6a1abf
        0x88a7b2f
        0xce62e77
        0xd0a4292
    .end array-data
.end method


# virtual methods
.method public canCurUserPost(Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;
    .locals 8

    .line 161
    new-instance v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    invoke-direct {v0}, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;-><init>()V

    const/4 v1, 0x0

    .line 162
    iput-boolean v1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "draft"

    .line 167
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 168
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    return-object v0

    .line 171
    :cond_1
    sget-object v2, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object p2

    if-nez p2, :cond_2

    .line 174
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    return-object v0

    .line 178
    :cond_2
    iget-object v2, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-nez v2, :cond_3

    .line 179
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    return-object v0

    .line 183
    :cond_3
    iget v2, p1, Lcom/narvii/model/User;->level:I

    .line 184
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    .line 186
    iget-object v4, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v5, v4, Lcom/narvii/modulization/entry/Privilege;->type:I

    const/4 v6, 0x5

    if-ne v5, v3, :cond_4

    .line 187
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    .line 189
    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    goto :goto_4

    :cond_5
    const/4 v7, 0x2

    if-ne v5, v7, :cond_8

    if-nez p1, :cond_7

    .line 191
    iget p1, v4, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    if-lt v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    goto :goto_4

    :cond_8
    const/4 p1, 0x4

    if-ne v5, p1, :cond_9

    .line 193
    iget-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "membership"

    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 194
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 195
    iput-boolean v3, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->needMembership:Z

    goto :goto_4

    :cond_9
    if-ne v5, v6, :cond_c

    .line 197
    iget-object p1, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 198
    iget-object v2, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v4, "config"

    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 199
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 200
    iget p1, p1, Lcom/narvii/model/User;->membersCount:I

    iget-object v2, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v2, v2, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    if-lt p1, v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 203
    :cond_c
    :goto_4
    iget-boolean p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    if-nez p1, :cond_e

    .line 204
    iget-object p1, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v2, p1, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    iput v2, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->minLevel:I

    if-lez v2, :cond_e

    .line 206
    iget p1, p1, Lcom/narvii/modulization/entry/Privilege;->type:I

    if-ne p1, v6, :cond_d

    sget p1, Lcom/narvii/lib/R$string;->chat_entry_limit:I

    goto :goto_5

    :cond_d
    sget p1, Lcom/narvii/lib/R$string;->post_entry_limit:I

    .line 207
    :goto_5
    iget-object v2, p0, Lcom/narvii/modulization/entry/EntryManager;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget p2, p2, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->errorString:Ljava/lang/String;

    :cond_e
    return-object v0
.end method

.method public canUserChat(Lcom/narvii/model/User;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/narvii/modulization/entry/EntryManager;->canUserChat(Lcom/narvii/model/User;Z)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object p1

    return-object p1
.end method

.method public canUserChat(Lcom/narvii/model/User;Z)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "go_live"

    goto :goto_0

    :cond_0
    const-string p2, "post_publicChat"

    .line 232
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/modulization/entry/EntryManager;->canCurUserPost(Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 113
    new-instance v0, Lcom/narvii/modulization/entry/EntrySetting;

    invoke-direct {v0}, Lcom/narvii/modulization/entry/EntrySetting;-><init>()V

    if-eqz p1, :cond_0

    .line 116
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/modulization/entry/EntrySetting;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/modulization/entry/EntrySetting;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public isEntryEnabled(Lcom/narvii/model/User;Ljava/lang/String;)Z
    .locals 3

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "draft"

    .line 144
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "story"

    .line 150
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/narvii/modulization/entry/EntryManager;->isStoryEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/narvii/modulization/entry/EntryManager;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 156
    :cond_3
    sget-object v0, Lcom/narvii/modulization/entry/EntryManager;->entryPathHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/narvii/modulization/entry/EntryManager;->isEntryEnabled(Lcom/narvii/model/User;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method
