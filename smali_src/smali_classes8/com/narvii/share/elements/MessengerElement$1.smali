.class Lcom/narvii/share/elements/MessengerElement$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/elements/MessengerElement;->share(Lcom/narvii/share/SharePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/elements/MessengerElement;

.field final synthetic val$payload:Lcom/narvii/share/SharePayload;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/share/elements/MessengerElement;Lcom/narvii/share/SharePayload;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/elements/MessengerElement$1;->this$0:Lcom/narvii/share/elements/MessengerElement;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/share/elements/MessengerElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/share/elements/MessengerElement$1;->val$text:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v0, "android.intent.action.SEND"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/share/elements/MessengerElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    const-string v0, "android.intent.extra.TEXT"

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/share/elements/MessengerElement$1;->val$text:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/share/elements/MessengerElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "android.intent.extra.SUBJECT"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/share/elements/MessengerElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 37
    .line 38
    const-string v1, "android.intent.extra.STREAM"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/share/elements/MessengerElement$1;->this$0:Lcom/narvii/share/elements/MessengerElement;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/share/elements/MessengerElement$1;->this$0:Lcom/narvii/share/elements/MessengerElement;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/elements/MessengerElement$1;->this$0:Lcom/narvii/share/elements/MessengerElement;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    .line 61
    :goto_0
    return-void
.end method
