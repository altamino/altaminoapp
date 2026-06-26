.class final Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;
.super Ljava/lang/Object;
.source "CheckInService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/checkin/CheckInService$CheckInResponseListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $headers:Ljava/util/List;

.field final synthetic $message:Ljava/lang/String;

.field final synthetic $req:Lcom/narvii/util/http/ApiRequest;

.field final synthetic $resp:Lcom/narvii/model/api/ApiResponse;

.field final synthetic $statusCode:I

.field final synthetic $t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$req:Lcom/narvii/util/http/ApiRequest;

    iput p2, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$statusCode:I

    iput-object p3, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$headers:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$message:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$resp:Lcom/narvii/model/api/ApiResponse;

    iput-object p6, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 7

    .line 138
    iget-object v1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$req:Lcom/narvii/util/http/ApiRequest;

    iget v2, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$statusCode:I

    iget-object v3, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$headers:Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$message:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$resp:Lcom/narvii/model/api/ApiResponse;

    iget-object v6, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->$t:Ljava/lang/Throwable;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFail$1;->call(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    return-void
.end method
