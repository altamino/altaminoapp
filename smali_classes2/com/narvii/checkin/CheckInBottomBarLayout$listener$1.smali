.class public final Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;
.super Ljava/lang/Object;
.source "CheckInBottomBarLayout.kt"

# interfaces
.implements Lcom/narvii/checkin/CheckInService$CheckInResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInBottomBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/checkin/CheckInBottomBarLayout;->access$setCheckingIn$p(Lcom/narvii/checkin/CheckInBottomBarLayout;Z)V

    .line 68
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/checkin/CheckInBottomBarLayout;->access$setCheckingIn$p(Lcom/narvii/checkin/CheckInBottomBarLayout;Z)V

    .line 73
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    return-void
.end method
