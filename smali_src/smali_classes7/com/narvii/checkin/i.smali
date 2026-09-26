.class public final synthetic Lcom/narvii/checkin/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/http/ApiRequest;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic f:Lcom/narvii/model/api/ApiResponse;

.field public final synthetic g:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/i;->a:Lcom/narvii/util/http/ApiRequest;

    iput p2, p0, Lcom/narvii/checkin/i;->b:I

    iput-object p3, p0, Lcom/narvii/checkin/i;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/checkin/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/checkin/i;->f:Lcom/narvii/model/api/ApiResponse;

    iput-object p6, p0, Lcom/narvii/checkin/i;->g:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/narvii/checkin/i;->a:Lcom/narvii/util/http/ApiRequest;

    iget v1, p0, Lcom/narvii/checkin/i;->b:I

    iget-object v2, p0, Lcom/narvii/checkin/i;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/narvii/checkin/i;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/checkin/i;->f:Lcom/narvii/model/api/ApiResponse;

    iget-object v5, p0, Lcom/narvii/checkin/i;->g:Ljava/lang/Throwable;

    move-object v6, p1

    check-cast v6, Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    invoke-static/range {v0 .. v6}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->a(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    return-void
.end method
