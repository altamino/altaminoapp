.class Lcom/narvii/checkin/CheckInHelper$2;
.super Ljava/lang/Object;
.source "CheckInHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInHelper;

.field final synthetic val$api:Lcom/narvii/util/http/ApiService;

.field final synthetic val$apiRequest:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInHelper;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHelper$2;->this$0:Lcom/narvii/checkin/CheckInHelper;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInHelper$2;->val$api:Lcom/narvii/util/http/ApiService;

    iput-object p3, p0, Lcom/narvii/checkin/CheckInHelper$2;->val$apiRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHelper$2;->val$api:Lcom/narvii/util/http/ApiService;

    iget-object v0, p0, Lcom/narvii/checkin/CheckInHelper$2;->val$apiRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method
