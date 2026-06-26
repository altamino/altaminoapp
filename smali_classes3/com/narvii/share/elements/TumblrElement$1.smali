.class Lcom/narvii/share/elements/TumblrElement$1;
.super Ljava/lang/Object;
.source "TumblrElement.java"

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

    .line 61
    iput-object p1, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    iput-object p2, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    iput-object p5, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$image:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$text:Ljava/lang/String;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$subject:Ljava/lang/String;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    invoke-virtual {v0}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->val$image:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    invoke-virtual {v0, p1}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    invoke-virtual {v0, p1}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/elements/TumblrElement$1;->this$0:Lcom/narvii/share/elements/TumblrElement;

    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    :goto_0
    return-void
.end method
