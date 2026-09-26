.class Lcom/narvii/bookmark/BookmarkAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->this$0:Lcom/narvii/bookmark/BookmarkAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->this$0:Lcom/narvii/bookmark/BookmarkAdapter;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/narvii/bookmark/BookmarkAdapter;->access$100(Lcom/narvii/bookmark/BookmarkAdapter;)Lcom/narvii/app/NVContext;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter$1;->val$feed:Lcom/narvii/model/Feed;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/bookmark/BookmarkAdapter$1$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/bookmark/BookmarkAdapter$1$1;-><init>(Lcom/narvii/bookmark/BookmarkAdapter$1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 24
    :cond_0
    return-void
.end method
