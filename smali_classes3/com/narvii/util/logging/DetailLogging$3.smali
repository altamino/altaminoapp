.class final Lcom/narvii/util/logging/DetailLogging$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DetailLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/logging/DetailLogging;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 0

    .line 178
    iput-object p2, p0, Lcom/narvii/util/logging/DetailLogging$3;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-object p1, p0, Lcom/narvii/util/logging/DetailLogging$3;->val$list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 182
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method
