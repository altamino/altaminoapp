.class public final Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/checkin/CheckInService$CheckInResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;)V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/checkin/CheckInBottomBarLayout;->access$setCheckingIn$p(Lcom/narvii/checkin/CheckInBottomBarLayout;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 12
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/checkin/CheckInResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/checkin/CheckInBottomBarLayout;->access$setCheckingIn$p(Lcom/narvii/checkin/CheckInBottomBarLayout;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$listener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 12
    return-void
.end method
