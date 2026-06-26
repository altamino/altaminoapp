.class Lcom/narvii/feed/FeedContinuousViewer$1;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "FeedContinuousViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedContinuousViewer;->loadNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedContinuousViewer;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/Class;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 327
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->fieldNames()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p2, v0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    const-string p2, "blogList"

    .line 246
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "featuredList"

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v3}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {p2, v3}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/narvii/feed/FeedContinuousViewer;->access$002(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)Ljava/util/List;

    .line 248
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-boolean v3, v0, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    if-eqz v3, :cond_3

    .line 250
    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Feed;

    .line 251
    instance-of v4, v3, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/narvii/model/Blog;

    iget-object v4, v4, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v4, :cond_2

    move-object v3, v4

    .line 254
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/model/Feed;->featureType()I

    move-result v4

    if-nez v4, :cond_1

    .line 255
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_3
    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    move-result-object p2

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    new-instance v3, Lcom/narvii/util/FilterHelper;

    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->access$100(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/narvii/feed/FeedContinuousViewer;->access$002(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_4

    .line 262
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 263
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/narvii/feed/FeaturedFeed;

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/feed/FeaturedFeed;

    .line 266
    iget-object v3, v3, Lcom/narvii/feed/FeaturedFeed;->refObject:Lcom/narvii/model/Feed;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    :cond_6
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    new-instance v3, Lcom/narvii/util/FilterHelper;

    invoke-static {p2}, Lcom/narvii/feed/FeedContinuousViewer;->access$100(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/feed/FeedContinuousViewer;->access$002(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    :cond_7
    const-string p2, "childrenWrapper"

    .line 269
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 271
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 272
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v3, "itemList"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 273
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_8
    const-string p2, ""

    .line 276
    :goto_3
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object p2

    .line 277
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    new-instance v3, Lcom/narvii/util/FilterHelper;

    invoke-static {v0}, Lcom/narvii/feed/FeedContinuousViewer;->access$100(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/narvii/feed/FeedContinuousViewer;->access$002(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)Ljava/util/List;

    .line 280
    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p2}, Lcom/narvii/feed/FeedContinuousViewer;->access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    move-result-object p2

    const-string v0, "nextPageToken"

    const-string v3, "paging"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p2}, Lcom/narvii/feed/FeedContinuousViewer;->access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_5

    .line 304
    :cond_a
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p2, p2, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 305
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p2, p2, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 307
    :cond_b
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iput v5, p2, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    new-array p2, v6, [Ljava/lang/String;

    aput-object v3, p2, v5

    .line 308
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 310
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$402(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    :cond_c
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$400(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 313
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p2

    const-string v0, "pagingType"

    .line 315
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "t"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 316
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iput-object v4, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 319
    :cond_d
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 320
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-static {p1, p2, v6}, Lcom/narvii/feed/FeedContinuousViewer;->access$500(Lcom/narvii/feed/FeedContinuousViewer;Lcom/narvii/model/Feed;Z)V

    goto/16 :goto_7

    .line 281
    :cond_e
    :goto_5
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 282
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "featured"

    const-string v0, "blog-all"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 283
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object v11, p2, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    const-string v12, "t"

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 284
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iput-boolean v6, p1, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    .line 285
    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$200(Lcom/narvii/feed/FeedContinuousViewer;)V

    goto :goto_7

    :cond_f
    new-array p2, v6, [Ljava/lang/String;

    aput-object v3, p2, v5

    .line 287
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_10

    new-array p2, v6, [Ljava/lang/String;

    aput-object v0, p2, v5

    .line 290
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_10
    move-object p1, v4

    :goto_6
    if-nez p1, :cond_12

    .line 293
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 294
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p1, p1, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 296
    :cond_11
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$300(Lcom/narvii/feed/FeedContinuousViewer;)V

    goto :goto_7

    .line 298
    :cond_12
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p2, p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$402(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 300
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer$1;->this$0:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-static {p1}, Lcom/narvii/feed/FeedContinuousViewer;->access$200(Lcom/narvii/feed/FeedContinuousViewer;)V

    :cond_13
    :goto_7
    return-void
.end method
