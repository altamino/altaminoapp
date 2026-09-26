.class Lcom/narvii/monetization/bubble/BubbleHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->changeBubbleActiveStatus(Lcom/narvii/model/ChatBubble;ZLcom/narvii/util/Callback;)V
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
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

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
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    const-string v0, "api"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-object v0, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    .line 29
    :cond_0
    return-void
.end method
