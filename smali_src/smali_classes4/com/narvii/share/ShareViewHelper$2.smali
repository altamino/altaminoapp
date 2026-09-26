.class Lcom/narvii/share/ShareViewHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper$2;->this$0:Lcom/narvii/share/ShareViewHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/share/ShareViewHelper$2;->val$element:Lcom/narvii/share/elements/BaseElement;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/share/ShareViewHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/share/SharePayload;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$2;->this$0:Lcom/narvii/share/ShareViewHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper$2;->val$element:Lcom/narvii/share/elements/BaseElement;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/narvii/share/ShareViewHelper;->c(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$2;->this$0:Lcom/narvii/share/ShareViewHelper;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper$2;->val$element:Lcom/narvii/share/elements/BaseElement;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/share/elements/BaseElement;->targetName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/narvii/share/ShareViewHelper;->stat(Lcom/narvii/share/SharePayload;Ljava/lang/String;)V

    .line 26
    return-void
.end method
