.class Lcom/narvii/bookmark/BookmarkAdapter$1;
.super Ljava/lang/Object;
.source "BookmarkAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/bookmark/BookmarkAdapter;->showMore(Lcom/narvii/model/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/bookmark/BookmarkAdapter;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/bookmark/BookmarkAdapter;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->this$0:Lcom/narvii/bookmark/BookmarkAdapter;

    iput-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 87
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->this$0:Lcom/narvii/bookmark/BookmarkAdapter;

    invoke-static {p2}, Lcom/narvii/bookmark/BookmarkAdapter;->access$100(Lcom/narvii/bookmark/BookmarkAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->val$feed:Lcom/narvii/model/Feed;

    new-instance v0, Lcom/narvii/bookmark/BookmarkAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/bookmark/BookmarkAdapter$1$1;-><init>(Lcom/narvii/bookmark/BookmarkAdapter$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
