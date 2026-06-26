.class Lcom/narvii/share/ShareViewHelper$2;
.super Ljava/lang/Object;
.source "ShareViewHelper.java"

# interfaces
.implements Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareViewHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$element:Lcom/narvii/share/elements/BaseElement;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper$2;->this$0:Lcom/narvii/share/ShareViewHelper;

    iput-object p2, p0, Lcom/narvii/share/ShareViewHelper$2;->val$element:Lcom/narvii/share/elements/BaseElement;

    iput-object p3, p0, Lcom/narvii/share/ShareViewHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/share/SharePayload;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$2;->this$0:Lcom/narvii/share/ShareViewHelper;

    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper$2;->val$element:Lcom/narvii/share/elements/BaseElement;

    invoke-static {v0, p1, v1}, Lcom/narvii/share/ShareViewHelper;->access$100(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V

    .line 163
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$2;->this$0:Lcom/narvii/share/ShareViewHelper;

    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper$2;->val$element:Lcom/narvii/share/elements/BaseElement;

    invoke-virtual {v1}, Lcom/narvii/share/elements/BaseElement;->targetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/share/ShareViewHelper;->stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V

    return-void
.end method
