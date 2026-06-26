.class public final Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;
.super Ljava/lang/Object;
.source "GeneralStoryCardAdapter.kt"

# interfaces
.implements Lcom/narvii/paging/source/DataSourceInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->setDataSourceInterceptor(Lcom/narvii/model/Blog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeneralStoryCardAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralStoryCardAdapter.kt\ncom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1\n*L\n1#1,355:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $feed:Lcom/narvii/model/Blog;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;Lcom/narvii/model/Blog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Blog;",
            ")V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->$feed:Lcom/narvii/model/Blog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterceptedRequest(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v1, "(type=.*?)(&|\\$)"

    .line 210
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 211
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 213
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v5

    const-string p1, "tUrl"

    .line 215
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "g0"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 216
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 217
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 218
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->$feed:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_8

    .line 219
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->$feed:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string p1, "refererObjectId"

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 221
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getTopicId()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 222
    :goto_4
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getTopicId()Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "refererTopicId"

    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 224
    :cond_a
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    :cond_b
    :goto_5
    return-object p1
.end method
