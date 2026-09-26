.class Lcom/codemonkeylabs/fpslibrary/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemonkeylabs/fpslibrary/d;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemonkeylabs/fpslibrary/d;


# direct methods
.method constructor <init>(Lcom/codemonkeylabs/fpslibrary/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/d$a;->this$0:Lcom/codemonkeylabs/fpslibrary/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d$a;->this$0:Lcom/codemonkeylabs/fpslibrary/d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/codemonkeylabs/fpslibrary/d;->a(Lcom/codemonkeylabs/fpslibrary/d;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d$a;->this$0:Lcom/codemonkeylabs/fpslibrary/d;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/codemonkeylabs/fpslibrary/d;->c(Lcom/codemonkeylabs/fpslibrary/d;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d$a;->this$0:Lcom/codemonkeylabs/fpslibrary/d;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/codemonkeylabs/fpslibrary/d;->b(Lcom/codemonkeylabs/fpslibrary/d;Z)Z

    .line 23
    .line 24
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/d;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "went background"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/d$a;->this$0:Lcom/codemonkeylabs/fpslibrary/d;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/codemonkeylabs/fpslibrary/d;->d(Lcom/codemonkeylabs/fpslibrary/d;)Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    check-cast v1, Lcom/codemonkeylabs/fpslibrary/d$b;

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-interface {v1}, Lcom/codemonkeylabs/fpslibrary/d$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .line 59
    sget-object v2, Lcom/codemonkeylabs/fpslibrary/d;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "Listener threw exception!"

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_0
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/d;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "still foreground"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    return-void
.end method
