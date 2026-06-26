.class Lcom/narvii/prompt/RatePromptHelper$1$1;
.super Ljava/lang/Object;
.source "RatePromptHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/RatePromptHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prompt/RatePromptHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/RatePromptHelper$1;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/prompt/RatePromptHelper$1$1;->this$1:Lcom/narvii/prompt/RatePromptHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/narvii/prompt/RatePromptHelper$1$1;->this$1:Lcom/narvii/prompt/RatePromptHelper$1;

    iget-object p1, p1, Lcom/narvii/prompt/RatePromptHelper$1;->this$0:Lcom/narvii/prompt/RatePromptHelper;

    invoke-virtual {p1}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
