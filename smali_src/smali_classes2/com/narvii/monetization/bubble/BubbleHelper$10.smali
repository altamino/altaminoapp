.class Lcom/narvii/monetization/bubble/BubbleHelper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleHelper;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$10;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$10;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->a(Lcom/narvii/monetization/bubble/BubbleHelper;)Lcom/narvii/util/http/ApiRequest;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$10;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    const-string v0, "api"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$10;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->a(Lcom/narvii/monetization/bubble/BubbleHelper;)Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$10;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->b(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/http/ApiRequest;)V

    .line 36
    :cond_0
    return-void
.end method
