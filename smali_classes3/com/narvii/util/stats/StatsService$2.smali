.class Lcom/narvii/util/stats/StatsService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/stats/StatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/stats/StatsService;


# direct methods
.method constructor <init>(Lcom/narvii/util/stats/StatsService;Ljava/lang/Class;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 284
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p5, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->access$100(Lcom/narvii/util/stats/StatsService;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    :goto_0
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->access$200(Lcom/narvii/util/stats/StatsService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 278
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->access$100(Lcom/narvii/util/stats/StatsService;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->access$200(Lcom/narvii/util/stats/StatsService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
