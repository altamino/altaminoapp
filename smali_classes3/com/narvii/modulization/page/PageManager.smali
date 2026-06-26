.class public Lcom/narvii/modulization/page/PageManager;
.super Ljava/lang/Object;
.source "PageManager.java"


# static fields
.field public static final PAGE_BEST_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes/best"

.field public static final PAGE_BLOG_CATEGORY_URI:Ljava/lang/String; = "ndc://blog-category/"

.field public static final PAGE_BLOG_URI:Ljava/lang/String; = "ndc://blogs"

.field public static final PAGE_CATALOG_URI:Ljava/lang/String; = "ndc://catalog"

.field public static final PAGE_CHAT_THREAD_URI:Ljava/lang/String; = "ndc://chat-thread/"

.field public static final PAGE_EXTERNAL_POSTS_URI:Ljava/lang/String; = "ndc://external-posts"

.field public static final PAGE_FEATURED_URI:Ljava/lang/String; = "ndc://featured"

.field public static final PAGE_FOLLOWING_FEED_URI:Ljava/lang/String; = "ndc://following-feed"

.field public static final PAGE_GUIDELINES_URI:Ljava/lang/String; = "ndc://guidelines"

.field public static final PAGE_HOME_URI:Ljava/lang/String; = "ndc://default"

.field public static final PAGE_IMAGE_POST_URI:Ljava/lang/String; = "ndc://image-posts"

.field public static final PAGE_LATEST_FEED_URI:Ljava/lang/String; = "ndc://latest-posts"

.field public static final PAGE_LATEST_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes/latest"

.field public static final PAGE_LEADERBOARDS_URI:Ljava/lang/String; = "ndc://leaderboards"

.field public static final PAGE_LINK_POST_URI:Ljava/lang/String; = "ndc://link-posts"

.field public static final PAGE_MY_CHAT_URI:Ljava/lang/String; = "ndc://my-chats"

.field public static final PAGE_POLL_URI:Ljava/lang/String; = "ndc://polls"

.field public static final PAGE_PUBLIC_CHATROOMS_URI:Ljava/lang/String; = "ndc://public-chats"

.field public static final PAGE_QUESTION_URI:Ljava/lang/String; = "ndc://questions"

.field public static final PAGE_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes"

.field public static final PAGE_RECOMMENDED_URI:Ljava/lang/String; = "ndc://recommended-posts"

.field public static final PAGE_SHARED_FOLDER_ALBUMS_URI:Ljava/lang/String; = "ndc://shared-folder/albums"

.field public static final PAGE_SHARED_FOLDER_LATEST_PHOTOS_URI:Ljava/lang/String; = "ndc://shared-folder/photos"

.field public static final PAGE_SHARED_FOLDER_URI:Ljava/lang/String; = "ndc://shared-folder"

.field public static final PAGE_STORIES_URI:Ljava/lang/String; = "ndc://stories"

.field public static final PAGE_TOPIC_CATEGORIES_URI:Ljava/lang/String; = "ndc://blog-categories"

.field public static final PAGE_TRENDING_QUIZZES_URI:Ljava/lang/String; = "ndc://quizzes/trending"

.field public static final PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

.field public static final PAGE_URL:Lcom/narvii/modulization/page/PageItem;

.field public static pageItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/modulization/page/PageItem;",
            ">;"
        }
    .end annotation
.end field

