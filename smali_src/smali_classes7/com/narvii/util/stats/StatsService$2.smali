.class Lcom/narvii/util/stats/StatsService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->a(Lcom/narvii/util/stats/StatsService;)Landroid/content/SharedPreferences;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    .line 28
    :goto_0
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->b(Lcom/narvii/util/stats/StatsService;)Ljava/util/HashMap;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->a(Lcom/narvii/util/stats/StatsService;)Landroid/content/SharedPreferences;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/util/stats/StatsService$2;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lcom/narvii/util/stats/StatsService;->b(Lcom/narvii/util/stats/StatsService;)Ljava/util/HashMap;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
