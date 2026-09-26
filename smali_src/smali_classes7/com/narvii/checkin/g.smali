.class public final synthetic Lcom/narvii/checkin/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/http/ApiRequest;

.field public final synthetic b:Lcom/narvii/checkin/CheckInResult;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/g;->a:Lcom/narvii/util/http/ApiRequest;

    iput-object p2, p0, Lcom/narvii/checkin/g;->b:Lcom/narvii/checkin/CheckInResult;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/g;->a:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/checkin/g;->b:Lcom/narvii/checkin/CheckInResult;

    check-cast p1, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->c(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    return-void
.end method
