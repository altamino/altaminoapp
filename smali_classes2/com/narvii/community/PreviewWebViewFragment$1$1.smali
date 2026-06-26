.class Lcom/narvii/community/PreviewWebViewFragment$1$1;
.super Ljava/lang/Object;
.source "PreviewWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/PreviewWebViewFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/community/PreviewWebViewFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/community/PreviewWebViewFragment$1;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment$1$1;->this$1:Lcom/narvii/community/PreviewWebViewFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/community/PreviewWebViewFragment$1$1;->this$1:Lcom/narvii/community/PreviewWebViewFragment$1;

    iget-object v0, v0, Lcom/narvii/community/PreviewWebViewFragment$1;->this$0:Lcom/narvii/community/PreviewWebViewFragment;

    invoke-static {v0}, Lcom/narvii/community/PreviewWebViewFragment;->access$100(Lcom/narvii/community/PreviewWebViewFragment;)V

    return-void
.end method
