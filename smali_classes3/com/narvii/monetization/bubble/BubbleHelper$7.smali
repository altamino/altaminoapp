.class Lcom/narvii/monetization/bubble/BubbleHelper$7;
.super Ljava/lang/Object;
.source "BubbleHelper.java"

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

    .line 213
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 217
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 218
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 219
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$7;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    :cond_0
    return-void
.end method
