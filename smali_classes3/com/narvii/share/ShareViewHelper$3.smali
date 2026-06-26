.class Lcom/narvii/share/ShareViewHelper$3;
.super Ljava/lang/Object;
.source "ShareViewHelper.java"

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

    .line 172
    iput-object p1, p0, Lcom/narvii/share/ShareViewHelper$3;->this$0:Lcom/narvii/share/ShareViewHelper;

    iput-object p2, p0, Lcom/narvii/share/ShareViewHelper$3;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/share/SharePayload;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/narvii/share/ShareViewHelper$3;->this$0:Lcom/narvii/share/ShareViewHelper;

    iget-object v1, p0, Lcom/narvii/share/ShareViewHelper$3;->val$callback:Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;

    invoke-static {v0, p1, v1}, Lcom/narvii/share/ShareViewHelper;->access$200(Lcom/narvii/share/ShareViewHelper;Lcom/narvii/share/SharePayload;Lcom/narvii/share/ShareViewHelper$DealWithSharePayloadStep;)V

    return-void
.end method
