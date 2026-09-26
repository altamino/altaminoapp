.class Lcom/narvii/detail/FeedDetailAdapter$3;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$3;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$3;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/Feed;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v0, "loggingObjectType"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    const-string v0, "loggingObjectId"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    .line 37
    .line 38
    const-string v0, "loggingBlogType"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$3;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/narvii/detail/FeedDetailAdapter$3;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 47
    return-void
.end method