.field public static pagesNeedSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/narvii/modulization/page/PageItem;

    sget v1, Lcom/narvii/lib/R$color;->page_guidelines:I

    sget v2, Lcom/narvii/lib/R$drawable;->ic_page_guidelines:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    sput-object v0, Lcom/narvii/modulization/page/PageManager;->PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

    .line 58
    new-instance v0, Lcom/narvii/modulization/page/PageItem;

    sget v1, Lcom/narvii/lib/R$color;->page_url:I

    sget v2, Lcom/narvii/lib/R$drawable;->ic_page_url:I

    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    sput-object v0, Lcom/narvii/modulization/page/PageManager;->PAGE_URL:Lcom/narvii/modulization/page/PageItem;

    .line 61
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    const-string v1, "ndc://following-feed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    const-string v2, "ndc://my-chats"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    sget v5, Lcom/narvii/lib/R$string;->page_home:I

    sget v6, Lcom/narvii/lib/R$color;->page_home:I

    sget v7, Lcom/narvii/lib/R$drawable;->ic_page_home:I

    invoke-direct {v4, v5, v6, v7}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v5, "ndc://default"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    sget v5, Lcom/narvii/lib/R$string;->page_latest_feed:I

    sget v6, Lcom/narvii/lib/R$color;->page_latest_feed:I

    sget v7, Lcom/narvii/lib/R$drawable;->ic_page_latest_feed:I

    invoke-direct {v4, v5, v6, v7}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v5, "ndc://latest-posts"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    sget v5, Lcom/narvii/lib/R$string;->recommended:I

    sget v6, Lcom/narvii/lib/R$color;->page_recommended_feed:I

    sget v7, Lcom/narvii/lib/R$drawable;->ic_page_recommended_feed:I

    invoke-direct {v4, v5, v6, v7}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v5, "ndc://recommended-posts"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v4, Lcom/narvii/modulization/page/PageItem;

    sget v5, Lcom/narvii/lib/R$string;->page_following_feed:I

    sget v6, Lcom/narvii/lib/R$color;->page_following_feed:I

    sget v7, Lcom/narvii/lib/R$drawable;->ic_page_following_feed:I

    invoke-direct {v4, v5, v6, v7}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v4, Lcom/narvii/lib/R$string;->page_public_chatroom:I

    sget v5, Lcom/narvii/lib/R$color;->chat_theme_color:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_public_chat:I

    invoke-direct {v1, v4, v5, v6}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v4, "ndc://public-chats"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v4, Lcom/narvii/lib/R$string;->page_my_chat:I

    sget v5, Lcom/narvii/lib/R$color;->chat_theme_color:I

    sget v6, Lcom/narvii/lib/R$drawable;->ic_page_my_chat:I

    invoke-direct {v1, v4, v5, v6}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_leaderboards:I

    sget v4, Lcom/narvii/lib/R$color;->page_leaderboards:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_leaderboards:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://leaderboards"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->post_categories:I

    sget v4, Lcom/narvii/lib/R$color;->page_topic_category:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_topic_category:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://blog-categories"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_image_post:I

    sget v4, Lcom/narvii/lib/R$color;->page_image_post:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_image_post:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://image-posts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_blog:I

    sget v4, Lcom/narvii/lib/R$color;->page_blog:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_blog:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://blogs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_best_quizzes:I

    sget v4, Lcom/narvii/lib/R$color;->page_quizzes:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_quizzes:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://quizzes/best"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_trending_quizzes:I

    sget v4, Lcom/narvii/lib/R$color;->page_quizzes:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_quizzes:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://quizzes/trending"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_latest_quizzes:I

    sget v4, Lcom/narvii/lib/R$color;->page_quizzes:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_quizzes:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://quizzes/latest"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_quizzes:I

    sget v4, Lcom/narvii/lib/R$color;->page_quizzes:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_quizzes:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://quizzes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->albums:I

    sget v4, Lcom/narvii/lib/R$color;->page_shared_folder:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_shared_folder:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://shared-folder/albums"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->all_photos:I

    sget v4, Lcom/narvii/lib/R$color;->page_shared_folder:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_shared_folder:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://shared-folder/photos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->shared_folder:I

    sget v4, Lcom/narvii/lib/R$color;->page_shared_folder:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_shared_folder:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://shared-folder"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_link_post:I

    sget v4, Lcom/narvii/lib/R$color;->page_link_post:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_link_posts:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://link-posts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_poll:I

    sget v4, Lcom/narvii/lib/R$color;->page_poll:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_poll:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://polls"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_featured:I

    sget v4, Lcom/narvii/lib/R$color;->page_featured:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_featured:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://featured"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_question:I

    sget v4, Lcom/narvii/lib/R$color;->page_question:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_questions:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://questions"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_story:I

    sget v4, Lcom/narvii/lib/R$color;->page_story:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_story:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://stories"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_wiki:I

    sget v4, Lcom/narvii/lib/R$color;->page_wiki:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_wiki:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://catalog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_guidelines:I

    sget v4, Lcom/narvii/lib/R$color;->page_guidelines:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_guidelines:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://guidelines"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$string;->page_external_post:I

    sget v4, Lcom/narvii/lib/R$color;->page_external_post:I

    sget v5, Lcom/narvii/lib/R$drawable;->ic_page_external_post:I

    invoke-direct {v1, v2, v4, v5}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://external-posts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$color;->page_blog:I

    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_blog:I

    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://blog/"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$color;->page_wiki:I

    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_wiki_entry:I

    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://item/"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$color;->page_object_user:I

    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_user:I

    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://user-profile/"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$color;->chat_theme_color:I

    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_public_chat:I

    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://chat-thread/"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$color;->page_wiki:I

    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_wiki:I

    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://item-category/"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/modulization/page/PageItem;

    sget v2, Lcom/narvii/lib/R$color;->page_topic_category:I

    sget v4, Lcom/narvii/lib/R$drawable;->ic_page_topic_category:I

    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/modulization/page/PageItem;-><init>(III)V

    const-string v2, "ndc://blog-category/"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;
    .locals 3

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object p0, Lcom/narvii/modulization/page/PageManager;->PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

    return-object p0

    :cond_0
    const-string v0, "http://"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/modulization/page/PageItem;

    return-object p0

    .line 116
    :cond_3
    sget-object p0, Lcom/narvii/modulization/page/PageManager;->PAGE_UNKOWN:Lcom/narvii/modulization/page/PageItem;

    return-object p0

    .line 109
    :cond_4
    :goto_0
    sget-object p0, Lcom/narvii/modulization/page/PageManager;->PAGE_URL:Lcom/narvii/modulization/page/PageItem;

    return-object p0
.end method

.method public static needSession(Ljava/lang/String;)Z
    .locals 3

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 123
    :cond_0
    sget-object v0, Lcom/narvii/modulization/page/PageManager;->pagesNeedSession:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
