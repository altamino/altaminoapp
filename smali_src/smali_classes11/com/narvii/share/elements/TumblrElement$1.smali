.class Lcom/narvii/share/elements/TumblrElement$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/elements/TumblrElement;->share(Lcom/narvii/share/SharePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/elements/TumblrElement;

.field final synthetic val$image:Landroid/net/Uri;

.field final synthetic val$payload:Lcom/narvii/share/SharePayload;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/share/elements/TumblrElement;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/share/SharePayload;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$text:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$subject:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$image:Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
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
    const-string v0, "android.intent.extra.TEXT"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$text:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    const-string v0, "android.intent.extra.SUBJECT"

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$subject:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    const-string v0, "android.intent.extra.STREAM"

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$image:Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    .line 57
    :goto_0
    return-void
.end method
