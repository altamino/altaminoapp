.class Lcom/narvii/headlines/ExternalPostPreviewFragment$2;
.super Ljava/lang/Object;
.source "ExternalPostPreviewFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/ExternalPostPreviewFragment;->handleBookMark()V
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
.field final synthetic this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$2;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 285
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$2;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0174

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
