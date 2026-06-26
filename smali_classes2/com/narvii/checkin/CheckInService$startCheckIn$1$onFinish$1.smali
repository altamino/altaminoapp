.class final Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;
.super Ljava/lang/Object;
.source "CheckInService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
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
.field final synthetic $req:Lcom/narvii/util/http/ApiRequest;

.field final synthetic $resp:Lcom/narvii/checkin/CheckInResult;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;->$req:Lcom/narvii/util/http/ApiRequest;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;->$resp:Lcom/narvii/checkin/CheckInResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;->$req:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;->$resp:Lcom/narvii/checkin/CheckInResult;

    invoke-interface {p1, v0, v1}, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$1;->call(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    return-void
.end method
