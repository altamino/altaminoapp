.class Lcom/narvii/share/ShareViewHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareViewHelper;->dealWithPayload(Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareViewHelper;

.field final synthetic val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper$3;->this$0:Lcom/narvii/share/ShareViewHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/share/ShareViewHelper$3;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/share/SharePayload;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$3;->this$0:Lcom/narvii/share/ShareViewHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper$3;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/narvii/share/ShareViewHelper;->b(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    .line 8
    return-void
.end method
