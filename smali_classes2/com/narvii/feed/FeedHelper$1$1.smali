.class Lcom/narvii/feed/FeedHelper$1$1;
.super Ljava/lang/Object;
.source "FeedHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/feed/FeedHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper$1;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$1$1;->this$1:Lcom/narvii/feed/FeedHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 262
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1$1;->this$1:Lcom/narvii/feed/FeedHelper$1;

    iget-object p1, p1, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$1$1;->this$1:Lcom/narvii/feed/FeedHelper$1;

    iget-object v0, v0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {v0}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper$1$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
